<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Order Confirmed | Luna e Vino</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <style>
        @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700&family=Playfair+Display:wght@600;700&display=swap');

        body {
            margin: 0;
            background: #f5f5f5;
            color: #111;
            font-family: 'Montserrat', sans-serif;
        }

        .confirmation-page {
            min-height: 80vh;
            padding: 80px 8%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .confirmation-card {
            max-width: 760px;
            width: 100%;
            background: #fff;
            border-radius: 26px;
            padding: 70px 50px;
            text-align: center;
            box-shadow: 0 12px 30px rgba(0,0,0,.09);
        }

        .brand-label {
            display: block;
            color: #b3002d;
            font-size: 13px;
            font-weight: 700;
            letter-spacing: 3px;
            text-transform: uppercase;
            margin-bottom: 18px;
        }

        .confirmation-card h1 {
            font-family: 'Playfair Display', serif;
            font-size: 66px;
            line-height: 1.05;
            margin: 0 0 20px;
            color: #111;
        }

        .confirmation-card p {
            color: #666;
            font-size: 16px;
            line-height: 1.7;
            margin-bottom: 28px;
        }

        .order-number {
            display: inline-block;
            background: #111;
            color: #fff;
            padding: 14px 26px;
            border-radius: 40px;
            font-size: 15px;
            font-weight: 700;
            letter-spacing: 1px;
            margin-bottom: 35px;
        }

        .order-number span {
            color: #ff6f8f;
        }

        .button-row {
            display: flex;
            justify-content: center;
            gap: 14px;
            flex-wrap: wrap;
        }

        .main-btn,
        .secondary-btn {
            display: inline-block;
            min-width: 170px;
            text-align: center;
            text-decoration: none;
            border-radius: 12px;
            padding: 15px 22px;
            font-size: 14px;
            font-weight: 700;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            transition: .25s ease;
        }

        .main-btn {
            background: #111;
            color: #fff;
        }

        .main-btn:hover {
            background: #b3002d;
        }

        .secondary-btn {
            background: #fff;
            color: #111;
            border: 1px solid #111;
        }

        .secondary-btn:hover {
            background: #111;
            color: #fff;
        }

        .small-note {
            margin-top: 35px;
            font-size: 13px;
            color: #999;
            letter-spacing: 1px;
            text-transform: uppercase;
        }

        @media (max-width: 700px) {
            .confirmation-page {
                padding: 50px 5%;
            }

            .confirmation-card {
                padding: 50px 25px;
            }

            .confirmation-card h1 {
                font-size: 46px;
            }
        }
    </style>
</head>

<body>

<jsp:include page="header.jsp" />

<section class="confirmation-page">

    <div class="confirmation-card">

        <span class="brand-label">Luna e Vino</span>

        <h1>Order Confirmed</h1>

        <p>
            Thank you for your order. Your selected dishes have been successfully submitted
            to our restaurant team.
        </p>

        <%
            String orderId = request.getParameter("orderId");

            if (orderId != null && !orderId.trim().isEmpty()) {
        %>
            <div class="order-number">
                Order ID: <span>#<%= orderId %></span>
            </div>
        <%
            }
        %>

        <div class="button-row">

            <a href="<%= request.getContextPath() %>/jsp/menu.jsp" class="main-btn">
                Back to Menu
            </a>

            <a href="<%= request.getContextPath() %>/jsp/index.jsp" class="secondary-btn">
                Home
            </a>

        </div>

        <div class="small-note">
            Status: Pending
        </div>

    </div>

</section>

<jsp:include page="footer.jsp" />

</body>
</html>