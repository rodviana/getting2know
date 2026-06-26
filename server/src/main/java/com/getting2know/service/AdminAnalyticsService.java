package com.getting2know.service;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.record.AdminAnalyticsInsightsRecord;
import com.getting2know.model.record.AdminQuestionRankingRecord;
import com.getting2know.model.record.AdminSessionQuestionRecord;
import com.getting2know.model.record.AdminSessionRecord;
import com.getting2know.model.record.UserRecord;
import com.getting2know.model.response.AdminAnalyticsInsightsResponse;
import com.getting2know.model.response.AdminCategoryBreakdownResponse;
import com.getting2know.model.response.AdminQuestionAnalyticsResponse;
import com.getting2know.model.response.AdminQuestionRankingResponse;
import com.getting2know.model.response.AdminSessionListResponse;
import com.getting2know.model.response.AdminSessionQuestionResponse;
import com.getting2know.model.response.AdminSessionResponse;
import com.getting2know.repository.AdminJdbcRepository;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.filter.ListAdminSessionsFilter;
import com.getting2know.repository.filter.UserEmailFilter;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class AdminAnalyticsService {

    private final AdminJdbcRepository adminJdbcRepository;
    private final AuthJdbcRepository authJdbcRepository;

    public AdminAnalyticsService(AdminJdbcRepository adminJdbcRepository,
                                 AuthJdbcRepository authJdbcRepository) {
        this.adminJdbcRepository = adminJdbcRepository;
        this.authJdbcRepository = authJdbcRepository;
    }

    public void requireAdmin(String email) {
        UserRecord user = authJdbcRepository.findByEmail(new UserEmailFilter(email))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.UNAUTHORIZED));
        if (!user.isAdmin()) {
            throw GlobalException.of(ValidationMessageEnum.ACCESS_DENIED);
        }
    }

    public AdminSessionListResponse listSessions(int limit, int offset, String status, String username) {
        int safeLimit = Math.min(Math.max(limit, 1), 200);
        int safeOffset = Math.max(offset, 0);
        ListAdminSessionsFilter filter = new ListAdminSessionsFilter(safeLimit, safeOffset, status, username);
        List<AdminSessionResponse> items = adminJdbcRepository.listSessions(filter).stream()
                .map(this::toSessionSummary)
                .collect(Collectors.toList());
        long total = adminJdbcRepository.countSessions(filter);
        return new AdminSessionListResponse(items, total, safeLimit, safeOffset);
    }

    public AdminSessionResponse getSessionDetail(String code) {
        AdminSessionRecord session = adminJdbcRepository.findSessionByCode(code)
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.SESSION_NOT_FOUND));

        List<AdminSessionQuestionResponse> questions = adminJdbcRepository.listSessionQuestions(code).stream()
                .map(this::toSessionQuestion)
                .collect(Collectors.toList());

        return new AdminSessionResponse(
                session.getSessionId(),
                session.getCode(),
                session.getStatus(),
                session.getFormat(),
                session.getHostUsername(),
                session.getHostName(),
                session.getPartnerUsername(),
                session.getPartnerName(),
                session.getQuestionCount(),
                session.getAnsweredPairs(),
                session.getAnswerTotal(),
                session.getCreatedAt(),
                session.getFinishedAt(),
                questions);
    }

    public AdminQuestionAnalyticsResponse getQuestionAnalytics(int rankingLimit) {
        int safeLimit = Math.min(Math.max(rankingLimit, 1), 100);
        AdminAnalyticsInsightsResponse insights = adminJdbcRepository.analyticsInsights()
                .map(this::toInsights)
                .orElse(emptyInsights());

        List<AdminQuestionRankingResponse> ranking = adminJdbcRepository.questionRanking(safeLimit).stream()
                .map(this::toRanking)
                .collect(Collectors.toList());

        List<AdminCategoryBreakdownResponse> categories = adminJdbcRepository.categoryBreakdown().stream()
                .map(item -> new AdminCategoryBreakdownResponse(
                        item.getCategoryId(),
                        item.getUsageCount(),
                        item.getSessionCount(),
                        item.getCompletionRate()))
                .collect(Collectors.toList());

        return new AdminQuestionAnalyticsResponse(insights, ranking, categories);
    }

    private AdminSessionResponse toSessionSummary(AdminSessionRecord session) {
        return new AdminSessionResponse(
                session.getSessionId(),
                session.getCode(),
                session.getStatus(),
                session.getFormat(),
                session.getHostUsername(),
                session.getHostName(),
                session.getPartnerUsername(),
                session.getPartnerName(),
                session.getQuestionCount(),
                session.getAnsweredPairs(),
                session.getAnswerTotal(),
                session.getCreatedAt(),
                session.getFinishedAt(),
                null);
    }

    private AdminSessionQuestionResponse toSessionQuestion(AdminSessionQuestionRecord record) {
        return new AdminSessionQuestionResponse(
                record.getQuestionId(),
                record.getPosition(),
                record.getSourceRef(),
                record.getCategoryId(),
                record.getType(),
                record.getText(),
                record.getAnswerCount(),
                record.isSystem());
    }

    private AdminQuestionRankingResponse toRanking(AdminQuestionRankingRecord record) {
        return new AdminQuestionRankingResponse(
                record.getRankPosition(),
                record.getQuestionKey(),
                record.getSourceRef(),
                record.getQuestionText(),
                record.getCategoryId(),
                record.getQuestionType(),
                record.isSystem(),
                record.getSessionCount(),
                record.getUniqueHosts(),
                record.getUniquePartners(),
                record.getFullyAnsweredCount(),
                record.getPartialAnswerCount(),
                record.getTotalAnswerSlots(),
                record.getCompletionRate(),
                record.getReuseRate(),
                record.getLastUsedAt());
    }

    private AdminAnalyticsInsightsResponse toInsights(AdminAnalyticsInsightsRecord record) {
        return new AdminAnalyticsInsightsResponse(
                record.getTotalSessions(),
                record.getFinishedSessions(),
                record.getLobbySessions(),
                record.getPlayingSessions(),
                record.getLiveSessions(),
                record.getAsyncSessions(),
                record.getAvgQuestionsPerSession(),
                record.getMedianQuestionsPerSession(),
                record.getTotalQuestionSlots(),
                record.getTotalAnswers(),
                record.getOverallCompletionRate(),
                record.getTopCategoryId(),
                record.getTopCategoryUses(),
                record.getSystemQuestionSlots(),
                record.getCustomQuestionSlots(),
                record.getUniqueQuestionKeys(),
                record.getRepeatQuestionRate());
    }

    private AdminAnalyticsInsightsResponse emptyInsights() {
        return new AdminAnalyticsInsightsResponse(
                0, 0, 0, 0, 0, 0,
                BigDecimal.ZERO, BigDecimal.ZERO,
                0, 0, BigDecimal.ZERO,
                null, 0, 0, 0, 0, BigDecimal.ZERO);
    }
}
