package com.servletApp.filters;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

public class AuthenticationHelper {
    public static void handleUnsuccessfulLogin(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.sendRedirect(request.getContextPath() + "/registration.jsp");
    }

    private static void createSession(HttpServletRequest request, String email) {
        HttpSession session = request.getSession();
        session.setAttribute("email", email);
        session.setMaxInactiveInterval(30 * 60);
    }

    private static void createCookie(HttpServletResponse response, String email) {
        Cookie userEmail = new Cookie("email", email);
        userEmail.setMaxAge(30 * 60);
        response.addCookie(userEmail);
    }

    public static void handleSuccessfulLogin(HttpServletRequest request, HttpServletResponse response, String email)
            throws IOException {
        createSession(request, email);
        createCookie(response, email);
        response.sendRedirect(request.getContextPath() + "/welcome.jsp");
    }

    public static void deleteSession(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.invalidate();
        }
        deleteCookie(response, "email");
        response.sendRedirect(request.getContextPath());
    }

    private static void deleteCookie(HttpServletResponse response, String name) {
        Cookie cookie = new Cookie(name, "");
        cookie.setMaxAge(0);
        response.addCookie(cookie);
    }
}

