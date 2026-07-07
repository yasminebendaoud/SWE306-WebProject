<%@ page import="java.util.List" %>
<%@ page import="model.DashboardStats" %>
<%@ page import="model.Order" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setAttribute("activePage", "dashboard");

DashboardStats stats = (DashboardStats) request.getAttribute("stats");
List<Order> recentOrders = (List<Order>) request.getAttribute("recentOrders");

if (stats == null) {
    stats = new DashboardStats();
}
%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Admin Dashboard</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/admin.css">

</head>

<body>

<div class="admin-layout">

    <jsp:include page="adminSideBar.jsp" />  

    <main class="main-content">

        <div class="page-header">
            <div>
                <h1>Dashboard</h1>
                <p>Overview of customer orders, revenue, and restaurant activity.</p>
            </div>

            <a href="<%= request.getContextPath() %>/AdminFoodServlet" class="action-btn">
                Manage Menu
            </a>
        </div>

        <section class="stats-container">

            <div class="stat-card">
                <h3>Today's Orders</h3>
                <p><%= stats.getTodaysOrders() %></p>
            </div>

            <div class="stat-card">
                <h3>Pending Orders</h3>
                <p><%= stats.getPendingOrders() %></p>
            </div>

            <div class="stat-card">
                <h3>Completed</h3>
                <p><%= stats.getCompletedOrders() %></p>
            </div>

            <div class="stat-card">
                <h3>Revenue Today</h3>
                <p>RM<%= String.format("%.2f", stats.getRevenueToday()) %></p>
            </div>

        </section>

        <section class="recent-orders">

            <div class="table-header">

                <h2>Recent Orders</h2>

                <a href="<%= request.getContextPath() %>/AdminOrderServlet" class="view-all">
                    View All
                </a>

            </div>

            <table>

                <thead>

                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Status</th>
                        <th>Total</th>
                        <th>Date</th>
                        <th>Action</th>
                    </tr>

                </thead>

                <tbody>

                <%
                    if (recentOrders == null || recentOrders.isEmpty()) {
                %>

                    <tr>
                        <td colspan="6">No recent orders found.</td>
                    </tr>

                <%
                    } else {
                        for (Order order : recentOrders) {
                            String statusClass = "pending";

                            if (order.getStatus() != null) {
                                statusClass = order.getStatus().toLowerCase();
                            }
                %>

                    <tr>
                        <td>#<%= order.getOrderId() %></td>

                        <td><%= order.getUsername() %></td>

                        <td>
                            <span class="status <%= statusClass %>">
                                <%= order.getStatus() %>
                            </span>
                        </td>

                        <td>RM<%= String.format("%.2f", order.getTotalPrice()) %></td>

                        <td><%= order.getOrderDate() %></td>

                        <td>
                            <a href="<%= request.getContextPath() %>/AdminOrderServlet" class="action-btn">
                                View
                            </a>
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