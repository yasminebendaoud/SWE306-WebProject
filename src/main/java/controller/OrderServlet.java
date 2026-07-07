package controller;

import dao.OrderDAO;
import model.Order;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;

@WebServlet("/order")
public class OrderServlet extends HttpServlet {

    private OrderDAO orderDAO = new OrderDAO();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int userId = Integer.parseInt(request.getParameter("userId"));
        double totalPrice = Double.parseDouble(request.getParameter("totalPrice"));

        Order order = new Order();

        order.setUserId(userId);
        order.setTotalPrice(totalPrice);
        order.setStatus("Pending");

        boolean success = orderDAO.addOrder(order);

        if (success) {
            response.sendRedirect("orderSuccess.jsp");
        } else {
            response.sendRedirect("order.jsp");
        }

    }

}