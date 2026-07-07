<%@ page import="java.util.List" %>
<%@ page import="model.Food" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setAttribute("activePage", "menu");
List<Food> foodList = (List<Food>) request.getAttribute("foodList");
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Manage Menu</title>

<link rel="stylesheet" href="../css/admin.css">

<style>
.admin-image {
    width: 70px;
    height: 70px;
    object-fit: cover;
    border: 1px solid #ddd;
}

.admin-message {
    margin-bottom: 20px;
    padding: 12px;
    border-radius: 6px;
    font-family: sans-serif;
}

.success-message {
    background-color: #e8f7e8;
    color: #2c7a2c;
    border: 1px solid #9ed49e;
}

.error-message {
    background-color: #fde8e8;
    color: #9b1c1c;
    border: 1px solid #e4aaaa;
}
</style>

</head>

<body>

<div class="admin-layout">

    <jsp:include page="adminSideBar.jsp" />

    <main class="main-content">

        <div class="table-header">
            <h1>Manage Menu Items</h1>

            <a href="<%= request.getContextPath() %>/AdminFoodServlet?action=addForm" class="action-btn">
                Add New Food
            </a>
        </div>

        <%
            String success = request.getParameter("success");
            String error = request.getParameter("error");

            if ("added".equals(success)) {
        %>
                <div class="admin-message success-message">Food item added successfully.</div>
        <%
            } else if ("updated".equals(success)) {
        %>
                <div class="admin-message success-message">Food item updated successfully.</div>
        <%
            } else if ("deleted".equals(success)) {
        %>
                <div class="admin-message success-message">Food item deleted successfully.</div>
        <%
            } else if ("deleteFailed".equals(error)) {
        %>
                <div class="admin-message error-message">
                    Food item could not be deleted. It may already be used in customer orders.
                </div>
        <%
            }
        %>

        <section class="recent-orders">

            <table>

                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Image</th>
                        <th>Food Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Rating</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>

                <%
                    if (foodList == null || foodList.isEmpty()) {
                %>
                    <tr>
                        <td colspan="7">No food items found.</td>
                    </tr>
                <%
                    } else {
                        for (Food food : foodList) {
                %>
                    <tr>
                        <td><%= food.getMenuId() %></td>

                        <td>
                            <%
                                if (food.getImage() != null && !food.getImage().trim().isEmpty()) {
                            %>
                                <img src="<%= food.getImage() %>" alt="<%= food.getFoodName() %>" class="admin-image">
                            <%
                                } else {
                            %>
                                No image
                            <%
                                }
                            %>
                        </td>

                        <td><%= food.getFoodName() %></td>
                        <td><%= food.getCategoryName() %></td>
                        <td>RM <%= String.format("%.2f", food.getPrice()) %></td>
                        <td><%= String.format("%.1f", food.getRating()) %></td>

                        <td>
                            <a href="<%= request.getContextPath() %>/AdminFoodServlet?action=editForm&menu_id=<%= food.getMenuId() %>"
                               class="action-btn">
                                Edit
                            </a>

                            <a href="<%= request.getContextPath() %>/AdminFoodServlet?action=delete&menu_id=<%= food.getMenuId() %>"
                               class="action-btn"
                               onclick="return confirm('Are you sure you want to delete this food item?');">
                                Delete
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