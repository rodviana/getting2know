package com.getting2know.controller;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.response.HttpResponseEntityDTO;
import com.getting2know.model.request.LoginRequest;
import com.getting2know.model.response.LoginResponse;
import com.getting2know.service.LoginService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(Getting2KnowControllerMapping.AUTH_PATH)
@Tag(name = "Login", description = "Login screen (/login)")
public class LoginController extends BaseController {

    private static final Logger log = LoggerFactory.getLogger(LoginController.class);

    private final LoginService loginService;

    public LoginController(LoginService loginService) {
        this.loginService = loginService;
    }

    @PostMapping(Getting2KnowControllerMapping.AUTH_LOGIN)
    @Operation(summary = "Login", description = "Authenticates with email and password. Returns JWT for protected endpoints.")
    public ResponseEntity<HttpResponseEntityDTO<?>> login(@RequestBody LoginRequest request) {
        HttpResponseEntityDTO<LoginResponse> response = new HttpResponseEntityDTO<>();
        try {
            LoginResponse data = loginService.login(request);
            log.info("[login] OK email={}", data.getEmail());
            response.setData(data);
            response.setSuccess(true);
            response.setStatus(HttpStatus.OK.value());
            response.setMessage("Login successful.");
            return ResponseEntity.ok(response);
        } catch (GlobalException e) {
            return badRequest(e);
        } catch (Exception e) {
            return internalServerError(e, ValidationMessageEnum.UNEXPECTED_ERROR_LOGIN);
        }
    }
}
