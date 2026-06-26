package com.getting2know.model.response;

public class HomeResponse {

    private final Long id;
    private final String name;
    private final String username;
    private final String message;

    public HomeResponse(Long id, String name, String username, String message) {
        this.id = id;
        this.name = name;
        this.username = username;
        this.message = message;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getUsername() {
        return username;
    }

    public String getMessage() {
        return message;
    }
}
