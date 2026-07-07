<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Order Confirmation</title>
</head>
<body>

<h1>Order Confirmed</h1>

<p>Your order has been placed successfully.</p>

<p>
    Order ID:
    <strong><%= request.getParameter("orderId") %></strong>
</p>

<a href="<%= request.getContextPath() %>/jsp/index.jsp">Back to Home</a>

</body>
</html>