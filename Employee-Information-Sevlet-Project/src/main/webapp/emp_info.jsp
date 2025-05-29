<%@ page import="com.ujjwal.employee_info29may.EmpBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Employee Info</title>
    
    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="bg-light">

<div class="container mt-5">
    <h2 class="text-center mb-4">Employee Details</h2>

    <%
        EmpBean eb = (EmpBean) request.getAttribute("ab");
        if (eb != null) {
    %>

    <table class="table table-bordered table-striped table-hover shadow">
        <thead class="table-dark">
            <tr>
                <th>Field</th>
                <th>Information</th>
            </tr>
        </thead>
        <tbody>
            <tr><td>Employee ID</td><td><%= eb.getId() %></td></tr>
            <tr><td>Employee Name</td><td><%= eb.getName() %></td></tr>
            <tr><td>Department</td><td><%= eb.getDept() %></td></tr>
            <tr><td>Designation</td><td><%= eb.getDesg() %></td></tr>
            <tr><td>Salary</td><td><%= eb.getSal() %></td></tr>
            <tr><td>Email</td><td><%= eb.getEmail() %></td></tr>
            <tr><td>Phone</td><td><%= eb.getPhone() %></td></tr>
        </tbody>
    </table>

    <% 
        } else {
    %>
        <div class="alert alert-warning">No employee data available.</div>
    <% 
        } 
    %>
</div>

</body>
</html>
