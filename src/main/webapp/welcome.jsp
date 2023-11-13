<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>

    <h2>Welcome to the Employee Management System</h2>

    <!-- Display a message if available -->
    <c:if test="${not empty message}">
        <div style="color: green;">${message}</div>
    </c:if>

    <!-- Display the list of employees -->
    <c:if test="${not empty employeeList}">
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Country</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="employee" items="${employeeList}">
                    <tr>
                        <td>${employee.id}</td>
                        <td>${employee.name}</td>
                        <td>${employee.email}</td>
                        <td>${employee.country}</td>
                        <td>
                            <a href="<%=request.getContextPath()%>/servletApp/viewByIDServlet?ID=${employee.id}">View</a>
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <a href="<%=request.getContextPath()%>/servletApp/deleteServlet?id=${employee.id}">Delete</a>
                            <!-- Add more actions as needed -->
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>

    <br>

    <!-- Add form or links for adding new employees, etc. -->

</body>
</html>
