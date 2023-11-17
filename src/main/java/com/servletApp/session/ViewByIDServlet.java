package com.servletApp.session;


import com.servletApp.entity.Employee;
import com.servletApp.repository.EmployeeDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;


@WebServlet("/viewByIDServlet")
public class ViewByIDServlet extends HttpServlet {

    private final EmployeeDao employeeDao = new EmployeeDao();

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String sid = request.getParameter("ID");
        int id = 0;
        try {
            id = Integer.parseInt(sid);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Invalid ID");
            request.getRequestDispatcher("/viewByID.jsp").forward(request, response);
            return;
        }

        Optional<Employee> employee  = employeeDao.getEmployeeById(id);

        if (employee.isPresent()) {
            request.setAttribute("employee", employee.get());
            request.getRequestDispatcher("/viewByID.jsp").forward(request, response);
        } else {
            request.setAttribute("error", "Employee not found");
            request.getRequestDispatcher("/viewByID.jsp").forward(request, response);
        }
    }
}