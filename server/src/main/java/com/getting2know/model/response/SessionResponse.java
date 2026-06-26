package com.getting2know.model.response;

import java.util.List;
import java.util.Map;

public class SessionResponse {

    private final String code;
    private final String status;
    private final String format;
    private final boolean canControl;
    private final int currentIndex;
    private final String hostName;
    private final String partnerName;
    private final String hostEmail;
    private final String partnerEmail;
    private final boolean partnerJoined;
    private final String role;
    private final List<SessionQuestionResponse> questions;
    private final Map<String, Object> hostAnswers;
    private final Map<String, Object> partnerAnswers;
    private final Map<String, Object> myAnswers;
    private final Object myCurrentAnswer;
    private final Object partnerCurrentAnswer;
    private final boolean waitingForPartner;
    private final boolean iAnsweredCurrent;
    private final boolean partnerAnsweredCurrent;
    private final String createdAt;
    private final String finishedAt;
    private final SessionProgressResponse progress;

    public SessionResponse(String code,
                           String status,
                           String format,
                           boolean canControl,
                           int currentIndex,
                           String hostName,
                           String partnerName,
                           String hostEmail,
                           String partnerEmail,
                           boolean partnerJoined,
                           String role,
                           List<SessionQuestionResponse> questions,
                           Map<String, Object> hostAnswers,
                           Map<String, Object> partnerAnswers,
                           Map<String, Object> myAnswers,
                           Object myCurrentAnswer,
                           Object partnerCurrentAnswer,
                           boolean waitingForPartner,
                           boolean iAnsweredCurrent,
                           boolean partnerAnsweredCurrent,
                           String createdAt,
                           String finishedAt,
                           SessionProgressResponse progress) {
        this.code = code;
        this.status = status;
        this.format = format;
        this.canControl = canControl;
        this.currentIndex = currentIndex;
        this.hostName = hostName;
        this.partnerName = partnerName;
        this.hostEmail = hostEmail;
        this.partnerEmail = partnerEmail;
        this.partnerJoined = partnerJoined;
        this.role = role;
        this.questions = questions;
        this.hostAnswers = hostAnswers;
        this.partnerAnswers = partnerAnswers;
        this.myAnswers = myAnswers;
        this.myCurrentAnswer = myCurrentAnswer;
        this.partnerCurrentAnswer = partnerCurrentAnswer;
        this.waitingForPartner = waitingForPartner;
        this.iAnsweredCurrent = iAnsweredCurrent;
        this.partnerAnsweredCurrent = partnerAnsweredCurrent;
        this.createdAt = createdAt;
        this.finishedAt = finishedAt;
        this.progress = progress;
    }

    public String getCode() {
        return code;
    }

    public String getStatus() {
        return status;
    }

    public String getFormat() {
        return format;
    }

    public boolean isCanControl() {
        return canControl;
    }

    public int getCurrentIndex() {
        return currentIndex;
    }

    public String getHostName() {
        return hostName;
    }

    public String getPartnerName() {
        return partnerName;
    }

    public String getHostEmail() {
        return hostEmail;
    }

    public String getPartnerEmail() {
        return partnerEmail;
    }

    public boolean isPartnerJoined() {
        return partnerJoined;
    }

    public String getRole() {
        return role;
    }

    public List<SessionQuestionResponse> getQuestions() {
        return questions;
    }

    public Map<String, Object> getHostAnswers() {
        return hostAnswers;
    }

    public Map<String, Object> getPartnerAnswers() {
        return partnerAnswers;
    }

    public Map<String, Object> getMyAnswers() {
        return myAnswers;
    }

    public Object getMyCurrentAnswer() {
        return myCurrentAnswer;
    }

    public Object getPartnerCurrentAnswer() {
        return partnerCurrentAnswer;
    }

    public boolean isWaitingForPartner() {
        return waitingForPartner;
    }

    public boolean isIAnsweredCurrent() {
        return iAnsweredCurrent;
    }

    public boolean isPartnerAnsweredCurrent() {
        return partnerAnsweredCurrent;
    }

    public String getCreatedAt() {
        return createdAt;
    }

    public String getFinishedAt() {
        return finishedAt;
    }

    public SessionProgressResponse getProgress() {
        return progress;
    }
}
