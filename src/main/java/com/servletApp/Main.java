package com.servletApp;

import com.servletApp.entity.Employee;
import com.servletApp.repository.EmployeeDao;
import com.servletApp.service.ConnectionProvider;
import com.servletApp.session.ViewServlet;

//import java.sql.Connection;
//import java.sql.SQLException;
//import java.util.List;
//
//public class Main {
//    public static void main(String[] args) {
//        EmployeeDao employeeDao = new EmployeeDao();
//        Connection connection = ConnectionProvider.getCon();
//
//        if (connection != null) {
//            System.out.println("З'єднання з базою даних встановлено");
//        } else {
//            System.out.println("З'єднання з базою даних не встановлено");
//        }
//
//        List<Employee> employees = employeeDao.getAllEmployees();
//        if (employees != null) {
//            System.out.println("Список співробітників ініціалізовано");
//            for (Employee employee : employees) {
//                System.out.println(employee.toString());
//            }
//        } else {
//            System.out.println("Список співробітників не ініціалізовано");
//        }
//    }
//}
