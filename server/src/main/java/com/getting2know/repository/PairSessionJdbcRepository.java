package com.getting2know.repository;

import com.getting2know.model.record.PairSessionRecord;
import com.getting2know.model.record.SessionAnswerRecord;
import com.getting2know.model.record.SessionQuestionRecord;
import com.getting2know.model.record.UserSessionListRecord;
import com.getting2know.repository.filter.CreatePairSessionFilter;
import com.getting2know.repository.filter.InsertSessionQuestionFilter;
import com.getting2know.repository.filter.JoinSessionFilter;
import com.getting2know.repository.filter.SessionCodeFilter;
import com.getting2know.repository.filter.SessionIdFilter;
import com.getting2know.repository.filter.UpdateSessionStatusFilter;
import com.getting2know.repository.filter.UpsertSessionAnswerFilter;
import com.getting2know.repository.filter.UserIdFilter;
import com.getting2know.repository.filter.UserPairFilter;

import java.util.List;
import java.util.Optional;

public interface PairSessionJdbcRepository {

    String P_CREATE_PAIR_SESSION = "SELECT * FROM p_create_pair_session(:hostUserId, :code, :format)";
    String P_FIND_PAIR_SESSION_BY_CODE = "SELECT * FROM p_find_pair_session_by_code(:code)";
    String P_JOIN_PAIR_SESSION = "SELECT * FROM p_join_pair_session(:code, :partnerUserId)";
    String P_START_PAIR_SESSION = "SELECT * FROM p_start_pair_session(:sessionId)";
    String P_UPDATE_PAIR_SESSION_STATUS = "SELECT * FROM p_update_pair_session_status(:sessionId, :status, :currentIndex, :finishedAt)";
    String P_INSERT_SESSION_QUESTION = "SELECT p_insert_session_question(:sessionId, :position, :sourceRef, :categoryId, :type, :text, CAST(:optionsJson AS JSONB))";
    String P_LIST_SESSION_QUESTIONS = "SELECT * FROM p_list_session_questions(:sessionId)";
    String P_UPSERT_SESSION_ANSWER = "SELECT p_upsert_session_answer(:sessionId, :sessionQuestionId, :userId, CAST(:answerJson AS JSONB))";
    String P_LIST_SESSION_ANSWERS = "SELECT * FROM p_list_session_answers(:sessionId)";
    String P_COUNT_ANSWERS_FOR_QUESTION = "SELECT p_count_answers_for_question(:sessionQuestionId)";
    String P_LIST_USER_PAIR_SESSIONS = "SELECT * FROM p_list_user_pair_sessions(:userId)";
    String P_LIST_PREVIOUSLY_ASKED_QUESTION_REFS =
            "SELECT * FROM p_list_previously_asked_question_refs(:userId, :partnerUserId)";

    PairSessionRecord create(CreatePairSessionFilter filter);

    Optional<PairSessionRecord> findByCode(SessionCodeFilter filter);

    Optional<PairSessionRecord> join(JoinSessionFilter filter);

    Optional<PairSessionRecord> start(SessionIdFilter filter);

    PairSessionRecord updateStatus(UpdateSessionStatusFilter filter);

    Long insertQuestion(InsertSessionQuestionFilter filter);

    List<SessionQuestionRecord> listQuestions(SessionIdFilter filter);

    Long upsertAnswer(UpsertSessionAnswerFilter filter);

    List<SessionAnswerRecord> listAnswers(SessionIdFilter filter);

    int countAnswersForQuestion(Long sessionQuestionId);

    List<UserSessionListRecord> listByUserId(UserIdFilter filter);

    List<String> listPreviouslyAskedQuestionRefs(UserPairFilter filter);
}
