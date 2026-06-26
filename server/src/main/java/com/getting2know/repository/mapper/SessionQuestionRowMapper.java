package com.getting2know.repository.mapper;

import com.getting2know.model.record.SessionQuestionRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public final class SessionQuestionRowMapper {

    private SessionQuestionRowMapper() {
    }

    public static final RowMapper<SessionQuestionRecord> INSTANCE = SessionQuestionRowMapper::map;

    public static SessionQuestionRecord map(ResultSet rs, int rowNum) throws SQLException {
        Object options = rs.getObject("options");
        return new SessionQuestionRecord(
                rs.getLong("id"),
                rs.getLong("session_id"),
                rs.getInt("position"),
                rs.getString("source_ref"),
                rs.getString("category_id"),
                rs.getString("type"),
                rs.getString("text"),
                options != null ? options.toString() : null);
    }
}
