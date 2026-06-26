package com.getting2know.repository;

import com.getting2know.model.record.QuestionRecord;
import com.getting2know.repository.filter.CreateQuestionFilter;
import com.getting2know.repository.filter.QuestionIdFilter;
import com.getting2know.repository.filter.UpdateQuestionFilter;
import com.getting2know.repository.filter.UserIdFilter;

import java.util.List;
import java.util.Optional;

public interface QuestionJdbcRepository {

    String P_LIST_QUESTIONS_BY_USER_ID = "SELECT * FROM p_list_questions_by_user_id(:userId)";
    String P_FIND_QUESTION_BY_ID = "SELECT * FROM p_find_question_by_id(:questionId, :userId)";
    String P_CREATE_QUESTION = "SELECT p_create_question(:userId, :categoryId, :type, :text, CAST(:optionsJson AS JSONB))";
    String P_UPDATE_QUESTION = "SELECT p_update_question(:questionId, :userId, :categoryId, :type, :text, CAST(:optionsJson AS JSONB))";
    String P_DELETE_QUESTION = "SELECT p_delete_question(:questionId, :userId)";

    List<QuestionRecord> listByUserId(UserIdFilter filter);

    Optional<QuestionRecord> findById(QuestionIdFilter filter);

    Long create(CreateQuestionFilter filter);

    Long update(UpdateQuestionFilter filter);

    Long delete(QuestionIdFilter filter);
}
