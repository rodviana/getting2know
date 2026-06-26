package com.getting2know.repository.mapper;

import com.getting2know.model.record.QuestionRecord;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

public final class QuestionRowMapper {

    private QuestionRowMapper() {
    }

    public static final RowMapper<QuestionRecord> LIST_INSTANCE = QuestionRowMapper::mapListRow;
    public static final RowMapper<QuestionRecord> DETAIL_INSTANCE = QuestionRowMapper::mapDetailRow;

    private static QuestionRecord mapListRow(ResultSet rs, int rowNum) throws SQLException {
        return new QuestionRecord(
                rs.getLong("id"),
                null,
                rs.getString("category_id"),
                rs.getString("type"),
                rs.getString("text"),
                readJson(rs, "options"),
                toLocalDateTime(rs.getTimestamp("created_at")),
                toLocalDateTime(rs.getTimestamp("updated_at")));
    }

    private static QuestionRecord mapDetailRow(ResultSet rs, int rowNum) throws SQLException {
        return new QuestionRecord(
                rs.getLong("id"),
                rs.getLong("user_id"),
                rs.getString("category_id"),
                rs.getString("type"),
                rs.getString("text"),
                readJson(rs, "options"),
                toLocalDateTime(rs.getTimestamp("created_at")),
                toLocalDateTime(rs.getTimestamp("updated_at")));
    }

    private static String readJson(ResultSet rs, String column) throws SQLException {
        Object value = rs.getObject(column);
        if (value == null) {
            return null;
        }
        return value.toString();
    }

    private static java.time.LocalDateTime toLocalDateTime(Timestamp timestamp) {
        return timestamp != null ? timestamp.toLocalDateTime() : null;
    }
}
