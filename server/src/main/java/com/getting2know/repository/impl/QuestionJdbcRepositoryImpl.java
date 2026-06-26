package com.getting2know.repository.impl;

import com.getting2know.exception.GlobalException;
import com.getting2know.model.enums.ValidationMessageEnum;
import com.getting2know.model.record.QuestionRecord;
import com.getting2know.repository.QuestionJdbcRepository;
import com.getting2know.repository.filter.CreateQuestionFilter;
import com.getting2know.repository.filter.QuestionIdFilter;
import com.getting2know.repository.filter.UpdateQuestionFilter;
import com.getting2know.repository.filter.UserIdFilter;
import com.getting2know.repository.mapper.QuestionRowMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public class QuestionJdbcRepositoryImpl implements QuestionJdbcRepository {

    private static final Logger log = LoggerFactory.getLogger(QuestionJdbcRepositoryImpl.class);

    private final NamedParameterJdbcTemplate jdbc;

    public QuestionJdbcRepositoryImpl(NamedParameterJdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    @Override
    public List<QuestionRecord> listByUserId(UserIdFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource("userId", filter.getUserId());
        try {
            return jdbc.query(P_LIST_QUESTIONS_BY_USER_ID, params, QuestionRowMapper.LIST_INSTANCE);
        } catch (DataAccessException e) {
            log.error("[questions] list error userId={}: {}", filter.getUserId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_QUESTIONS);
        }
    }

    @Override
    public Optional<QuestionRecord> findById(QuestionIdFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("questionId", filter.getQuestionId())
                .addValue("userId", filter.getUserId());
        try {
            List<QuestionRecord> rows = jdbc.query(P_FIND_QUESTION_BY_ID, params, QuestionRowMapper.DETAIL_INSTANCE);
            return rows.stream().findFirst();
        } catch (DataAccessException e) {
            log.error("[questions] find error questionId={}: {}", filter.getQuestionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_LOAD_QUESTIONS);
        }
    }

    @Override
    public Long create(CreateQuestionFilter filter) {
        MapSqlParameterSource params = questionParams(filter.getUserId(), filter.getCategoryId(), filter.getType(),
                filter.getText(), filter.getOptionsJson());
        try {
            return jdbc.queryForObject(P_CREATE_QUESTION, params, Long.class);
        } catch (DataAccessException e) {
            log.error("[questions] create error userId={}: {}", filter.getUserId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_QUESTION);
        }
    }

    @Override
    public Long update(UpdateQuestionFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("questionId", filter.getQuestionId())
                .addValue("userId", filter.getUserId())
                .addValue("categoryId", filter.getCategoryId())
                .addValue("type", filter.getType())
                .addValue("text", filter.getText())
                .addValue("optionsJson", filter.getOptionsJson());
        try {
            Long id = jdbc.queryForObject(P_UPDATE_QUESTION, params, Long.class);
            if (id == null) {
                throw GlobalException.of(ValidationMessageEnum.QUESTION_NOT_FOUND);
            }
            return id;
        } catch (GlobalException e) {
            throw e;
        } catch (DataAccessException e) {
            log.error("[questions] update error questionId={}: {}", filter.getQuestionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_SAVE_QUESTION);
        }
    }

    @Override
    public Long delete(QuestionIdFilter filter) {
        MapSqlParameterSource params = new MapSqlParameterSource()
                .addValue("questionId", filter.getQuestionId())
                .addValue("userId", filter.getUserId());
        try {
            Long id = jdbc.queryForObject(P_DELETE_QUESTION, params, Long.class);
            if (id == null) {
                throw GlobalException.of(ValidationMessageEnum.QUESTION_NOT_FOUND);
            }
            return id;
        } catch (GlobalException e) {
            throw e;
        } catch (DataAccessException e) {
            log.error("[questions] delete error questionId={}: {}", filter.getQuestionId(), e.getMessage(), e);
            throw GlobalException.of(ValidationMessageEnum.FAILED_DELETE_QUESTION);
        }
    }

    private MapSqlParameterSource questionParams(Long userId, String categoryId, String type, String text, String optionsJson) {
        return new MapSqlParameterSource()
                .addValue("userId", userId)
                .addValue("categoryId", categoryId)
                .addValue("type", type)
                .addValue("text", text)
                .addValue("optionsJson", optionsJson);
    }
}
