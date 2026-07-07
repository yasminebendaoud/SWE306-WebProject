package controller;

import java.io.IOException;
import java.util.List;

import dao.FoodDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Category;
import model.Food;

@WebServlet("/AdminFoodServlet")
public class AdminFoodServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    private FoodDAO foodDAO;

    @Override
    public void init() throws ServletException {
        foodDAO = new FoodDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");

        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "addForm":
                showAddForm(request, response);
                break;

            case "editForm":
                showEditForm(request, response);
                break;

            case "delete":
                deleteFood(request, response);
                break;

            default:
                listFood(request, response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");

        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "add":
                addFood(request, response);
                break;

            case "update":
                updateFood(request, response);
                break;

            default:
                response.sendRedirect(request.getContextPath() + "/AdminFoodServlet");
                break;
        }
    }

    private void listFood(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Food> foodList = foodDAO.getAllFood();

        request.setAttribute("foodList", foodList);
        request.getRequestDispatcher("/jsp/admin-menu.jsp").forward(request, response);
    }

    private void showAddForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Category> categories = foodDAO.getAllCategories();

        request.setAttribute("categories", categories);
        request.getRequestDispatcher("/jsp/admin-add-food.jsp").forward(request, response);
    }

    private void showEditForm(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        int menuId = parseInt(request.getParameter("menu_id"));

        Food food = foodDAO.getFoodById(menuId);
        List<Category> categories = foodDAO.getAllCategories();

        request.setAttribute("food", food);
        request.setAttribute("categories", categories);

        request.getRequestDispatcher("/jsp/admin-edit-food.jsp").forward(request, response);
    }

    private void addFood(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        
        Food food = buildFoodFromRequest(request);
        boolean success = foodDAO.addFood(food);

        if (success) {
            response.sendRedirect(request.getContextPath() + "/AdminFoodServlet?success=added");
        } else {
            response.sendRedirect(request.getContextPath() + "/AdminFoodServlet?action=addForm&error=addFailed");
        }
    }

    private void updateFood(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        
        Food food = buildFoodFromRequest(request);
        food.setMenuId(parseInt(request.getParameter("menu_id")));

        boolean success = foodDAO.updateFood(food);

        if (success) {
            response.sendRedirect(request.getContextPath() + "/AdminFoodServlet?success=updated");
        } else {
            response.sendRedirect(request.getContextPath() + "/AdminFoodServlet?action=editForm&menu_id="
                    + food.getMenuId() + "&error=updateFailed");
        }
    }

    private void deleteFood(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        
        int menuId = parseInt(request.getParameter("menu_id"));

        boolean success = foodDAO.deleteFood(menuId);

        if (success) {
            response.sendRedirect(request.getContextPath() + "/AdminFoodServlet?success=deleted");
        } else {
            response.sendRedirect(request.getContextPath() + "/AdminFoodServlet?error=deleteFailed");
        }
    }

    private Food buildFoodFromRequest(HttpServletRequest request) {
        Food food = new Food();

        food.setFoodName(request.getParameter("food_name"));
        food.setDescription(request.getParameter("description"));
        food.setIngredients(request.getParameter("ingredients"));
        food.setNutritionInfo(request.getParameter("nutrition_info"));
        food.setPrice(parseDouble(request.getParameter("price")));
        food.setImage(request.getParameter("image"));
        food.setRating(parseDouble(request.getParameter("rating")));
        food.setCategoryId(parseInt(request.getParameter("category_id")));

        return food;
    }

    private int parseInt(String value) {
        try {
            return Integer.parseInt(value);
        } catch (Exception e) {
            return 0;
        }
    }

    private double parseDouble(String value) {
        try {
            return Double.parseDouble(value);
        } catch (Exception e) {
            return 0.0;
        }
    }
}