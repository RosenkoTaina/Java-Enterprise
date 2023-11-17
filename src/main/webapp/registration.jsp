<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration</title>
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
        input[type=text], input[type=email], input[type=password] {
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
        .error {
            color: red;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>User Registration</h2>

        <c:if test="${param.error == 'email'}">
            <p style="color: red;">Email is already registered. Please use a different email.</p>
        </c:if>

        <c:if test="${param.error == 'registration'}">
            <p style="color: red;">Registration failed. Please try again.</p>
        </c:if>

        <form action="<%=request.getContextPath()%>/registrationServlet" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>

            <label for="country">Country:</label>
            <input type="text" id="country" name="country" required><br>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required><br>

            <input type="Submit" value="Register">
        </form>

        <p>Already have an account? <a href="<%=request.getContextPath()%>/login.jsp">Login here</a></p>
    </div>

    <script>
        // Your JavaScript code here
    </script>
</body>
</html>