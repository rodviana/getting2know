package com.getting2know.controller;

import com.getting2know.config.OpenApiConfig;
import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.CreateQuestionRequest;
import com.getting2know.model.response.HttpResponseEntityDTO;
import com.getting2know.model.response.QuestionResponse;
import com.getting2know.service.QuestionService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(Getting2KnowControllerMapping.QUESTIONS_PATH)
@Tag(name = "Questions", description = "Custom question bank (/questions)")
@SecurityRequirement(name = OpenApiConfig.BEARER_AUTH)
public class QuestionController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(QuestionController.class);

    private final QuestionService questionService;

    public QuestionController(QuestionService questionService) {
        this.questionService = questionService;
    }

    @GetMapping
    @Operation(summary = "List custom questions", description = "Returns authenticated user's custom questions.")
    public ResponseEntity<HttpResponseEntityDTO<?>> list(Authentication authentication) {
        HttpResponseEntityDTO<List<QuestionResponse>> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            List<QuestionResponse> data = questionService.listQuestions(email);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Questions loaded.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_QUESTIONS);
        }
    }

    @PostMapping
    @Operation(summary = "Create question", description = "Creates a custom question for the authenticated user.")
    public ResponseEntity<HttpResponseEntityDTO<?>> create(Authentication authentication,
                                                           @RequestBody CreateQuestionRequest request) {
        HttpResponseEntityDTO<QuestionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            QuestionResponse data = questionService.createQuestion(email, request);
            log.info("[questions] created email={} id={}", email, data.getId());
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Question created.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_QUESTIONS);
        }
    }

    @PutMapping("/{id}")
    @Operation(summary = "Update question", description = "Updates a custom question owned by the authenticated user.")
    public ResponseEntity<HttpResponseEntityDTO<?>> update(Authentication authentication,
                                                           @PathVariable String id,
                                                           @RequestBody CreateQuestionRequest request) {
        HttpResponseEntityDTO<QuestionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            QuestionResponse data = questionService.updateQuestion(email, parseQuestionId(id), request);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Question updated.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_QUESTIONS);
        }
    }

    @DeleteMapping("/{id}")
    @Operation(summary = "Delete question", description = "Deletes a custom question owned by the authenticated user.")
    public ResponseEntity<HttpResponseEntityDTO<?>> delete(Authentication authentication, @PathVariable String id) {
        HttpResponseEntityDTO<Void> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            questionService.deleteQuestion(email, parseQuestionId(id));
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Question deleted.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_QUESTIONS);
        }
    }

    private Long parseQuestionId(String id) {
        if (id == null || id.isBlank()) {
            throw GlobalException.of(ValidationMessageEnum.QUESTION_NOT_FOUND);
        }
        String normalized = id.startsWith("custom-") ? id.substring("custom-".length()) : id;
        try {
            return Long.parseLong(normalized);
        } catch (NumberFormatException e) {
            throw GlobalException.of(ValidationMessageEnum.QUESTION_NOT_FOUND);
        }
    }
}
