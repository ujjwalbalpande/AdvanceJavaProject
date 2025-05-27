<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pizza Order Ready....</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #fdf6e3;
        color: #333;
        padding: 30px;
    }
    .order-box {
        background: #fff3cd;
        border: 2px solid #ffeeba;
        padding: 20px;
        border-radius: 10px;
        max-width: 600px;
        margin: auto;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }
    .order-box h2 {
        color: #856404;
    }
</style>
</head>
<body>
<div class="order-box">
    <h2>Pizza Order Details</h2>
<%
    String name = request.getParameter("pname");
    String crust = request.getParameter("crust");  // corrected field
    String topping[] = request.getParameterValues("topping");
    String appitizer = request.getParameter("appetizer");
    String address = request.getParameter("address");
    String credit = request.getParameter("card");
    String card1 = request.getParameter("cc");
    String card2 = request.getParameter("cv");

    out.println("<p><strong>Pizza Name:</strong> " + name + "</p>");
    out.println("<p><strong>Pizza Crust:</strong> " + crust + "</p>");
    out.println("<p><strong>Pizza Toppings:</strong></p><ul>");
    if (topping != null) {
        for (String top : topping) {
            out.println("<li>" + top + "</li>");
        }
    } else {
        out.println("<li>No Toppings Selected</li>");
    }
    out.println("</ul>");
    out.println("<p><strong>Appetizer:</strong> " + appitizer + "</p>");
    out.println("<p><strong>Address:</strong> " + address + "</p>");
    out.println("<p><strong>Credit Card Type:</strong> " + credit + "</p>");
    out.println("<p><strong>Card Number:</strong> " + card1 + "</p>");
    out.println("<p><strong>Repeat Card Number:</strong> " + card2 + "</p>");
%>
</div>
</body>
</html>
