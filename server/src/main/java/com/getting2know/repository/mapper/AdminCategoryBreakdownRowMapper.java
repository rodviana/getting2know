package com.getting2know.repository.mapper;

import com.getting2know.model.record.AdminCategoryBreakdownRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public final class AdminCategoryBreakdownRowMapper {

    private AdminCategoryBreakdownRowMapper() {
    }

    public static final RowMapper<AdminCategoryBreakdownRecord> INSTANCE = AdminCategoryBreakdownRowMapper::map;

    public static AdminCategoryBreakdownRecord map(ResultSet rs, int rowNum) throws SQLException {
        return new AdminCategoryBreakdownRecord(
                rs.getString("category_id"),
                rs.getLong("usage_count"),
                rs.getLong("session_count"),
                rs.getBigDecimal("completion_rate"));
    }
}
