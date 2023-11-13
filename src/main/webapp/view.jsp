<%@ page import="java.util.List" %>
<%@ page import="com.servletApp.entity.Employee" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Employee List</title>
</head>
<body>

<h2>Employee List</h2>

<%
    List<Employee> employeeList = (List<Employee>) request.getAttribute("employeeList");
    if (employeeList != null) {
%>
    <table border="1">
        <tr>
            <th>Employee Details</th>
        </tr>

        <%
            for (Employee employee : employeeList) {
        %>
            <tr>
                <td><%= employee %></td>
            </tr>
        <%
            }
        %>
    </table>
<%
    } else {
%>
    <p>No employees found.</p>
<%
    }
%>

</body>
</html>
