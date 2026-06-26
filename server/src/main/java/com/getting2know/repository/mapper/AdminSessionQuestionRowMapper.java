package com.getting2know.repository.mapper;

import com.getting2know.model.record.AdminSessionQuestionRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public final class AdminSessionQuestionRowMapper {

    private AdminSessionQuestionRowMapper() {
    }

    public static final RowMapper<AdminSessionQuestionRecord> INSTANCE = AdminSessionQuestionRowMapper::map;

    public static AdminSessionQuestionRecord map(ResultSet rs, int rowNum) throws SQLException {
        return new AdminSessionQuestionRecord(
                rs.getLong("question_id"),
                rs.getInt("question_position"),
                rs.getString("source_ref"),
                rs.getString("category_id"),
                rs.getString("type"),
                rs.getString("text"),
                rs.getInt("answer_count"),
                rs.getBoolean("is_system"));
    }
}
