package com.company.app.controller;

import org.springframework.stereotype.Component;

import jakarta.annotation.PostConstruct;

@Component
public class StartupCheck {

    @PostConstruct
    public void init() {
        System.out.println(" SPRING IS STARTING CORRECTLY");
    }
}