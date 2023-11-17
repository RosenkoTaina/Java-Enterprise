<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.servletApp.entity.Employee" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        .container {
            width: 300px;
            padding: 16px;
            background-color: white;
            margin: 0 auto;
            margin-top: 50px;
            border: 1px solid black;
            border-radius: 4px;
        }
        input[type=text], input[type=submit] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .employee-details {
            margin-top: 20px;
            border: 1px solid #ddd;
            padding: 10px;
        }
        .employee-details p {
            margin: 0;
            padding: 5px 0;
        }
        .error {
            color: red;
        }
    </style>
</head>
<body>

    <div class="container">
        <form action="/servletApp/viewByIDServlet" method="get">
            <label for="ID"><b>Employee ID:</b></label><br>
            <input type="text" id="ID" name="ID" required><br>
            <input type="submit" value="Submit">
        </form>

        <%
            Employee employee = (Employee) request.getAttribute("employee");
            if (employee != null) {
        %>
            <div class="employee-details">
                <p><b>ID:</b> <%= employee.id() %></p>
                <p><b>Name:</b> <%= employee.name() %></p>
                <p><b>Email:</b> <%= employee.email() %></p>
                <p><b>Country:</b> <%= employee.country() %></p>
                <p><b>Password:</b> <%= employee.hashedPassword() %></p>
                <p><b>Role:</b> <%= employee.role() %></p>
            </div>
        <%
            } else if (request.getParameter("ID") != null) {
        %>
            <p class="error">Employee not found</p>
        <%
            }
        %>
    </div>

</body>
</html>
