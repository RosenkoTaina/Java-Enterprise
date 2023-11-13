<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login Form</title>

    <!-- CSS Styles -->
    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
        }

        div {
            text-align: center;
            margin-top: 50px;
        }

        h1 {
            color: #333;
        }

        table {
            margin: 20px auto;
            border-collapse: collapse;
            width: 50%;
        }

        table, td {
            border: 1px solid #ddd;
            padding: 10px;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        input[type=submit]:hover {
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <div>
        <h1>Employee Login Form</h1>
        <form action="<%=request.getContextPath()%>/loginServlet" method="post">
            <table>
                <tr>
                    <td>Email:</td>
                    <td><input type="text" name="email" /></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="password" /></td>
                </tr>
            </table>
            <input type="submit" value="Submit" />
        </form>
    </div>
</body>
</html>