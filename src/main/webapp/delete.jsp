<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.servletApp.session.DeleteServlet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Delete Employee</title>
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
    </style>
</head>
<body>

    <div class="container">
        <label for="ID"><b>Employee ID</b></label>
        <form action="/servletApp/deleteServlet" method="post">
            <input type="text" id="ID" name="ID" required><br>
            <input type="submit" value="Delete Employee">
        </form>
    </div>

</body>
</html>