package com.company.app.model;

public class RequestRecord {
    private final String method;
    private final String uri;
    private final String queryString;

    public RequestRecord(String method, String uri, String queryString) {
        this.method = method;
        this.uri = uri;
        this.queryString = queryString;
    }

    public String getMethod() {
        return method;
    }

    public String getUri() {
        return uri;
    }

    public String getQueryString() {
        return queryString;
    }

    @Override
    public String toString() {
        return method + " " + uri + (queryString == null || queryString.isBlank() ? "" : "?" + queryString);
    }
}