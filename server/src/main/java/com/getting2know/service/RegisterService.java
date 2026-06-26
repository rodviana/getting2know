package com.getting2know.service;

import com.getting2know.exception.GlobalException;
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

    public RegisterService(AuthJdbcRepository authJdbcRepository,
                           PasswordEncoder passwordEncoder,
                           JwtService jwtService) {
        this.authJdbcRepository = authJdbcRepository;
        this.passwordEncoder = passwordEncoder;
        this.jwtService = jwtService;
    }

    public LoginResponse register(RegisterRequest request) {
        UserValidationUtils.validateRegisterRequest(request);

        String email = request.getEmail().trim().toLowerCase();
        log.info("[register] attempt email={}", email);

        if (authJdbcRepository.findByEmail(new UserEmailFilter(email)).isPresent()) {
            throw GlobalException.of(ValidationMessageEnum.EMAIL_ALREADY_EXISTS);
        }

        String name = UserValidationUtils.resolveDisplayName(request.getName(), email);
        String passwordHash = passwordEncoder.encode(request.getPassword());

        Long userId = authJdbcRepository.createUser(new CreateUserFilter(email, passwordHash, name));
        UserRecord user = authJdbcRepository.findById(new com.getting2know.repository.filter.UserIdLookupFilter(userId))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.FAILED_CREATE_USER));

        String token = jwtService.generate(user);
        log.info("[register] OK email={}", user.getEmail());
        return new LoginResponse(token, user.getName(), user.getEmail());
    }
}
