package com.getting2know.exception;

import com.getting2know.model.enums.ValidationMessageEnum;

import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * Business and validation errors exposed to the client as HTTP 400.
 * User-facing text uses {@link ValidationMessageEnum#getDescriptionPt()}.
 */
public class GlobalException extends RuntimeException {

    private final List<String> errors;
    private final String errorCode;

    private GlobalException(String message, List<String> errors, String errorCode) {
        super(message);
        this.errors = errors != null ? List.copyOf(errors) : Collections.emptyList();
        this.errorCode = errorCode;
    }

    public List<String> getErrors() {
        return errors;
    }

    public String getErrorCode() {
        return errorCode;
    }

    public static GlobalException of(ValidationMessageEnum message) {
        return new GlobalException(message.getDescriptionPt(), Collections.emptyList(), message.getCode());
    }

    public static GlobalException of(ValidationMessageEnum message, List<ValidationMessageEnum> errorMessages) {
        List<String> errors = errorMessages.stream()
                .map(ValidationMessageEnum::getDescriptionPt)
                .collect(Collectors.toList());
        return new GlobalException(message.getDescriptionPt(), errors, message.getCode());
    }
}
