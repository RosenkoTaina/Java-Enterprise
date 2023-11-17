<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add new employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }

        h2 {
            color: #4CAF50; /* Green color */
            text-align: center;
            margin-top: 20px;
        }

        form {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            background-color: #fff;
        }

        label {
            display: block;
            margin-bottom: 5px;
        }

        input {
            display: block;
            width: 100%;
            margin-bottom: 10px;
            padding: 10px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4CAF50; /* Green color */
            color: #fff;
            border: none;
            cursor: pointer;
            padding: 15px;
            box-sizing: border-box;
        }
    </style>
</head>
<body>

    <h2>Save Employee</h2>

    <form action="saveServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>

        <label for="country">Country:</label>
        <input type="text" id="country" name="country" required>

        <label for="hashed_password">Password:</label>
        <input type="password" id="hashed_password" name="hashed_password" required>

        <label for="role">Role:</label>
        <input type="text" id="role" name="role" required>

        <input type="submit" value="Save">
    </form>

</body>
</html>