package com.getting2know.service;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ActivityEventTypeEnum;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.record.UserRecord;
import com.getting2know.model.request.RegisterRequest;
import com.getting2know.model.response.LoginResponse;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.filter.CreateUserFilter;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.security.JwtService;
import com.getting2know.utils.UserValidationUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

    private static final Logger log = LoggerFactory.getLogger(RegisterService.class);

    private final AuthJdbcRepository authJdbcRepository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final ActivityService activityService;

    public RegisterService(AuthJdbcRepository authJdbcRepository,
                           PasswordEncoder passwordEncoder,
                           JwtService jwtService,
                           ActivityService activityService) {
        this.authJdbcRepository = authJdbcRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
        this.activityService = activityService;
    }

    public LoginResponse register(RegisterRequest request) {
        UserValidationUtils.validateRegisterRequest(request);

        String username = UserValidationUtils.normalizeUsername(request.getUsername());
        log.info("[register] attempt username={}", username);

        if (authJdbcRepository.findByEmail(new UserEmailFilter(username)).isPresent()) {
            throw GlobalException.of(ValidationMessageEnum.USERNAME_ALREADY_EXISTS);
        }

        String name = UserValidationUtils.resolveDisplayName(request.getName(), username);
        String passwordHash = passwordEncoder.encode(request.getPassword());

        Long userId = authJdbcRepository.createUser(new CreateUserFilter(username, passwordHash, name));
        UserRecord user = authJdbcRepository.findById(new com.getting2know.repository.filter.UserIdLookupFilter(userId))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.FAILED_CREATE_USER));

        String token = jwtService.generate(user);
        activityService.record(ActivityEventTypeEnum.REGISTER, "/api/v1/auth/register", user, null);
        log.info("[register] OK username={}", user.getEmail());
        return new LoginResponse(token, user.getName(), user.getEmail(), user.getRole());
    }
}
