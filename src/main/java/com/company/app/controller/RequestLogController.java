package com.company.app.controller;

import java.util.stream.Collectors;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.company.app.model.RequestRecord;
import com.company.app.service.RequestLogStore;

@RestController
public class RequestLogController {
    @GetMapping("/requests")
    @ResponseBody
    public String requests() {
        return RequestLogStore.snapshot().stream()
                .map(RequestRecord::toString)
                .collect(Collectors.joining("\n"));
    }

    @PostMapping("/requests/clear")
    @ResponseBody
    public String clear() {
        RequestLogStore.clear();
        return "CLEARED";
    }

    @GetMapping("/methods/get")
    @ResponseBody
    public String getMethod() {
        return "GET OK";
    }

    @PostMapping("/methods/post")
    @ResponseBody
    public String postMethod() {
        return "POST OK";
    }

    @PutMapping("/methods/put")
    @ResponseBody
    public String putMethod() {
        return "PUT OK";
    }

    @DeleteMapping("/methods/delete")
    @ResponseBody
    public String deleteMethod() {
        return "DELETE OK";
    }
}