package com.getting2know.controller;

/**
 * Constantes de rotas da API.
 */
public final class Getting2KnowControllerMapping {

    private static final String API_VERSION_V1 = "/api/v1";

    public static final String HEALTH_PATH = "/api/health";

    /** Login screen — /login */
    public static final String AUTH_PATH = API_VERSION_V1 + "/auth";

    /** Home screen — / */
    public static final String HOME_PATH = API_VERSION_V1 + "/home";

    /** Custom questions — /questions */
    public static final String QUESTIONS_PATH = API_VERSION_V1 + "/questions";

    /** Pair sessions — /sessions */
    public static final String SESSIONS_PATH = API_VERSION_V1 + "/sessions";

    public static final String AUTH_LOGIN = "/login";
    public static final String AUTH_REGISTER = "/register";
    public static final String SESSIONS_JOIN = "/join";
    public static final String SESSIONS_MINE = "/mine";
    public static final String SESSIONS_PREVIOUSLY_ASKED = "/previously-asked";
    public static final String SESSIONS_START = "/start";
    public static final String SESSIONS_ANSWERS = "/answers";
    public static final String SESSIONS_NEXT = "/next";

    private Getting2KnowControllerMapping() {
    }
}
