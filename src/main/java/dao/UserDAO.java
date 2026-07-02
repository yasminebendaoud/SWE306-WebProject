package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.User;
import util.DBConnection;

public class UserDAO {

    public boolean registerUser(User user) {

    	String sql = "INSERT INTO users (username, email, password, phone_number, role) VALUES (?, ?, ?, ?, ?)";
    	
        try {

            Connection connection = DBConnection.getConnection();

            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, user.getUsername());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getPassword());
            statement.setString(4, user.getPhoneNumber());
            statement.setString(5, user.getRole());

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


	public User loginUser(String login, String password) {
	
	    String sql = "SELECT * FROM users WHERE (username = ? OR email = ?) AND password = ?";
	
	    try {
	
	        Connection connection = DBConnection.getConnection();
	
	        PreparedStatement statement = connection.prepareStatement(sql);
	
	        statement.setString(1, login);
	        statement.setString(2, login);
	        statement.setString(3, password);
	
	        ResultSet resultSet = statement.executeQuery();
	
	        if (resultSet.next()) {
	
	            User user = new User();
	
	            user.setUserId(resultSet.getInt("user_id"));
	            user.setUsername(resultSet.getString("username"));
	            user.setEmail(resultSet.getString("email"));
	            user.setPassword(resultSet.getString("password"));
	            user.setPhoneNumber(resultSet.getString("phone_number"));
	            user.setRole(resultSet.getString("role"));
	
	            resultSet.close();
	            statement.close();
	            connection.close();
	
	            return user;
	
	        }
	
	        resultSet.close();
	        statement.close();
	        connection.close();
	
	    } catch (Exception e) {
	
	        e.printStackTrace();
	
	    }
	
	    return null;
	
	}

}