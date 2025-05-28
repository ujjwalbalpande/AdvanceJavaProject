<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Employee Detail</title>
  <!-- Bootstrap CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

<div class="container mt-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card shadow">
        <div class="card-header bg-primary text-white">
          <h4 class="mb-0">Employee Details</h4>
        </div>
        <div class="card-body">
          <%
            String id = request.getParameter("eid");
            String ename = request.getParameter("ename");
            String address = request.getParameter("add");
            String salary = request.getParameter("salary");
            String gender = request.getParameter("gender");
            String profile = request.getParameter("profile");
            String hobbies[] = request.getParameterValues("hobbies");
          %>
          <ul class="list-group list-group-flush">
            <li class="list-group-item"><strong>Employee Id:</strong> <%= id %></li>
            <li class="list-group-item"><strong>Employee Name:</strong> <%= ename %></li>
            <li class="list-group-item"><strong>Employee Address:</strong> <%= address %></li>
            <li class="list-group-item"><strong>Employee Salary:</strong> <%= salary %></li>
            <li class="list-group-item"><strong>Employee Gender:</strong> <%= gender %></li>
            <li class="list-group-item"><strong>Employee Profile:</strong> <%= profile %></li>
            <li class="list-group-item"><strong>Employee Hobbies:</strong>
              <ul>
                <%
                  if (hobbies != null) {
                    for (String hobby : hobbies) {
                %>
                      <li><%= hobby %></li>
                <%
                    }
                  } else {
                %>
                    <li>None selected</li>
                <%
                  }
                %>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap JS Bundle (optional) -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
