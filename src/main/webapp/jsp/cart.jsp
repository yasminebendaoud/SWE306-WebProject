<%@ page import="java.util.Map" %>
<%@ page import="model.OrderItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Map<Integer, OrderItem> cart = (Map<Integer, OrderItem>) session.getAttribute("cart");
    double total = 0;
%>

<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css/style.css">
</head>
<body>

<h1>Your Cart</h1>

<%
    String error = request.getParameter("error");

    if ("empty".equals(error)) {
%>
        <p style="color:red;">Your cart is empty.</p>
<%
    } else if ("failed".equals(error)) {
%>
        <p style="color:red;">Order failed. Please try again.</p>
<%
    }
%>

<%
    if (cart == null || cart.isEmpty()) {
%>
        <p>No items in cart.</p>
        <a href="<%= request.getContextPath() %>/jsp/index.jsp">Back to Home</a>
<%
    } else {
%>

<table border="1" cellpadding="10" cellspacing="0">
    <tr>
        <th>Food</th>
        <th>Price</th>
        <th>Quantity</th>
        <th>Subtotal</th>
        <th>Action</th>
    </tr>

<%
        for (OrderItem item : cart.values()) {
            double subtotal = item.getPrice() * item.getQuantity();
            total += subtotal;
%>
    <tr>
        <td><%= item.getFoodName() %></td>
        <td>RM <%= String.format("%.2f", item.getPrice()) %></td>
        <td><%= item.getQuantity() %></td>
        <td>RM <%= String.format("%.2f", subtotal) %></td>
        <td>
            <a href="<%= request.getContextPath() %>/OrderServlet?action=remove&menu_id=<%= item.getMenuId() %>">
                Remove
            </a>
        </td>
    </tr>
<%
        }
%>
    <tr>
        <td colspan="3"><strong>Total</strong></td>
        <td colspan="2"><strong>RM <%= String.format("%.2f", total) %></strong></td>
    </tr>
</table>

<br>

<form action="<%= request.getContextPath() %>/OrderServlet" method="post">
    <input type="hidden" name="action" value="placeOrder">
    <button type="submit">Place Order</button>
</form>

<br>

<a href="<%= request.getContextPath() %>/OrderServlet?action=clear">Clear Cart</a>
<br>
<a href="<%= request.getContextPath() %>/jsp/index.jsp">Continue Shopping</a>

<%
    }
%>

</body>
</html>