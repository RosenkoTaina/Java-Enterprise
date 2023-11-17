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
@WebServlet("/putServlet")
public class PutServlet extends HttpServlet {
    private final EmployeeDao employeeDao = new EmployeeDao();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        try {

            String sid = request.getParameter("id");
            int id = Integer.parseInt(sid);

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String password = request.getParameter("hashed_password");
            String country = request.getParameter("country");
            String role = request.getParameter("role");


            Employee employee = new Employee(id, name, email, password, country, role);


            int status = employeeDao.updateUser(employee);

            if (status > 0) {
                request.getSession().setAttribute("successMessage", "User updated successfully!");
                response.sendRedirect(request.getContextPath() + "/welcome.jsp");
            } else {
                out.println("Sorry! Unable to update record.");
            }
        } catch (NumberFormatException e) {
            out.println("Invalid ID format.");
        } catch (Exception e) {
            out.println("An error occurred: " + e.getMessage());
        } finally {
            out.close();
        }
    }
}
