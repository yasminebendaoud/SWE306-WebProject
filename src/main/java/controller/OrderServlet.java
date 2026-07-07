package controller;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import dao.OrderDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.OrderItem;

@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private OrderDAO orderDAO;

    @Override
    public void init() throws ServletException {
        orderDAO = new OrderDAO();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");

        if (action == null) {
            action = "cart";
        }

        if (action.equals("cart")) {
            request.getRequestDispatcher("/jsp/cart.jsp").forward(request, response);
        } else if (action.equals("clear")) {
            HttpSession session = request.getSession();
            session.removeAttribute("cart");
            response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp");
        } else if (action.equals("remove")) {
            removeFromCart(request);
            response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp");
        } else {
            response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = request.getParameter("action");

        if (action == null) {
            action = "add";
        }

        if (action.equals("add")) {
            addToCart(request);
            response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp");

        } else if (action.equals("placeOrder")) {
            placeOrder(request, response);

        } else {
            response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp");
        }
    }

    private void addToCart(HttpServletRequest request) {
        int menuId = getIntParameter(request, "menu_id", "menuId", "food_id", "foodId");
        int quantity = getIntParameter(request, "quantity", "qty");

        if (quantity <= 0) {
            quantity = 1;
        }

        OrderItem menuItem = orderDAO.getMenuItemById(menuId);

        if (menuItem == null) {
            return;
        }

        HttpSession session = request.getSession();

        Map<Integer, OrderItem> cart = getCart(session);

        if (cart.containsKey(menuId)) {
            OrderItem existingItem = cart.get(menuId);
            existingItem.setQuantity(existingItem.getQuantity() + quantity);
        } else {
            OrderItem newItem = new OrderItem();
            newItem.setMenuId(menuItem.getMenuId());
            newItem.setFoodName(menuItem.getFoodName());
            newItem.setPrice(menuItem.getPrice());
            newItem.setQuantity(quantity);

            cart.put(menuId, newItem);
        }

        session.setAttribute("cart", cart);
    }

    private void removeFromCart(HttpServletRequest request) {
        int menuId = getIntParameter(request, "menu_id", "menuId", "food_id", "foodId");

        HttpSession session = request.getSession();
        Map<Integer, OrderItem> cart = getCart(session);

        cart.remove(menuId);

        session.setAttribute("cart", cart);
    }

    private void placeOrder(HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        
        HttpSession session = request.getSession();

        int userId = getLoggedInUserId(session);

        if (userId <= 0) {
            response.sendRedirect(request.getContextPath() + "/jsp/login.jsp");
            return;
        }

        Map<Integer, OrderItem> cart = getCart(session);

        if (cart.isEmpty()) {
            response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp?error=empty");
            return;
        }

        List<OrderItem> items = new ArrayList<OrderItem>(cart.values());

        int orderId = orderDAO.createOrder(userId, items);

        if (orderId > 0) {
            session.removeAttribute("cart");
            response.sendRedirect(request.getContextPath() + "/jsp/order-confirmation.jsp?orderId=" + orderId);
        } else {
            response.sendRedirect(request.getContextPath() + "/jsp/cart.jsp?error=failed");
        }
    }

    @SuppressWarnings("unchecked")
    private Map<Integer, OrderItem> getCart(HttpSession session) {
        Object cartObject = session.getAttribute("cart");

        if (cartObject instanceof Map<?, ?>) {
            return (Map<Integer, OrderItem>) cartObject;
        }

        return new LinkedHashMap<Integer, OrderItem>();
    }

    private int getIntParameter(HttpServletRequest request, String... names) {
        for (String name : names) {
            String value = request.getParameter(name);

            if (value != null && !value.trim().isEmpty()) {
                try {
                    return Integer.parseInt(value);
                } catch (NumberFormatException e) {
                    return 0;
                }
            }
        }

        return 0;
    }

    private int getLoggedInUserId(HttpSession session) {
        Object id1 = session.getAttribute("user_id");
        Object id2 = session.getAttribute("userId");
        Object userObject = session.getAttribute("user");

        if (id1 instanceof Integer) {
            return (Integer) id1;
        }

        if (id2 instanceof Integer) {
            return (Integer) id2;
        }

        if (id1 instanceof String) {
            try {
                return Integer.parseInt((String) id1);
            } catch (NumberFormatException e) {
                return 0;
            }
        }

        if (id2 instanceof String) {
            try {
                return Integer.parseInt((String) id2);
            } catch (NumberFormatException e) {
                return 0;
            }
        }

        if (userObject != null) {
            try {
                Method method = userObject.getClass().getMethod("getUserId");
                Object result = method.invoke(userObject);

                if (result instanceof Integer) {
                    return (Integer) result;
                }
            } catch (Exception e) {
                // Ignore and try another method name.
            }

            try {
                Method method = userObject.getClass().getMethod("getUser_id");
                Object result = method.invoke(userObject);

                if (result instanceof Integer) {
                    return (Integer) result;
                }
            } catch (Exception e) {
                // Ignore and return 0.
            }
        }

        return 0;
    }
}