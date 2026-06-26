package com.getting2know.repository;

import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.model.record.UserRecord;

import java.util.Optional;

public interface AuthJdbcRepository {

    String P_FIND_USER_BY_EMAIL = "SELECT * FROM p_find_user_by_email(:email)";

    Optional<UserRecord> findByEmail(UserEmailFilter filter);
}
