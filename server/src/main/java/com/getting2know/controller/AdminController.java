package com.getting2know.controller;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.response.ActivityEventListResponse;
import com.getting2know.model.response.AdminDashboardResponse;
import com.getting2know.model.response.AdminQuestionAnalyticsResponse;
import com.getting2know.model.response.AdminSessionListResponse;
import com.getting2know.model.response.AdminSessionResponse;
import com.getting2know.model.response.AdminUserResponse;
import com.getting2know.model.response.HttpResponseEntityDTO;
import com.getting2know.service.ActivityService;
import com.getting2know.service.AdminAnalyticsService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(Getting2KnowControllerMapping.ADMIN_PATH)
@Tag(name = "Admin", description = "Admin panel (/admin)")
public class AdminController extends BaseController {

    private final ActivityService activityService;
    private final AdminAnalyticsService adminAnalyticsService;

    public AdminController(ActivityService activityService,
                           AdminAnalyticsService adminAnalyticsService) {
        this.activityService = activityService;
        this.adminAnalyticsService = adminAnalyticsService;
    }

    private void authorize(Authentication authentication) {
        adminAnalyticsService.requireAdmin(requireEmail(authentication));
    }

    @GetMapping("/dashboard")
    @Operation(summary = "Dashboard stats")
    public ResponseEntity<HttpResponseEntityDTO<?>> dashboard(Authentication authentication) {
        HttpResponseEntityDTO<AdminDashboardResponse> response = new HttpResponseEntityDTO<>();
        try {
            authorize(authentication);
            response.setData(activityService.getDashboard());
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.INVALID_REQUEST);
        }
    }

    @GetMapping("/users")
    @Operation(summary = "List users with engagement metrics")
    public ResponseEntity<HttpResponseEntityDTO<?>> users(Authentication authentication) {
        HttpResponseEntityDTO<List<AdminUserResponse>> response = new HttpResponseEntityDTO<>();
        try {
            authorize(authentication);
            response.setData(activityService.listUsers());
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.INVALID_REQUEST);
        }
    }

    @GetMapping("/sessions")
    @Operation(summary = "List sessions")
    public ResponseEntity<HttpResponseEntityDTO<?>> sessions(Authentication authentication,
                                                               @RequestParam(defaultValue = "50") int limit,
                                                               @RequestParam(defaultValue = "0") int offset,
                                                               @RequestParam(required = false) String status,
                                                               @RequestParam(required = false) String username) {
        HttpResponseEntityDTO<AdminSessionListResponse> response = new HttpResponseEntityDTO<>();
        try {
            authorize(authentication);
            response.setData(adminAnalyticsService.listSessions(limit, offset, status, username));
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.INVALID_REQUEST);
        }
    }

    @GetMapping("/sessions/{code}")
    @Operation(summary = "Session detail with questions")
    public ResponseEntity<HttpResponseEntityDTO<?>> sessionDetail(Authentication authentication,
                                                                  @PathVariable String code) {
        HttpResponseEntityDTO<AdminSessionResponse> response = new HttpResponseEntityDTO<>();
        try {
            authorize(authentication);
            response.setData(adminAnalyticsService.getSessionDetail(code));
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.INVALID_REQUEST);
        }
    }

    @GetMapping("/questions/analytics")
    @Operation(summary = "Question ranking and cross metrics")
    public ResponseEntity<HttpResponseEntityDTO<?>> questionAnalytics(Authentication authentication,
                                                                        @RequestParam(defaultValue = "30") int limit) {
        HttpResponseEntityDTO<AdminQuestionAnalyticsResponse> response = new HttpResponseEntityDTO<>();
        try {
            authorize(authentication);
            response.setData(adminAnalyticsService.getQuestionAnalytics(limit));
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.INVALID_REQUEST);
        }
    }

    @GetMapping("/events")
    @Operation(summary = "List activity events")
    public ResponseEntity<HttpResponseEntityDTO<?>> events(Authentication authentication,
                                                           @RequestParam(defaultValue = "50") int limit,
                                                           @RequestParam(defaultValue = "0") int offset,
                                                           @RequestParam(required = false) String username,
                                                           @RequestParam(required = false) String eventType,
                                                           @RequestParam(required = false) String ipAddress) {
        HttpResponseEntityDTO<ActivityEventListResponse> response = new HttpResponseEntityDTO<>();
        try {
            authorize(authentication);
            response.setData(activityService.listEvents(limit, offset, username, eventType, ipAddress));
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.INVALID_REQUEST);
        }
    }
}
