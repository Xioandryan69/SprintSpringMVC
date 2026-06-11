package com.company.app.filter;

import com.company.app.model.RequestRecord;
import com.company.app.service.RequestLogStore;
import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.http.HttpServletRequest;

import java.io.IOException;

public class RequestLoggingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        if (request instanceof HttpServletRequest httpRequest) {
            RequestLogStore.add(new RequestRecord(
                    httpRequest.getMethod(),
                    httpRequest.getRequestURI(),
                    httpRequest.getQueryString()));
        }

        chain.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }
}