<%@ page import="java.util.List" %>
<%@ page import="model.Category" %>
<%@ page import="model.Food" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
request.setAttribute("activePage", "menu");
Food food = (Food) request.getAttribute("food");
List<Category> categories = (List<Category>) request.getAttribute("categories");
%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Edit Food Item</title>

<link rel="stylesheet" href="../css/admin.css">

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

        <h1>Edit Food Item</h1>

        <%
            if (food == null) {
        %>
            <p>Food item not found.</p>

            <a href="<%= request.getContextPath() %>/AdminFoodServlet" class="action-btn">
                Back to Menu
            </a>
        <%
            } else {
        %>

        <form action="<%= request.getContextPath() %>/AdminFoodServlet" method="post" class="admin-form">

            <input type="hidden" name="action" value="update">
            <input type="hidden" name="menu_id" value="<%= food.getMenuId() %>">

            <div class="form-group">
                <label>Food Name</label>
                <input type="text" name="food_name" value="<%= food.getFoodName() %>" required>
            </div>

            <div class="form-group">
                <label>Description</label>
                <textarea name="description" rows="3" required><%= food.getDescription() %></textarea>
            </div>

            <div class="form-group">
                <label>Ingredients</label>
                <textarea name="ingredients" rows="2" required><%= food.getIngredients() %></textarea>
            </div>

            <div class="form-group">
                <label>Nutrition Info</label>
                <input type="text" name="nutrition_info" value="<%= food.getNutritionInfo() %>">
            </div>

            <div class="form-group">
                <label>Price RM</label>
                <input type="number" name="price" step="0.01" min="0" value="<%= food.getPrice() %>" required>
            </div>

            <div class="form-group">
                <label>Image URL</label>
                <input type="text" name="image" value="<%= food.getImage() %>">
            </div>

            <div class="form-group">
                <label>Rating</label>
                <input type="number" name="rating" step="0.1" min="0" max="5" value="<%= food.getRating() %>">
            </div>

            <div class="form-group">
                <label>Category</label>

                <select name="category_id" required>
                    <%
                        if (categories != null) {
                            for (Category category : categories) {
                                String selected = "";

                                if (category.getCategoryId() == food.getCategoryId()) {
                                    selected = "selected";
                                }
                    %>
                        <option value="<%= category.getCategoryId() %>" <%= selected %>>
                            <%= category.getCategoryName() %>
                        </option>
                    <%
                            }
                        }
                    %>
                </select>
            </div>

            <div class="form-actions">
                <button type="submit" class="action-btn">Update Food</button>

                <a href="<%= request.getContextPath() %>/AdminFoodServlet" class="action-btn">
                    Cancel
                </a>
            </div>

        </form>

        <%
            }
        %>

    </main>

</div>

<script type="module" src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.js"></script>

</body>

</html>