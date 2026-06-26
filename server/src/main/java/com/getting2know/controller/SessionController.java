package com.getting2know.controller;

import com.getting2know.config.OpenApiConfig;
import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.CreateSessionRequest;
import com.getting2know.model.request.JoinSessionRequest;
import com.getting2know.model.request.SubmitAnswerRequest;
import com.getting2know.model.response.CreateSessionResponse;
import com.getting2know.model.response.HttpResponseEntityDTO;
import com.getting2know.model.response.PreviouslyAskedQuestionsResponse;
import com.getting2know.model.response.SessionListItemResponse;
import com.getting2know.model.response.SessionResponse;
import com.getting2know.service.SessionService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping(Getting2KnowControllerMapping.SESSIONS_PATH)
@Tag(name = "Sessions", description = "Pair sessions (/sessions)")
@SecurityRequirement(name = OpenApiConfig.BEARER_AUTH)
public class SessionController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(SessionController.class);

    private final SessionService sessionService;

    public SessionController(SessionService sessionService) {
        this.sessionService = sessionService;
    }

    @PostMapping
    @Operation(summary = "Create session", description = "Creates a new pair session with selected questions.")
    public ResponseEntity<HttpResponseEntityDTO<?>> create(Authentication authentication,
                                                           @RequestBody CreateSessionRequest request) {
        HttpResponseEntityDTO<CreateSessionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            CreateSessionResponse data = sessionService.createSession(email, request);
            log.info("[sessions] created email={} code={}", email, data.getCode());
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Session created.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }

    @PostMapping(Getting2KnowControllerMapping.SESSIONS_JOIN)
    @Operation(summary = "Join session", description = "Joins an existing session using its code.")
    public ResponseEntity<HttpResponseEntityDTO<?>> join(Authentication authentication,
                                                         @RequestBody JoinSessionRequest request) {
        HttpResponseEntityDTO<SessionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            SessionResponse data = sessionService.joinSession(email, request);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Session joined.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }

    @GetMapping(Getting2KnowControllerMapping.SESSIONS_MINE)
    @Operation(summary = "List my sessions", description = "Returns sessions where the authenticated user participated.")
    public ResponseEntity<HttpResponseEntityDTO<?>> listMine(Authentication authentication) {
        HttpResponseEntityDTO<List<SessionListItemResponse>> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            List<SessionListItemResponse> data = sessionService.listUserSessions(email);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Sessions loaded.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }

    @GetMapping(Getting2KnowControllerMapping.SESSIONS_PREVIOUSLY_ASKED)
    @Operation(summary = "Previously asked questions",
            description = "Returns question bank ids already used in sessions with a previous partner.")
    public ResponseEntity<HttpResponseEntityDTO<?>> listPreviouslyAsked(Authentication authentication,
                                                                       @RequestParam Long partnerUserId) {
        HttpResponseEntityDTO<PreviouslyAskedQuestionsResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            PreviouslyAskedQuestionsResponse data =
                    sessionService.listPreviouslyAskedQuestions(email, partnerUserId);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Previously asked questions loaded.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }

    @GetMapping("/{code}")
    @Operation(summary = "Get session", description = "Returns current session state for polling.")
    public ResponseEntity<HttpResponseEntityDTO<?>> get(Authentication authentication, @PathVariable String code) {
        HttpResponseEntityDTO<SessionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            SessionResponse data = sessionService.getSession(email, code);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Session loaded.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }

    @PostMapping("/{code}" + Getting2KnowControllerMapping.SESSIONS_START)
    @Operation(summary = "Start session", description = "Starts the questionnaire when both participants are ready.")
    public ResponseEntity<HttpResponseEntityDTO<?>> start(Authentication authentication, @PathVariable String code) {
        HttpResponseEntityDTO<SessionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            SessionResponse data = sessionService.startSession(email, code);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Session started.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }

    @PostMapping("/{code}" + Getting2KnowControllerMapping.SESSIONS_ANSWERS)
    @Operation(summary = "Submit answer", description = "Submits the current user's answer for the active question.")
    public ResponseEntity<HttpResponseEntityDTO<?>> submitAnswer(Authentication authentication,
                                                                 @PathVariable String code,
                                                                 @RequestBody SubmitAnswerRequest request) {
        HttpResponseEntityDTO<SessionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            SessionResponse data = sessionService.submitAnswer(email, code, request);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Answer submitted.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }

    @PostMapping("/{code}" + Getting2KnowControllerMapping.SESSIONS_NEXT)
    @Operation(summary = "Next question", description = "Advances to the next question after reveal.")
    public ResponseEntity<HttpResponseEntityDTO<?>> next(Authentication authentication, @PathVariable String code) {
        HttpResponseEntityDTO<SessionResponse> response = new HttpResponseEntityDTO<>();
        try {
            String email = requireEmail(authentication);
            SessionResponse data = sessionService.nextQuestion(email, code);
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Session updated.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_SESSIONS);
        }
    }
}
