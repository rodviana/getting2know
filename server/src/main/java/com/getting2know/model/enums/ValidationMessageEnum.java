package com.getting2know.model.enums;

public enum ValidationMessageEnum {

    EMAIL_REQUIRED("EMAIL_REQUIRED", "E-mail é obrigatório.", "Email is required."),
    INVALID_EMAIL("INVALID_EMAIL", "E-mail inválido.", "Invalid email."),
    PASSWORD_REQUIRED("PASSWORD_REQUIRED", "Senha é obrigatória.", "Password is required."),
    INVALID_DATA("INVALID_DATA", "Dados inválidos.", "Invalid data."),

    INVALID_CREDENTIALS("INVALID_CREDENTIALS", "Senha incorreta. Tenta de novo?", "Incorrect password."),
    USER_NOT_FOUND("USER_NOT_FOUND", "Não encontramos uma conta com este e-mail.", "No account found for this email."),
    EMAIL_ALREADY_EXISTS("EMAIL_ALREADY_EXISTS", "Este e-mail já tem conta. Tenta entrar com sua senha.", "This email is already registered."),
    NAME_REQUIRED("NAME_REQUIRED", "Informe como podemos te chamar.", "Name is required."),
    FAILED_CREATE_USER("FAILED_CREATE_USER", "Não foi possível criar sua conta. Tenta de novo.", "Failed to create user."),
    UNEXPECTED_ERROR_REGISTER("UNEXPECTED_ERROR_REGISTER", "Erro inesperado ao criar conta.", "Unexpected error during registration."),
    UNAUTHORIZED("UNAUTHORIZED", "Não autorizado.", "Unauthorized."),
    ACCESS_DENIED("ACCESS_DENIED", "Acesso negado.", "Access denied."),

    FAILED_LOAD_USER("FAILED_LOAD_USER", "Falha ao carregar usuário.", "Failed to load user."),
    INVALID_REQUEST("INVALID_REQUEST", "Requisição inválida.", "Invalid request."),

    UNEXPECTED_ERROR_LOGIN("UNEXPECTED_ERROR_LOGIN", "Erro inesperado ao fazer login.", "Unexpected error during login."),
    UNEXPECTED_ERROR_HOME("UNEXPECTED_ERROR_HOME", "Erro inesperado ao carregar a tela inicial.", "Unexpected error loading home screen."),

    QUESTION_TEXT_REQUIRED("QUESTION_TEXT_REQUIRED", "Escreva o texto da pergunta.", "Question text is required."),
    QUESTION_TYPE_REQUIRED("QUESTION_TYPE_REQUIRED", "Tipo de pergunta é obrigatório.", "Question type is required."),
    QUESTION_OPTIONS_REQUIRED("QUESTION_OPTIONS_REQUIRED", "Perguntas de seleção precisam de pelo menos 2 opções.", "Choice questions need at least 2 options."),
    QUESTION_NOT_FOUND("QUESTION_NOT_FOUND", "Pergunta não encontrada.", "Question not found."),
    FAILED_LOAD_QUESTIONS("FAILED_LOAD_QUESTIONS", "Falha ao carregar perguntas.", "Failed to load questions."),
    FAILED_SAVE_QUESTION("FAILED_SAVE_QUESTION", "Falha ao salvar pergunta.", "Failed to save question."),
    FAILED_DELETE_QUESTION("FAILED_DELETE_QUESTION", "Falha ao excluir pergunta.", "Failed to delete question."),
    UNEXPECTED_ERROR_QUESTIONS("UNEXPECTED_ERROR_QUESTIONS", "Erro inesperado ao processar perguntas.", "Unexpected error processing questions."),

    SESSION_CODE_REQUIRED("SESSION_CODE_REQUIRED", "Código da sessão é obrigatório.", "Session code is required."),
    SESSION_QUESTIONS_REQUIRED("SESSION_QUESTIONS_REQUIRED", "Selecione pelo menos uma pergunta.", "Select at least one question."),
    SESSION_NOT_FOUND("SESSION_NOT_FOUND", "Sessão não encontrada.", "Session not found."),
    SESSION_ALREADY_FULL("SESSION_ALREADY_FULL", "Esta sessão já tem duas pessoas.", "This session already has two participants."),
    SESSION_CANNOT_JOIN_OWN("SESSION_CANNOT_JOIN_OWN", "Você não pode entrar na sua própria sessão.", "You cannot join your own session."),
    SESSION_PARTNER_REQUIRED("SESSION_PARTNER_REQUIRED", "Aguarde o parceiro entrar na sessão.", "Wait for your partner to join."),
    SESSION_NOT_PARTICIPANT("SESSION_NOT_PARTICIPANT", "Você não participa desta sessão.", "You are not a participant in this session."),
    SESSION_INVALID_STATUS("SESSION_INVALID_STATUS", "Ação não permitida neste momento da sessão.", "Action not allowed at this stage of the session."),
    SESSION_ANSWER_REQUIRED("SESSION_ANSWER_REQUIRED", "Responda a pergunta antes de enviar.", "Answer the question before submitting."),
    SESSION_ANSWER_INVALID("SESSION_ANSWER_INVALID", "Resposta inválida para este tipo de pergunta.", "Invalid answer for this question type."),
    SESSION_ALREADY_ANSWERED("SESSION_ALREADY_ANSWERED", "Você já respondeu esta pergunta.", "You already answered this question."),
    SESSION_LIVE_HOST_ONLY("SESSION_LIVE_HOST_ONLY", "No modo ao vivo, só quem criou a sessão pode fazer isso.", "In live mode, only the session host can do this."),
    SESSION_FORMAT_INVALID("SESSION_FORMAT_INVALID", "Formato de sessão inválido.", "Invalid session format."),
    FAILED_LOAD_SESSION("FAILED_LOAD_SESSION", "Falha ao carregar sessão.", "Failed to load session."),
    FAILED_SAVE_SESSION("FAILED_SAVE_SESSION", "Falha ao salvar sessão.", "Failed to save session."),
    UNEXPECTED_ERROR_SESSIONS("UNEXPECTED_ERROR_SESSIONS", "Erro inesperado ao processar sessão.", "Unexpected error processing session.");

    private final String code;
    private final String descriptionPt;
    private final String descriptionEng;

    ValidationMessageEnum(String code, String descriptionPt, String descriptionEng) {
        this.code = code;
        this.descriptionPt = descriptionPt;
        this.descriptionEng = descriptionEng;
    }

    public String getCode() {
        return code;
    }

    public String getDescriptionPt() {
        return descriptionPt;
    }

    public String getDescriptionEng() {
        return descriptionEng;
    }

    public static ValidationMessageEnum fromCode(String code) {
        if (code == null || code.isBlank()) {
            throw new IllegalArgumentException("Unknown validation message code: " + code);
        }
        String normalized = code.trim().toUpperCase();
        for (ValidationMessageEnum message : values()) {
            if (message.code.equals(normalized)) {
                return message;
            }
        }
        throw new IllegalArgumentException("Unknown validation message code: " + code);
    }
}
