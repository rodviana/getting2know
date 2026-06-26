package com.getting2know.service;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.response.HomeResponse;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.model.record.UserRecord;
import org.springframework.stereotype.Service;

@Service
public class HomeService {

    private final AuthJdbcRepository authJdbcRepository;

    public HomeService(AuthJdbcRepository authJdbcRepository) {
        this.authJdbcRepository = authJdbcRepository;
    }

    public HomeResponse getHome(String email) {
        UserRecord user = authJdbcRepository.findByEmail(new UserEmailFilter(email))
                .orElseThrow(() -> GlobalException.of(ValidationMessageEnum.UNAUTHORIZED));

        return new HomeResponse(
                user.getId(),
                user.getName(),
                user.getEmail(),
                "Olá, " + user.getName() + "! Prontos para se conhecer melhor?");
    }
}
