package com.getting2know.repository;

import com.getting2know.repository.filter.CreateUserFilter;
import com.getting2know.repository.filter.UserEmailFilter;
import com.getting2know.repository.filter.UserIdLookupFilter;
import com.getting2know.model.record.UserRecord;

import java.util.Optional;

public interface AuthJdbcRepository {

    String P_FIND_USER_BY_EMAIL = "SELECT * FROM p_find_user_by_email(:email)";
    String P_FIND_USER_BY_ID = "SELECT * FROM p_find_user_by_id(:userId)";
    String P_CREATE_USER = "SELECT p_create_user(:email, :password, :name)";

    Optional<UserRecord> findByEmail(UserEmailFilter filter);

    Optional<UserRecord> findById(UserIdLookupFilter filter);

    Long createUser(CreateUserFilter filter);
}
