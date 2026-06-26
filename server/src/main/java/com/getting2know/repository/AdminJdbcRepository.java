package com.getting2know.repository;

import com.getting2know.model.record.AdminAnalyticsInsightsRecord;
import com.getting2know.model.record.AdminCategoryBreakdownRecord;
import com.getting2know.model.record.AdminQuestionRankingRecord;
import com.getting2know.model.record.AdminSessionQuestionRecord;
import com.getting2know.model.record.AdminSessionRecord;
import com.getting2know.model.record.AdminUserRecord;
import com.getting2know.repository.filter.ListAdminSessionsFilter;

import java.util.List;
import java.util.Optional;

public interface AdminJdbcRepository {

    String P_LIST_SESSIONS_ADMIN = "SELECT * FROM p_list_sessions_admin(:limit, :offset, :status, :username)";
    String P_COUNT_SESSIONS_ADMIN = "SELECT p_count_sessions_admin(:status, :username)";
    String P_GET_SESSION_ADMIN_BY_CODE = "SELECT * FROM p_get_session_admin_by_code(:code)";
    String P_LIST_SESSION_QUESTIONS_ADMIN = "SELECT * FROM p_list_session_questions_admin(:sessionCode)";
    String P_ADMIN_QUESTION_RANKING = "SELECT * FROM p_admin_question_ranking(:limit)";
    String P_ADMIN_ANALYTICS_INSIGHTS = "SELECT * FROM p_admin_analytics_insights()";
    String P_ADMIN_CATEGORY_BREAKDOWN = "SELECT * FROM p_admin_category_breakdown()";

    List<AdminSessionRecord> listSessions(ListAdminSessionsFilter filter);

    long countSessions(ListAdminSessionsFilter filter);

    Optional<AdminSessionRecord> findSessionByCode(String code);

    List<AdminSessionQuestionRecord> listSessionQuestions(String sessionCode);

    List<AdminQuestionRankingRecord> questionRanking(int limit);

    Optional<AdminAnalyticsInsightsRecord> analyticsInsights();

    List<AdminCategoryBreakdownRecord> categoryBreakdown();
}
