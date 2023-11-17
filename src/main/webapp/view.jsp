<%@ page import="java.util.List" %>
<%@ page import="com.servletApp.entity.Employee" %>
<%@ page import="java.lang.reflect.Field" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>

 <h2>Welcome to the Employee Management System</h2>

    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Country</th>
                <th>Password</th>
                <th>Role</th>
            </tr>
        </thead>
        <tbody>
            <%
                List<Employee> list = (List<Employee>) request.getAttribute("employeeList");
                for (Employee employee : list) {
            %>
                <tr>
                             <td><%= employee.id() %></td>
                             <td><%= employee.name() %></td>
                             <td><%= employee.email() %></td>
                             <td><%= employee.country() %></td>
                             <td><%= employee.hashedPassword() %></td>
                             <td><%= employee.role() %></td>
                </tr>
            <%
                }
            %>
        </tbody>
    </table>

    <br>


</body>
</html>