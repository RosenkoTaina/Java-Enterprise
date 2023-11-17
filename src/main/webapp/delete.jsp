<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.servletApp.session.DeleteServlet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Employee Details</title>
</head>
<body>
    <form action="/servletApp/deleteServlet" method="post">
        <label for="ID">Employee ID:</label><br>
        <input type="text" id="ID" name="ID"><br>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
