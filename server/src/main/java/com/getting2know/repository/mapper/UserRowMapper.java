package com.getting2know.repository.mapper;

import com.getting2know.model.enums.UserRoleEnum;
import com.getting2know.model.record.UserRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public final class UserRowMapper {

    private UserRowMapper() {
    }

    public static final RowMapper<UserRecord> INSTANCE = UserRowMapper::map;

    public static UserRecord map(ResultSet rs, int rowNum) throws SQLException {
        return new UserRecord(
                rs.getLong("id"),
                rs.getString("email"),
                rs.getString("password"),
                rs.getString("name"),
                rs.getBoolean("active"),
                rs.getString("role") != null ? rs.getString("role") : UserRoleEnum.USER.getCode());
    }
}
