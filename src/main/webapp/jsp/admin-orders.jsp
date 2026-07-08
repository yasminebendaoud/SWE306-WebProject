<%@ page import="java.util.List" %>
<%@ page import="model.Order" %>
<%@ page import="model.OrderItem" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setAttribute("activePage", "orders");
List<Order> orders = (List<Order>) request.getAttribute("orders");
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Customer Orders</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/admin.css">

</head>

<body>

<div class="admin-layout">

    <jsp:include page="adminSideBar.jsp" />

    <main class="main-content">

        <div class="page-header">
            <div>
                <h1>Customer Orders</h1>
                <p>View customer orders, ordered items, total prices, and update order status.</p>
            </div>

            <a href="<%= request.getContextPath() %>/jsp/dashboard.jsp" class="action-btn">
                Back to Dashboard
            </a>
        </div>

        <section class="recent-orders">

            <div class="table-header">
                <h2>All Orders</h2>

                <a href="<%= request.getContextPath() %>/AdminFoodServlet" class="view-all">
                    Manage Menu
                </a>
            </div>

            <table>

                <thead>
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Contact</th>
                        <th>Items</th>
                        <th>Total</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Update</th>
                    </tr>
                </thead>

                <tbody>

                <%
                    if (orders == null || orders.isEmpty()) {
                %>

                    <tr>
                        <td colspan="8">No customer orders found.</td>
                    </tr>

                <%
                    } else {
                        for (Order order : orders) {
                %>

                    <tr>
                        <td>#<%= order.getOrderId() %></td>

                        <td>
                            <strong><%= order.getUsername() %></strong>
                        </td>

                        <td>
                            <%= order.getEmail() %><br>
                            <small><%= order.getPhoneNumber() %></small>
                        </td>

                        <td>
                            <%
                                if (order.getItems() != null) {
                                    for (OrderItem item : order.getItems()) {
                            %>
                                        <div>
                                            <%= item.getFoodName() %> × <%= item.getQuantity() %>
                                        </div>
                            <%
                                    }
                                }
                            %>
                        </td>

                        <td>
                            <strong>RM <%= String.format("%.2f", order.getTotalPrice()) %></strong>
                        </td>

                        <td>
                            <%= order.getOrderDate() %>
                        </td>

                        <td>
                            <span class="status <%= order.getStatus().toLowerCase() %>">
                                <%= order.getStatus() %>
                            </span>
                        </td>

                        <td>
                            <form action="<%= request.getContextPath() %>/AdminOrderServlet" method="post">

                                <input type="hidden" name="action" value="updateStatus">
                                <input type="hidden" name="order_id" value="<%= order.getOrderId() %>">

                                <select name="status" class="status-select">
                                    <option value="Pending" <%= "Pending".equals(order.getStatus()) ? "selected" : "" %>>
                                        Pending
                                    </option>

                                    <option value="Preparing" <%= "Preparing".equals(order.getStatus()) ? "selected" : "" %>>
                                        Preparing
                                    </option>

                                    <option value="Completed" <%= "Completed".equals(order.getStatus()) ? "selected" : "" %>>
                                        Completed
                                    </option>

                                    <option value="Cancelled" <%= "Cancelled".equals(order.getStatus()) ? "selected" : "" %>>
                                        Cancelled
                                    </option>
                                </select>

                                <button type="submit" class="action-btn">
                                    Save
                                </button>

                            </form>
                        </td>
                    </tr>

                <%
                        }
                    }
                %>

                </tbody>

            </table>

        </section>

    </main>

</div>

<script type="module" src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.js"></script>

</body>

</html>