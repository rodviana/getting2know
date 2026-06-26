package com.getting2know.service;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ActivityEventTypeEnum;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.request.LoginRequest;
import com.getting2know.model.response.LoginResponse;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.model.record.UserRecord;
import com.getting2know.security.JwtService;
import com.getting2know.utils.UserValidationUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class LoginService {

    private static final Logger log = LoggerFactory.getLogger(LoginService.class);

    private final AuthJdbcRepository authJdbcRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final ActivityService activityService;

    public LoginService(AuthJdbcRepository authJdbcRepository,
                        PasswordEncoder passwordEncoder,
                        JwtService jwtService,
                        ActivityService activityService) {
        this.authJdbcRepository = authJdbcRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
        this.activityService = activityService;
    }

    public LoginResponse login(LoginRequest request) {
        UserValidationUtils.validateLoginRequest(request);

        String username = UserValidationUtils.normalizeUsername(request.getUsername());
        log.info("[login] attempt username={}", username);

        UserRecord user = authJdbcRepository.findByEmail(new UserEmailFilter(username))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.USER_NOT_FOUND));

        if (!passwordEncoder.matches(request.getPassword(), user.getPassword())) {
            log.warn("[login] invalid password username={}", user.getEmail());
            throw GlobalException.of(ValidationMessageEnum.INVALID_CREDENTIALS);
        }

        String token = jwtService.generate(user);
        activityService.record(ActivityEventTypeEnum.LOGIN, "/api/v1/auth/login", user, null);
        log.info("[login] OK username={}", user.getEmail());
        return new LoginResponse(token, user.getName(), user.getEmail(), user.getRole());
    }
}
