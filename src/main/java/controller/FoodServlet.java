package controller;

import dao.FoodDAO;
import model.Food;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/food")
public class FoodServlet extends HttpServlet {

    private FoodDAO foodDAO = new FoodDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Food> foodList = foodDAO.getAllFood();

        request.setAttribute("foodList", foodList);

        request.getRequestDispatcher("jsp/food.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Food food = new Food();

        food.setFoodName(request.getParameter("foodName"));
        food.setDescription(request.getParameter("description"));
        food.setIngredients(request.getParameter("ingredients"));
        food.setNutritionInfo("");
        food.setPrice(Double.parseDouble(request.getParameter("price")));
        food.setImage(request.getParameter("image"));
        food.setRating(0.0);
        food.setCategoryId(Integer.parseInt(request.getParameter("categoryId")));

        boolean success = foodDAO.addFood(food);

        if (success) {
            response.sendRedirect("food");
        } else {
            response.sendRedirect("jsp/food.jsp");
        }
    }
}