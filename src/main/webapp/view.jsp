<%@ page import="java.util.List" %>
<%@ page import="com.servletApp.entity.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 600px;
            margin: 0 auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Welcome to the Employee Management System</h2>

        <table>
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
    </div>

</body>
</html>