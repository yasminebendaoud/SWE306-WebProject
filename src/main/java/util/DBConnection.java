package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/food_ordering_db?useSSL=false&serverTimezone=UTC";
    private static final String USER = "root";
    private static final String PASSWORD = "root123";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);

        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC Driver not found. Check mysql-connector-j in WEB-INF/lib or Build Path.", e);
        }
    }

    public static void main(String[] args) {
        try {
            Connection connection = getConnection();

            if (connection != null) {
                System.out.println("Database connected successfully!");
                connection.close();
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}