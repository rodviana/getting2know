package com.getting2know.repository.mapper;

import com.getting2know.model.record.SessionAnswerRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

public final class SessionAnswerRowMapper {

    private SessionAnswerRowMapper() {
    }

    public static final RowMapper<SessionAnswerRecord> INSTANCE = SessionAnswerRowMapper::map;

    public static SessionAnswerRecord map(ResultSet rs, int rowNum) throws SQLException {
        Object answer = rs.getObject("answer");
        return new SessionAnswerRecord(
                rs.getLong("id"),
                rs.getLong("session_id"),
                rs.getLong("session_question_id"),
                rs.getLong("user_id"),
                answer != null ? answer.toString() : null,
                rs.getTimestamp("created_at").toLocalDateTime());
    }
}
