<%@ page import="java.util.List" %>
<%@ page import="model.Order" %>
<%@ page import="model.OrderItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    List<Order> orders = (List<Order>) request.getAttribute("orders");
%>

<!DOCTYPE html>
<html>
<head>
<title>Admin Orders</title>
</head>
<body>

<h1>Customer Orders</h1>

<a href="<%= request.getContextPath() %>/jsp/index.jsp">Back to Home</a>

<br><br>

<%
    if (orders == null || orders.isEmpty()) {
%>
        <p>No orders found.</p>
<%
    } else {
%>

<table border="1" cellpadding="10" cellspacing="0">
    <tr>
        <th>Order ID</th>
        <th>Customer</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Items</th>
        <th>Total Price</th>
        <th>Date</th>
        <th>Status</th>
        <th>Update</th>
    </tr>

<%
        for (Order order : orders) {
%>
    <tr>
        <td><%= order.getOrderId() %></td>
        <td><%= order.getUsername() %></td>
        <td><%= order.getEmail() %></td>
        <td><%= order.getPhoneNumber() %></td>
        <td>
<%
            for (OrderItem item : order.getItems()) {
%>
                <%= item.getFoodName() %> x <%= item.getQuantity() %>
                <br>
<%
            }
%>
        </td>
        <td>RM <%= String.format("%.2f", order.getTotalPrice()) %></td>
        <td><%= order.getOrderDate() %></td>
        <td><%= order.getStatus() %></td>
        <td>
            <form action="<%= request.getContextPath() %>/AdminOrderServlet" method="post">
                <input type="hidden" name="action" value="updateStatus">
                <input type="hidden" name="order_id" value="<%= order.getOrderId() %>">

                <select name="status">
                    <option value="Pending">Pending</option>
                    <option value="Preparing">Preparing</option>
                    <option value="Completed">Completed</option>
                    <option value="Cancelled">Cancelled</option>
                </select>

                <button type="submit">Update</button>
            </form>
        </td>
    </tr>
<%
        }
%>

</table>

<%
    }
%>

</body>
</html>