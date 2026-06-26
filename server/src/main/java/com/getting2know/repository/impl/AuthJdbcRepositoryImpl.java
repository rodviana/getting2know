package com.getting2know.repository.impl;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.repository.AuthJdbcRepository;
import com.getting2know.repository.filter.CreateUserFilter;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.repository.filter.UserIdLookupFilter;
import com.getting2know.repository.mapper.UserRowMapper;
import com.getting2know.model.record.UserRecord;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class AuthJdbcRepositoryImpl implements AuthJdbcRepository {

    private static final Logger log = LoggerFactory.getLogger(AuthJdbcRepositoryImpl.class);

    private final NamedParameterJdbcTemplate jdbc;

    public AuthJdbcRepositoryImpl(NamedParameterJdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @Override
    public Optional<UserRecord> findByEmail(UserEmailFilter filter) {
        String email = filter.getEmail();
        MapSqlParameterSource params = new MapSqlParameterSource("email", email);
        try {
            log.info("[auth] exec p_find_user_by_email email={}", email);
            List<UserRecord> rows = jdbc.query(P_FIND_USER_BY_EMAIL, params, UserRowMapper.INSTANCE);
            return rows.stream().findFirst();
        } catch (DataAccessException e) {
            log.error("[auth] JDBC error email={}: {}", email, e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_USER);
        }
    }

    @Override
    public Optional<UserRecord> findById(UserIdLookupFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource("userId", filter.getUserId());
        try {
            log.info("[auth] exec p_find_user_by_id userId={}", filter.getUserId());
            List<UserRecord> rows = jdbc.query(AuthJdbcRepository.P_FIND_USER_BY_ID, params, UserRowMapper.INSTANCE);
            return rows.stream().findFirst();
        } catch (DataAccessException e) {
            log.error("[auth] JDBC error userId={}: {}", filter.getUserId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_USER);
        }
    }

    @Override
    public Long createUser(CreateUserFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("email", filter.getEmail())
                .addValue("password", filter.getPasswordHash())
                .addValue("name", filter.getName());
        try {
            log.info("[auth] exec p_create_user email={}", filter.getEmail());
            return jdbc.queryForObject(P_CREATE_USER, params, Long.class);
        } catch (DataAccessException e) {
            log.error("[auth] create user error email={}: {}", filter.getEmail(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_CREATE_USER);
        }
    }
}
