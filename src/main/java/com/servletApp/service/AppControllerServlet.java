package com.servletApp.service;

import com.servletApp.repository.EmployeeDao;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/servletApp/*")
public class AppControllerServlet extends HttpServlet {

    private EmployeeDao employeeDao;

    public void init() {
        employeeDao = new EmployeeDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (!isAuthenticated(request)) {
            response.sendRedirect(request.getContextPath() + "/login.jsp");
            return;
        }

        switch (action) {
            case "viewServlet":
                viewServlet(request, response);
                break;
            case "registrationServlet":
                registrationServlet(request, response);
                break;
            case "logoutServlet":
                logoutServlet(request, response);
                break;
            case "deleteServlet":
                deleteServlet(request, response);
                break;
            case "putServlet":
                putServlet(request, response);
                break;
            case "saveServlet":
                saveServlet(request, response);
                break;
            case "viewByIDServlet":
                viewByIDServlet(request, response);
                break;
            default:
                loginServlet(request, response);
                break;
        }
    }

    private boolean isAuthenticated(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        return session != null;
    }

    private void registrationServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/registrationServlet");
    }

    private void loginServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/loginServlet");
    }

    private void logoutServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/logoutServlet");
    }

    private void deleteServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/deleteServlet");
    }

    private void putServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/putServlet");
    }

    private void saveServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/saveServlet");
    }

    private void viewByIDServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/viewByIDServlet");
    }

    private void viewServlet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("/viewServlet");
    }
}









