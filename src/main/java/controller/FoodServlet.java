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
        String action = request.getParameter("action");
                if ("delete".equals(action)) {
                    int menuId = Integer.parseInt(request.getParameter("id"));
                    foodDAO.deleteFood(menuId);
                        response.sendRedirect("food");
                         return;
                    }
        List<Food> foodList = foodDAO.getAllFood();

        request.setAttribute("foodList", foodList);

        request.getRequestDispatcher("jsp/food.jsp").forward(request, response);
    }
@Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

    Food food = new Food();

    String menuId = request.getParameter("menuId");

    if (menuId != null && !menuId.isEmpty()) {
        food.setMenuId(Integer.parseInt(menuId));
    }

    food.setFoodName(request.getParameter("foodName"));
    food.setDescription(request.getParameter("description"));
    food.setIngredients(request.getParameter("ingredients"));
    food.setNutritionInfo("");
    food.setPrice(Double.parseDouble(request.getParameter("price")));
    food.setImage(request.getParameter("image"));
    food.setRating(0.0);
    food.setCategoryId(Integer.parseInt(request.getParameter("categoryId")));

    boolean success;

    if (food.getMenuId() == 0) {

        success = foodDAO.addFood(food);

    } else {

        success = foodDAO.updateFood(food);

    }

    response.sendRedirect("food");
}
}