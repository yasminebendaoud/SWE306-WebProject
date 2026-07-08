<%@ page import="java.util.Map" %>
<%@ page import="model.OrderItem" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    Map<Integer, OrderItem> cart = (Map<Integer, OrderItem>) session.getAttribute("cart");
    double total = 0;
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Your Cart | Luna e Vino</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <jsp:include page="header.jsp" />

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');

        body {
            background: #f5f5f5;
            color: #111;
            font-family: 'Montserrat', sans-serif;
        }

        .cart-page {
            min-height: 80vh;
            padding: 70px 8%;
        }

        .cart-header {
            text-align: center;
            margin-bottom: 55px;
        }

        .cart-header span {
            display: block;
            color: #b3002d;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 3px;
            text-transform: uppercase;
            margin-bottom: 12px;
        }

        .cart-header h1 {
            font-family: 'Playfair Display', serif;
            font-size: 64px;
            font-weight: 700;
            margin-bottom: 14px;
        }

        .cart-header p {
            color: #777;
            font-size: 15px;
            letter-spacing: 1px;
        }

        .cart-layout {
            display: grid;
            grid-template-columns: 2fr 0.9fr;
            gap: 35px;
            align-items: start;
        }

        .cart-card,
        .summary-card,
        .empty-cart {
            background: #fff;
            border-radius: 22px;
            box-shadow: 0 10px 25px rgba(0,0,0,.08);
        }

        .cart-card {
            padding: 35px;
            overflow-x: auto;
        }

        .cart-table {
            width: 100%;
            border-collapse: collapse;
            min-width: 700px;
        }

        .cart-table thead {
            background: #111;
        }

        .cart-table th {
            color: #fff;
            text-align: left;
            padding: 18px;
            font-size: 14px;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        .cart-table td {
            padding: 22px 18px;
            border-bottom: 1px solid #eeeeee;
            font-size: 15px;
            vertical-align: middle;
        }

        .cart-table tbody tr:hover {
            background: #fafafa;
        }

        .food-name {
            font-family: 'Playfair Display', serif;
            font-size: 24px;
            color: #111;
        }

        .price-text {
            font-weight: 600;
            color: #111;
        }

        .quantity-badge {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            width: 38px;
            height: 38px;
            background: #f5f5f5;
            border-radius: 50%;
            font-weight: 700;
        }

        .remove-link {
            display: inline-block;
            color: #b3002d;
            font-weight: 700;
            font-size: 13px;
            letter-spacing: 1px;
            text-transform: uppercase;
            text-decoration: none;
        }

        .remove-link:hover {
            color: #d7194a;
        }

        .summary-card {
            padding: 35px;
            position: sticky;
            top: 30px;
        }

        .summary-card h2 {
            font-family: 'Playfair Display', serif;
            font-size: 38px;
            margin-bottom: 25px;
        }

        .summary-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 16px 0;
            border-bottom: 1px solid #eeeeee;
            color: #555;
        }

        .summary-row strong {
            color: #111;
        }

        .summary-total {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 25px;
            font-size: 26px;
            font-weight: 700;
        }

        .summary-total span:last-child {
            color: #b3002d;
        }

        .checkout-btn,
        .secondary-btn,
        .clear-btn {
            display: block;
            width: 100%;
            text-align: center;
            border: none;
            text-decoration: none;
            border-radius: 12px;
            padding: 15px 20px;
            font-size: 14px;
            font-weight: 700;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            cursor: pointer;
            transition: .25s ease;
        }

        .checkout-btn {
            background: #111;
            color: #fff;
            margin-top: 30px;
        }

        .checkout-btn:hover {
            background: #b3002d;
        }

        .secondary-btn {
            background: #fff;
            color: #111;
            border: 1px solid #111;
            margin-top: 14px;
        }

        .secondary-btn:hover {
            background: #111;
            color: #fff;
        }

        .clear-btn {
            background: transparent;
            color: #b3002d;
            margin-top: 12px;
        }

        .clear-btn:hover {
            color: #d7194a;
        }

        .cart-message {
            margin-bottom: 25px;
            padding: 15px 18px;
            border-radius: 12px;
            font-weight: 600;
        }

        .error-message {
            background: #fff1f1;
            color: #b3002d;
            border: 1px solid #f0b8c4;
        }

        .empty-cart {
            max-width: 700px;
            margin: 0 auto;
            padding: 60px 35px;
            text-align: center;
        }

        .empty-cart h2 {
            font-family: 'Playfair Display', serif;
            font-size: 44px;
            margin-bottom: 14px;
        }

        .empty-cart p {
            color: #777;
            margin-bottom: 30px;
        }

        @media (max-width: 1000px) {
            .cart-layout {
                grid-template-columns: 1fr;
            }

            .summary-card {
                position: static;
            }

            .cart-header h1 {
                font-size: 50px;
            }
        }

        @media (max-width: 600px) {
            .cart-page {
                padding: 50px 5%;
            }

            .cart-header h1 {
                font-size: 42px;
            }

            .cart-card,
            .summary-card,
            .empty-cart {
                padding: 25px;
            }
        }
    </style>
</head>

<body>

<section class="cart-page">

    <div class="cart-header">
        <span>Luna e Vino</span>
        <h1>Your Cart</h1>
        <p>Review your selected dishes before placing the order.</p>
    </div>

    <%
        String error = request.getParameter("error");

        if ("empty".equals(error)) {
    %>
            <div class="cart-message error-message">
                Your cart is empty. Please add at least one item before placing an order.
            </div>
    <%
        } else if ("failed".equals(error)) {
    %>
            <div class="cart-message error-message">
                Order failed. Please try again.
            </div>
    <%
        }
    %>

    <%
        if (cart == null || cart.isEmpty()) {
    %>

        <div class="empty-cart">
            <h2>Your cart is empty</h2>
            <p>No dishes have been added yet. Please return to the menu and choose your items.</p>

            <a href="<%= request.getContextPath() %>/jsp/menu.jsp" class="checkout-btn">
                Browse Menu
            </a>

            <a href="<%= request.getContextPath() %>/jsp/index.jsp" class="secondary-btn">
                Back to Home
            </a>
        </div>

    <%
        } else {
    %>

        <div class="cart-layout">

            <div class="cart-card">

                <table class="cart-table">
                    <thead>
                        <tr>
                            <th>Food</th>
                            <th>Price</th>
                            <th>Quantity</th>
                            <th>Subtotal</th>
                            <th>Action</th>
                        </tr>
                    </thead>

                    <tbody>

                    <%
                        for (OrderItem item : cart.values()) {
                            double subtotal = item.getPrice() * item.getQuantity();
                            total += subtotal;
                    %>

                        <tr>
                            <td>
                                <div class="food-name">
                                    <%= item.getFoodName() %>
                                </div>
                            </td>

                            <td>
                                <span class="price-text">
                                    RM <%= String.format("%.2f", item.getPrice()) %>
                                </span>
                            </td>

                            <td>
                                <span class="quantity-badge">
                                    <%= item.getQuantity() %>
                                </span>
                            </td>

                            <td>
                                <strong>
                                    RM <%= String.format("%.2f", subtotal) %>
                                </strong>
                            </td>

                            <td>
                                <a href="<%= request.getContextPath() %>/OrderServlet?action=remove&menu_id=<%= item.getMenuId() %>"
                                   class="remove-link">
                                    Remove
                                </a>
                            </td>
                        </tr>

                    <%
                        }
                    %>

                    </tbody>
                </table>

            </div>

            <aside class="summary-card">

                <h2>Order Summary</h2>

                <div class="summary-row">
                    <span>Selected Items</span>
                    <strong><%= cart.size() %></strong>
                </div>

                <div class="summary-row">
                    <span>Service</span>
                    <strong>Dine-in / Pickup</strong>
                </div>

                <div class="summary-row">
                    <span>Status</span>
                    <strong>Pending</strong>
                </div>

                <div class="summary-total">
                    <span>Total</span>
                    <span>RM <%= String.format("%.2f", total) %></span>
                </div>

                <form action="<%= request.getContextPath() %>/OrderServlet" method="post">
                    <input type="hidden" name="action" value="placeOrder">

                    <button type="submit" class="checkout-btn">
                        Place Order
                    </button>
                </form>

                <a href="<%= request.getContextPath() %>/jsp/menu.jsp" class="secondary-btn">
                    Continue Shopping
                </a>

                <a href="<%= request.getContextPath() %>/OrderServlet?action=clear" class="clear-btn">
                    Clear Cart
                </a>

            </aside>

        </div>

    <%
        }
    %>

</section>

<jsp:include page="footer.jsp" />

</body>
</html>