<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome to the Employee Management System</title>
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
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }
        .message {
            color: green;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>Welcome to the Employee Management System</h2>

        <!-- Display a message if available -->
        <c:if test="${not empty message}">
            <div class="message">${message}</div>
        </c:if>

        <p>Choose an option:</p>
        <button onclick="location.href='<%=request.getContextPath()%>/viewServlet'">View</button>
        <button onclick="location.href='viewByID.jsp'">View by ID</button>
        <button onclick="location.href='add.jsp'">Add New</button>
        <button onclick="location.href='delete.jsp'">Delete</button>
        <button onclick="location.href='<%=request.getContextPath()%>/logoutServlet'">Logout</button>
    </div>

</body>
</html>