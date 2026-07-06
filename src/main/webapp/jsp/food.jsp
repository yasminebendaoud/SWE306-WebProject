<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="model.Food"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Food Management</title>

<link rel="stylesheet" href="../css/admin.css">

</head>

<body>

<div class="admin-layout">

    <jsp:include page="adminSideBar.jsp" />

    <main class="main-content">

        <div class="page-header">

            <div>

                <h1>Food Management</h1>

                <p>Manage all food items available in the restaurant.</p>

            </div>

            <button class="add-food-btn" id="openModal">

                <ion-icon name="add-outline"></ion-icon>

                Add New Food

            </button>

        </div>

        <section class="food-table-container">

            <div class="table-top">

                <input
                    type="text"
                    placeholder="Search food..."
                    class="search-box">

                <select class="category-filter">

                    <option>All Categories</option>
                    <option>Starters &amp; Salads</option>
                    <option>Pasta &amp; Risotto</option>
                    <option>Main Courses</option>
                    <option>Wood-fired Pizza</option>
                    <option>Desserts</option>
                    <option>Drinks</option>

                </select>

            </div>

            <table>

                <thead>

                    <tr>

                        <th>Image</th>
                        <th>Food Name</th>
                        <th>Category</th>
                        <th>Price</th>
                        <th>Action</th>

                    </tr>

                </thead>

                <tbody>

<%

List<Food> foodList = (List<Food>) request.getAttribute("foodList");

if(foodList != null){

    for(Food food : foodList){

%>

<tr>

    <td>

        <img src="<%= food.getImage() %>" class="food-image">

    </td>

    <td>

        <%= food.getFoodName() %>

    </td>

    <td>

<%

switch(food.getCategoryId()){

case 1:

    out.print("Starters & Salads");

    break;

case 2:

    out.print("Pasta & Risotto");

    break;

case 3:

    out.print("Main Courses");

    break;

case 4:

    out.print("Wood-fired Pizza");

    break;

case 5:

    out.print("Desserts");

    break;

case 6:

    out.print("Drinks");

    break;

}

%>

    </td>

    <td>

        RM <%= food.getPrice() %>

    </td>

    <td>

        <a href="#" class="action-btn edit-btn">

            Edit

        </a>

        <a href="#" class="action-btn delete-btn">

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
<div class="modal" id="foodModal">

    <div class="modal-content">

        <span class="close-modal">&times;</span>

        <h2>Add New Food</h2>

        <form action="<%= request.getContextPath() %>/food" method="post">

            <label>Food Name</label>

            <input
                type="text"
                name="foodName"
                required>

            <label>Description</label>

            <textarea
                rows="3"
                name="description"></textarea>

            <label>Ingredients</label>

            <textarea
                rows="3"
                name="ingredients"></textarea>

            <label>Category</label>

            <select name="categoryId">

                <option value="1">Starters &amp; Salads</option>
                <option value="2">Pasta &amp; Risotto</option>
                <option value="3">Main Courses</option>
                <option value="4">Wood-fired Pizza</option>
                <option value="5">Desserts</option>
                <option value="6">Drinks</option>

            </select>

            <label>Price (RM)</label>

            <input
                type="number"
                step="0.01"
                name="price"
                required>

            <label>Image URL</label>

            <input
                type="text"
                name="image"
                placeholder="images/pizza.jpg">

            <button
                type="submit"
                class="save-btn">

                Save Food

            </button>

        </form>

    </div>

</div>

<script type="module"
src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.esm.js">
</script>

<script nomodule
src="https://unpkg.com/ionicons@8.0.13/dist/ionicons/ionicons.js">
</script>

<script>

const modal = document.getElementById("foodModal");

const openBtn = document.getElementById("openModal");

const closeBtn = document.querySelector(".close-modal");

openBtn.addEventListener("click", function(){

    modal.style.display = "flex";

});

closeBtn.addEventListener("click", function(){

    modal.style.display = "none";

});

window.addEventListener("click", function(event){

    if(event.target === modal){

        modal.style.display = "none";

    }

});

</script>

</body>

</html>