package com.servletApp.session;


import com.servletApp.entity.Employee;
import com.servletApp.repository.EmployeeDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.SneakyThrows;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;

@WebServlet("/deleteServlet")
public class DeleteServlet extends HttpServlet {

    private final EmployeeDao employeeDao = new EmployeeDao();

    @SneakyThrows
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String sid = request.getParameter("ID");
        int id = Integer.parseInt(sid);

        Optional<Employee> employee  = employeeDao.getEmployeeById(id);

        if (employee.isPresent()) {
            employeeDao.deleteUser(id);
            out.print("Employee deleted");
        } else {
            out.print("Employee not found");
        }

        out.close();
    }

}
