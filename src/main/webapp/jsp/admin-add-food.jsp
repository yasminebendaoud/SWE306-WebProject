<%@ page import="java.util.List" %>
<%@ page import="model.Category" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setAttribute("activePage", "menu");
List<Category> categories = (List<Category>) request.getAttribute("categories");
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Add Food Item</title>

<link rel="stylesheet" href="<%= request.getContextPath() %>/css/admin.css">

<style>
.admin-form {
    background: #ffffff;
    padding: 25px;
    border-radius: 8px;
    max-width: 800px;
}

.form-group {
    margin-bottom: 18px;
}

.form-group label {
    display: block;
    margin-bottom: 6px;
    font-weight: 600;
    font-family: sans-serif;
}

.form-group input,
.form-group textarea,
.form-group select {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-family: sans-serif;
}

.form-actions {
    margin-top: 20px;
}
</style>

</head>

<body>

<div class="admin-layout">

    <jsp:include page="adminSideBar.jsp" />

    <main class="main-content">

        <h1>Add New Food Item</h1>

        <form action="<%= request.getContextPath() %>/AdminFoodServlet" method="post" class="admin-form">

            <input type="hidden" name="action" value="add">

            <div class="form-group">
                <label>Food Name</label>
                <input type="text" name="food_name" required>
            </div>

            <div class="form-group">
                <label>Description</label>
                <textarea name="description" rows="3" required></textarea>
            </div>

            <div class="form-group">
                <label>Ingredients</label>
                <textarea name="ingredients" rows="2" required></textarea>
            </div>

            <div class="form-group">
                <label>Nutrition Info</label>
                <input type="text" name="nutrition_info" placeholder="Calories: 500 kcal">
            </div>

            <div class="form-group">
                <label>Price RM</label>
                <input type="number" name="price" step="0.01" min="0" required>
            </div>

            <div class="form-group">
                <label>Image URL</label>
                <input type="text" name="image">
            </div>

            <div class="form-group">
                <label>Rating</label>
                <input type="number" name="rating" step="0.1" min="0" max="5" value="4.5">
            </div>

            <div class="form-group">
                <label>Category</label>
                <select name="category_id" required>
                    <%
                        if (categories != null) {
                            for (Category category : categories) {
                    %>
                        <option value="<%= category.getCategoryId() %>">
                            <%= category.getCategoryName() %>
                        </option>
                    <%
                            }
                        }
                    %>
                </select>
            </div>

            <div class="form-actions">
                <button type="submit" class="action-btn">Add Food</button>

                <a href="<%= request.getContextPath() %>/AdminFoodServlet" class="action-btn">
                    Cancel
                </a>
            </div>

        </form>

    </main>

</div>

<script type="module" src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.js"></script>

</body>

</html>