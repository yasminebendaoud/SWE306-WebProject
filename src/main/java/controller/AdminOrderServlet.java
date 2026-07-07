package controller;

import java.io.IOException;
import java.util.List;

import dao.OrderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Order;

@WebServlet("/AdminOrderServlet")
public class AdminOrderServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private OrderDAO orderDAO;

    @Override
    public void init() throws ServletException {
        orderDAO = new OrderDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Order> orders = orderDAO.getAllOrders();

        request.setAttribute("orders", orders);
        request.getRequestDispatcher("/jsp/admin-orders.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");

        if (action != null && action.equals("updateStatus")) {
            int orderId = Integer.parseInt(request.getParameter("order_id"));
            String status = request.getParameter("status");

            orderDAO.updateOrderStatus(orderId, status);
        }

        response.sendRedirect(request.getContextPath() + "/AdminOrderServlet");
    }
}