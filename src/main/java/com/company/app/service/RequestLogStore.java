package com.company.app.service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import com.company.app.model.RequestRecord;

public final class RequestLogStore {
    private static final List<RequestRecord> REQUESTS = Collections.synchronizedList(new ArrayList<>());

    private RequestLogStore() {
    }

    public static void add(RequestRecord requestRecord) {
        REQUESTS.add(requestRecord);
    }

    public static List<RequestRecord> snapshot() {
        synchronized (REQUESTS) {
            return new ArrayList<>(REQUESTS);
        }
    }

    public static void clear() {
        REQUESTS.clear();
    }
}