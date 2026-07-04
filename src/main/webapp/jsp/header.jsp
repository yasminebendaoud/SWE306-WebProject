<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luna e Vino — Ristorante Italiano</title>

    <!-- Bootstrap 5 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Carattere&family=Playfair+Display:ital,wght@0,400;0,600;1,400&family=Montserrat:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

    <style>
        .navbar-custom {
            background: #000;
            position: sticky;
            top: 0;
            z-index: 9999;
            padding: 18px 0;
        }

        .navbar-inner {
            max-width: 1400px;
            margin: 0 auto;
            display: flex;
            justify-content: space-evenly;
            align-items: center;
        }

        .navbar-inner a {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.9rem;
            letter-spacing: 2px;
            text-transform: uppercase;
            color: white;
            text-decoration: none;
            padding-bottom: 5px;
        }

        .navbar-inner a:hover {
            color: #b3002d;
        }

        .navbar-inner a.active {
            border-bottom: 2px solid #b3002d;
        }

        .navbar-logo {
            font-family: 'Montserrat', sans-serif;
            font-weight: 700;
            letter-spacing: 3px;
            color: #b3002d;
            text-transform: uppercase;
        }
    </style>
</head>

<body>

<nav class="navbar-custom">
    <div class="navbar-inner">

        <a href="${pageContext.request.contextPath}/jsp/index.jsp#home">
            Home
        </a>

        <a href="${pageContext.request.contextPath}/jsp/menu.jsp">
            Menu
        </a>

        <span class="navbar-logo">
            Luna e Vino
        </span>

        <a href="${pageContext.request.contextPath}/jsp/reservations.jsp#reservations">
            Reservations
        </a>

        <a href="${pageContext.request.contextPath}/jsp/faq.jsp#contact">
            Contact & FAQ
        </a>

    </div>
</nav>