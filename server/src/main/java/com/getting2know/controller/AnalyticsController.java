package com.getting2know.controller;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.PageViewRequest;
import com.getting2know.model.response.HttpResponseEntityDTO;
import com.getting2know.service.ActivityService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(Getting2KnowControllerMapping.ANALYTICS_PATH)
@Tag(name = "Analytics", description = "Page view tracking")
public class AnalyticsController extends BaseController {

    private final ActivityService activityService;

    public AnalyticsController(ActivityService activityService) {
        this.activityService = activityService;
    }

    @PostMapping(Getting2KnowControllerMapping.ANALYTICS_PAGE_VIEW)
    @Operation(summary = "Track page view", description = "Records a front-end page visit.")
    public ResponseEntity<HttpResponseEntityDTO<?>> pageView(@RequestBody PageViewRequest request,
                                                              Authentication authentication) {
        HttpResponseEntityDTO<Void> response = new HttpResponseEntityDTO<>();
        try {
            String username = canResolveUser(authentication) ? (String) authentication.getPrincipal() : null;
            activityService.recordPageView(request, username);
            response.setSuccess(true);
            response.setStatus(HttpStatus.NO_CONTENT.value());
            return ResponseEntity.status(HttpStatus.NO_CONTENT).body(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.INVALID_REQUEST);
        }
    }
}
