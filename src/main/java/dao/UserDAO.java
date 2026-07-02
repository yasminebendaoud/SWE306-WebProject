package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.User;
import util.DBConnection;

public class UserDAO {

    public boolean registerUser(User user) {

    	String sql = "INSERT INTO users (username, email, password, role) VALUES (?, ?, ?, ?)";

        try {

            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, user.getUsername());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getPassword());
            statement.setString(4, user.getRole());

            int rowsInserted = statement.executeUpdate();
            
            statement.close();
            connection.close();

            return rowsInserted > 0;

        } catch (Exception e) {

            e.printStackTrace();

            return false;

        }
    }
    
    public boolean emailExists(String email) {

        String sql = "SELECT * FROM users WHERE email = ?";

        try {

            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, email);

            ResultSet resultSet = statement.executeQuery();

            boolean exists = resultSet.next();
            
            resultSet.close();
            statement.close();
            connection.close();

            return exists;

        } catch (Exception e) {

            e.printStackTrace();

            return false;

        }

    }

}