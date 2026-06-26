package com.getting2know.service;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ActivityEventTypeEnum;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.record.ActivityEventRecord;
import com.getting2know.model.record.UserRecord;
import com.getting2know.model.request.PageViewRequest;
import com.getting2know.model.response.ActivityEventListResponse;
import com.getting2know.model.response.ActivityEventResponse;
import com.getting2know.model.response.AdminDashboardResponse;
import com.getting2know.model.response.AdminUserResponse;
import com.getting2know.repository.ActivityJdbcRepository;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.filter.InsertActivityEventFilter;
import com.getting2know.repository.filter.ListActivityEventsFilter;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.utils.HttpRequestUtils;
import org.springframework.stereotype.Service;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class ActivityService {

    private final ActivityJdbcRepository activityJdbcRepository;
    private final AuthJdbcRepository authJdbcRepository;

    public ActivityService(ActivityJdbcRepository activityJdbcRepository,
                           AuthJdbcRepository authJdbcRepository) {
        this.activityJdbcRepository = activityJdbcRepository;
        this.authJdbcRepository = authJdbcRepository;
    }

    public void record(ActivityEventTypeEnum eventType, String path, UserRecord user, String metadataJson) {
        HttpServletRequest request = currentRequest().orElse(null);
        InsertActivityEventFilter filter = new InsertActivityEventFilter(
                user != null ? user.getId() : null,
                user != null ? user.getEmail() : null,
                eventType.name(),
                path,
                HttpRequestUtils.resolveClientIp(request),
                HttpRequestUtils.resolveUserAgent(request),
                metadataJson);
        activityJdbcRepository.insert(filter);
    }

    public void recordPageView(PageViewRequest requestBody, String username) {
        if (requestBody == null || requestBody.getPath() == null || requestBody.getPath().isBlank()) {
            return;
        }
        String path = requestBody.getPath().trim();
        if (path.length() > 500) {
            path = path.substring(0, 500);
        }
        UserRecord user = resolveOptionalUser(username);
        String metadata = buildPageViewMetadata(requestBody.getReferrer());
        record(ActivityEventTypeEnum.PAGE_VIEW, path, user, metadata);
    }

    public AdminDashboardResponse getDashboard() {
        return activityJdbcRepository.dashboardStats()
                .map(stats -> new AdminDashboardResponse(
                        stats.getTotalUsers(),
                        stats.getTotalEvents(),
                        stats.getEventsToday(),
                        stats.getPageViewsToday(),
                        stats.getLoginsToday(),
                        stats.getActiveSessions()))
                .orElse(new AdminDashboardResponse(0, 0, 0, 0, 0, 0));
    }

    public List<AdminUserResponse> listUsers() {
        return activityJdbcRepository.listUsers().stream()
                .map(user -> new AdminUserResponse(
                        user.getId(),
                        user.getUsername(),
                        user.getName(),
                        user.getRole(),
                        user.getCreatedAt(),
                        user.getLastEventAt(),
                        user.getLastIp(),
                        user.getEventCount(),
                        user.getSessionsHosted(),
                        user.getSessionsJoined(),
                        user.getCustomQuestions(),
                        user.getLoginCount(),
                        user.getPageViewCount()))
                .collect(Collectors.toList());
    }

    public ActivityEventListResponse listEvents(int limit, int offset, String username, String eventType, String ipAddress) {
        int safeLimit = Math.min(Math.max(limit, 1), 200);
        int safeOffset = Math.max(offset, 0);
        ListActivityEventsFilter filter = new ListActivityEventsFilter(
                safeLimit, safeOffset, username, eventType, ipAddress);
        List<ActivityEventResponse> items = activityJdbcRepository.list(filter).stream()
                .map(this::toResponse)
                .collect(Collectors.toList());
        long total = activityJdbcRepository.count(filter);
        return new ActivityEventListResponse(items, total, safeLimit, safeOffset);
    }

    public void requireAdmin(String email) {
        UserRecord user = authJdbcRepository.findByEmail(new UserEmailFilter(email))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.UNAUTHORIZED));
        if (!user.isAdmin()) {
            throw GlobalException.of(ValidationMessageEnum.ACCESS_DENIED);
        }
    }

    private ActivityEventResponse toResponse(ActivityEventRecord record) {
        return new ActivityEventResponse(
                record.getId(),
                record.getUserId(),
                record.getUsername(),
                record.getEventType(),
                record.getPath(),
                record.getIpAddress(),
                record.getUserAgent(),
                record.getMetadataJson(),
                record.getCreatedAt());
    }

    private UserRecord resolveOptionalUser(String username) {
        if (username == null || username.isBlank()) {
            return null;
        }
        return authJdbcRepository.findByEmail(new UserEmailFilter(username)).orElse(null);
    }

    private String buildPageViewMetadata(String referrer) {
        if (referrer == null || referrer.isBlank()) {
            return null;
        }
        String safeReferrer = referrer.trim();
        if (safeReferrer.length() > 300) {
            safeReferrer = safeReferrer.substring(0, 300);
        }
        return "{\"referrer\":\"" + safeReferrer.replace("\"", "'") + "\"}";
    }

    private java.util.Optional<HttpServletRequest> currentRequest() {
        org.springframework.web.context.request.RequestAttributes attrs = RequestContextHolder.getRequestAttributes();
        if (attrs instanceof ServletRequestAttributes) {
            return java.util.Optional.of(((ServletRequestAttributes) attrs).getRequest());
        }
        return java.util.Optional.empty();
    }
}
