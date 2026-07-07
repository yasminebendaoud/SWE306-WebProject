package dao;

import model.Order;
import util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class OrderDAO {

    private static final String INSERT_ORDER =
            "INSERT INTO orders (user_id, total_price, status) VALUES (?, ?, ?)";

    public boolean addOrder(Order order) {

        try (
            Connection connection = DBConnection.getConnection();
            PreparedStatement statement = connection.prepareStatement(INSERT_ORDER);
        ) {

            statement.setInt(1, order.getUserId());
            statement.setDouble(2, order.getTotalPrice());
            statement.setString(3, order.getStatus());

            int rows = statement.executeUpdate();

            return rows > 0;

        } catch (SQLException e) {

            e.printStackTrace();
            return false;

        }

    }

}