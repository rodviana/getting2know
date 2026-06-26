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

    public static final String AUTH_LOGIN = "/login";

    private Getting2KnowControllerMapping() {
    }
}
