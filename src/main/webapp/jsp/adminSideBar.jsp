<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String activePage = (String) request.getAttribute("activePage");
    if (activePage == null) {
        activePage = "";
    }
%>

<aside class="sidebar">

    <div class="sidebar-logo">
        <h2>Luna e Vino</h2>
        <p>Admin Panel</p>
    </div>

    <nav class="sidebar-nav">

        <a href="<%= request.getContextPath() %>/jsp/dashboard.jsp"
           class="<%= "dashboard".equals(activePage) ? "active" : "" %>">
            <ion-icon name="grid-outline"></ion-icon>
            Dashboard
        </a>

        <a href="<%= request.getContextPath() %>/AdminFoodServlet"
           class="<%= "menu".equals(activePage) ? "active" : "" %>">
            <ion-icon name="restaurant-outline"></ion-icon>
            Manage Menu
        </a>

        <a href="<%= request.getContextPath() %>/AdminOrderServlet"
           class="<%= "orders".equals(activePage) ? "active" : "" %>">
            <ion-icon name="receipt-outline"></ion-icon>
            Customer Orders
        </a>

        <a href="<%= request.getContextPath() %>/jsp/index.jsp">
            <ion-icon name="home-outline"></ion-icon>
            Home
        </a>

        <a href="<%= request.getContextPath() %>/LogoutServlet">
            <ion-icon name="log-out-outline"></ion-icon>
            Logout
        </a>

    </nav>

</aside>