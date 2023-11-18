package com.servletApp.filters;

import com.servletApp.repository.EmployeeDao;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter("/servletApp/*")
public class AppControllerFilter implements Filter {

    private EmployeeDao employeeDao;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        employeeDao = new EmployeeDao();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletResponse httpResponse = (HttpServletResponse) response;

        String action = httpRequest.getParameter("action");

        if (!isAuthenticated(httpRequest)) {
            httpResponse.sendRedirect(httpRequest.getContextPath() + "/login.jsp");
            return;
        }

        switch (action) {
            case "viewServlet":
                httpResponse.sendRedirect("/viewServlet");
                break;
            case "registrationServlet":
                httpResponse.sendRedirect("/registrationServlet");
                break;
            case "logoutServlet":
                httpResponse.sendRedirect("/logoutServlet");
                break;
            case "deleteServlet":
                httpResponse.sendRedirect("/deleteServlet");
                break;
            case "putServlet":
                httpResponse.sendRedirect("/putServlet");
                break;
            case "saveServlet":
                httpResponse.sendRedirect("/saveServlet");
                break;
            case "viewByIDServlet":
                httpResponse.sendRedirect("/viewByIDServlet");
                break;
            default:
                httpResponse.sendRedirect("/loginServlet");
                break;
        }

        chain.doFilter(request, response);
    }

    private boolean isAuthenticated(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        return session != null;
    }

    @Override
    public void destroy() {
        // cleanup code...
    }
}








