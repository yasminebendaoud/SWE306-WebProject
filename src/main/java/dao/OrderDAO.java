package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import model.Order;
import model.OrderItem;
import util.DBConnection;

public class OrderDAO {

    public OrderItem getMenuItemById(int menuId) {
        OrderItem item = null;

        String sql = "SELECT menu_id, food_name, price FROM menu WHERE menu_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, menuId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                item = new OrderItem();
                item.setMenuId(rs.getInt("menu_id"));
                item.setFoodName(rs.getString("food_name"));
                item.setPrice(rs.getDouble("price"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return item;
    }

    public int createOrder(int userId, List<OrderItem> items) {
        int orderId = -1;
        double totalPrice = calculateTotal(items);

        String orderSql = "INSERT INTO orders (user_id, total_price, status) VALUES (?, ?, ?)";
        String itemSql = "INSERT INTO order_items (order_id, menu_id, quantity, price) VALUES (?, ?, ?, ?)";

        Connection conn = null;

        try {
            conn = DBConnection.getConnection();
            conn.setAutoCommit(false);

            PreparedStatement orderPs = conn.prepareStatement(orderSql, Statement.RETURN_GENERATED_KEYS);
            orderPs.setInt(1, userId);
            orderPs.setDouble(2, totalPrice);
            orderPs.setString(3, "Pending");
            orderPs.executeUpdate();

            ResultSet keys = orderPs.getGeneratedKeys();

            if (keys.next()) {
                orderId = keys.getInt(1);
            }

            PreparedStatement itemPs = conn.prepareStatement(itemSql);

            for (OrderItem item : items) {
                itemPs.setInt(1, orderId);
                itemPs.setInt(2, item.getMenuId());
                itemPs.setInt(3, item.getQuantity());
                itemPs.setDouble(4, item.getPrice());
                itemPs.addBatch();
            }

            itemPs.executeBatch();
            conn.commit();

        } catch (Exception e) {
            e.printStackTrace();

            try {
                if (conn != null) {
                    conn.rollback();
                }
            } catch (Exception rollbackError) {
                rollbackError.printStackTrace();
            }

            orderId = -1;

        } finally {
            try {
                if (conn != null) {
                    conn.setAutoCommit(true);
                    conn.close();
                }
            } catch (Exception closeError) {
                closeError.printStackTrace();
            }
        }

        return orderId;
    }

    public List<Order> getAllOrders() {
        List<Order> orders = new ArrayList<Order>();

        String sql = "SELECT o.order_id, o.user_id, u.username, u.email, u.phone_number, " +
                     "o.order_date, o.total_price, o.status " +
                     "FROM orders o " +
                     "JOIN users u ON o.user_id = u.user_id " +
                     "ORDER BY o.order_date DESC";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order order = new Order();
                order.setOrderId(rs.getInt("order_id"));
                order.setUserId(rs.getInt("user_id"));
                order.setUsername(rs.getString("username"));
                order.setEmail(rs.getString("email"));
                order.setPhoneNumber(rs.getString("phone_number"));
                order.setOrderDate(rs.getTimestamp("order_date"));
                order.setTotalPrice(rs.getDouble("total_price"));
                order.setStatus(rs.getString("status"));
                order.setItems(getOrderItemsByOrderId(order.getOrderId()));

                orders.add(order);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }

    public List<OrderItem> getOrderItemsByOrderId(int orderId) {
        List<OrderItem> items = new ArrayList<OrderItem>();

        String sql = "SELECT oi.order_item_id, oi.order_id, oi.menu_id, oi.quantity, oi.price, m.food_name " +
                     "FROM order_items oi " +
                     "JOIN menu m ON oi.menu_id = m.menu_id " +
                     "WHERE oi.order_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, orderId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                OrderItem item = new OrderItem();
                item.setOrderItemId(rs.getInt("order_item_id"));
                item.setOrderId(rs.getInt("order_id"));
                item.setMenuId(rs.getInt("menu_id"));
                item.setFoodName(rs.getString("food_name"));
                item.setQuantity(rs.getInt("quantity"));
                item.setPrice(rs.getDouble("price"));

                items.add(item);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return items;
    }

    public boolean updateOrderStatus(int orderId, String status) {
        String sql = "UPDATE orders SET status = ? WHERE order_id = ?";

        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, status);
            ps.setInt(2, orderId);

            return ps.executeUpdate() > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }

    private double calculateTotal(List<OrderItem> items) {
        double total = 0;

        for (OrderItem item : items) {
            total += item.getPrice() * item.getQuantity();
        }

        return total;
    }
}