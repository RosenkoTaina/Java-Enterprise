<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>

    <h2>Welcome to the Employee Management System</h2>

    <!-- Display a message if available -->
    <c:if test="${not empty message}">
        <div style="color: green;">${message}</div>
    </c:if>


    <p>Choose an option:</p>
    <ul>
    <li><button onclick="location.href='<%=request.getContextPath()%>/viewServlet'">View</button></li>
    <li><button onclick="location.href='viewByID.jsp'">View by ID</button></li>
    <li><button onclick="location.href='add.jsp'">Add New</button></li>
    <li><button onclick="location.href='delete.jsp'">Delete</button></li>
    <li><button onclick="location.href='<%=request.getContextPath()%>/logoutServlet'">Logout</button></li>

    </ul>

</body>
</html>