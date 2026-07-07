package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.Food;
import util.DBConnection;

public class FoodDAO {

    public List<Food> getAllFood() {

        List<Food> foodList = new ArrayList<>();

        String sql = "SELECT * FROM menu";

        try (
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery()
        ) {
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

                 foodList.add(food);

}

        } catch (Exception e) {
            e.printStackTrace();
        }

        return foodList;
    }
    public boolean addFood(Food food) {

    String sql = "INSERT INTO menu (food_name, description, ingredients, nutrition_info, price, image, rating, category_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";

    try (
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql)
    ) {

        statement.setString(1, food.getFoodName());
        statement.setString(2, food.getDescription());
        statement.setString(3, food.getIngredients());
        statement.setString(4, food.getNutritionInfo());
        statement.setDouble(5, food.getPrice());
        statement.setString(6, food.getImage());
        statement.setDouble(7, food.getRating());
        statement.setInt(8, food.getCategoryId());

        int rows = statement.executeUpdate();

        return rows > 0;

    } catch (Exception e) {

        e.printStackTrace();
        return false;

    }
} 
public boolean updateFood(Food food) {

    String sql = "UPDATE menu SET food_name=?, description=?, ingredients=?, nutrition_info=?, price=?, image=?, rating=?, category_id=? WHERE menu_id=?";

    try (
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql)
    ) {

        statement.setString(1, food.getFoodName());
        statement.setString(2, food.getDescription());
        statement.setString(3, food.getIngredients());
        statement.setString(4, food.getNutritionInfo());
        statement.setDouble(5, food.getPrice());
        statement.setString(6, food.getImage());
        statement.setDouble(7, food.getRating());
        statement.setInt(8, food.getCategoryId());
        statement.setInt(9, food.getMenuId());

        int rows = statement.executeUpdate();

        return rows > 0;

    } catch (Exception e) {

        e.printStackTrace();
        return false;

    }

}
public boolean deleteFood(int menuId) {

    String sql = "DELETE FROM menu WHERE menu_id=?";

    try (
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = connection.prepareStatement(sql)
    ) {

        statement.setInt(1, menuId);

        int rows = statement.executeUpdate();

        return rows > 0;

    } catch (Exception e) {

        e.printStackTrace();
        return false;

    }

}
}