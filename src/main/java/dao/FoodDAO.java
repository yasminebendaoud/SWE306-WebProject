package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Category;
import model.Food;
import util.DBConnection;

public class FoodDAO {

    public List<Food> getAllFood() {
        List<Food> foodList = new ArrayList<Food>();

        String sql = "SELECT m.menu_id, m.food_name, m.description, m.ingredients, " +
                     "m.nutrition_info, m.price, m.image, m.rating, m.category_id, " +
                     "c.category_name " +
                     "FROM menu m " +
                     "LEFT JOIN categories c ON m.category_id = c.category_id " +
                     "ORDER BY m.menu_id ASC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Food food = new Food();

                food.setMenuId(rs.getInt("menu_id"));
                food.setFoodName(rs.getString("food_name"));
                food.setDescription(rs.getString("description"));
                food.setIngredients(rs.getString("ingredients"));
                food.setNutritionInfo(rs.getString("nutrition_info"));
                food.setPrice(rs.getDouble("price"));
                food.setImage(rs.getString("image"));
                food.setRating(rs.getDouble("rating"));
                food.setCategoryId(rs.getInt("category_id"));
                food.setCategoryName(rs.getString("category_name"));

                foodList.add(food);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return foodList;
    }

    public Food getFoodById(int menuId) {
        Food food = null;

        String sql = "SELECT m.menu_id, m.food_name, m.description, m.ingredients, " +
                     "m.nutrition_info, m.price, m.image, m.rating, m.category_id, " +
                     "c.category_name " +
                     "FROM menu m " +
                     "LEFT JOIN categories c ON m.category_id = c.category_id " +
                     "WHERE m.menu_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, menuId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                food = new Food();

                food.setMenuId(rs.getInt("menu_id"));
                food.setFoodName(rs.getString("food_name"));
                food.setDescription(rs.getString("description"));
                food.setIngredients(rs.getString("ingredients"));
                food.setNutritionInfo(rs.getString("nutrition_info"));
                food.setPrice(rs.getDouble("price"));
                food.setImage(rs.getString("image"));
                food.setRating(rs.getDouble("rating"));
                food.setCategoryId(rs.getInt("category_id"));
                food.setCategoryName(rs.getString("category_name"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return food;
    }

    public boolean addFood(Food food) {
        String sql = "INSERT INTO menu (food_name, description, ingredients, nutrition_info, " +
                     "price, image, rating, category_id) " +
                     "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, food.getFoodName());
            ps.setString(2, food.getDescription());
            ps.setString(3, food.getIngredients());
            ps.setString(4, food.getNutritionInfo());
            ps.setDouble(5, food.getPrice());
            ps.setString(6, food.getImage());
            ps.setDouble(7, food.getRating());
            ps.setInt(8, food.getCategoryId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean updateFood(Food food) {
        String sql = "UPDATE menu SET food_name = ?, description = ?, ingredients = ?, " +
                     "nutrition_info = ?, price = ?, image = ?, rating = ?, category_id = ? " +
                     "WHERE menu_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, food.getFoodName());
            ps.setString(2, food.getDescription());
            ps.setString(3, food.getIngredients());
            ps.setString(4, food.getNutritionInfo());
            ps.setDouble(5, food.getPrice());
            ps.setString(6, food.getImage());
            ps.setDouble(7, food.getRating());
            ps.setInt(8, food.getCategoryId());
            ps.setInt(9, food.getMenuId());

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public boolean deleteFood(int menuId) {
        String sql = "DELETE FROM menu WHERE menu_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, menuId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    public List<Category> getAllCategories() {
        List<Category> categories = new ArrayList<Category>();

        String sql = "SELECT category_id, category_name FROM categories ORDER BY category_id ASC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Category category = new Category();

                category.setCategoryId(rs.getInt("category_id"));
                category.setCategoryName(rs.getString("category_name"));

                categories.add(category);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return categories;
    }
}