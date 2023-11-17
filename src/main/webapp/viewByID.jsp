<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.servletApp.session.ViewByIDServlet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Details</title>
    <style>
        .employee-details {
            border: 1px solid #ddd;
            margin: 10px;
            padding: 10px;
            width: 300px;
        }
        .employee-details h2 {
            margin-top: 0;
        }
    </style>
</head>
<body>
    <form action="/servletApp/viewByIDServlet" method="get">
        <label for="ID">Employee ID:</label><br>
        <input type="text" id="ID" name="ID"><br>
        <input type="submit" value="Submit">
    </form>

    <%
        Employee employee = (Employee) request.getAttribute("employee");
        if (employee != null) {
    %>
        <div class="employee-details">
            <h2><%= employee.name() %></h2>
            <p>ID: <%= employee.id() %></p>
            <p>Email: <%= employee.email() %></p>
            <p>Country: <%= employee.country() %></p>
            <p>Password: <%= employee.hashedPassword() %></p>
            <p>Role: <%= employee.role() %></p>
        </div>
    <%
        }
    %>
</body>
</html>