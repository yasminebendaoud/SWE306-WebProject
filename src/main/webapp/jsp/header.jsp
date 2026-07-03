<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luna e Vino — Ristorante Italiano</title>
    <!-- Bootstrap 5 CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts specified in image_ce0b62.png -->
    <link href="https://fonts.googleapis.com/css2?family=Carattere&family=Playfair+Display:ital,wght@0,400;0,600;1,400&family=Montserrat:wght@400;500&display=swap" rel="stylesheet">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <style>
        body {
            background-color: #F5F5F5; /* Exact color from image_ce0b62.png */
            color: #000000;
            font-family: 'Playfair Display', serif;
        }
        .font-script {
            font-family: 'Carattere', cursive;
        }
        .font-sans {
            font-family: 'Montserrat', sans-serif;
            font-size: 0.8rem;
            letter-spacing: 0.1em;
        }
        .text-brand-red { color: #EB4520 !important; }
        .bg-brand-red { background-color: #EB4520 !important; }
        .border-black { border-color: #000000 !important; }
        
        /* Minimalist Black Block Navbar from the references */
        .navbar-editorial {
            background-color: #000000 !important;
            padding: 12px 0;
        }
        .navbar-editorial .nav-link {
            color: #FFFFFF !important;
            font-family: 'Montserrat', sans-serif;
            font-size: 0.8rem;
            text-transform: capitalize;
            letter-spacing: 0.05em;
            font-weight: 400;
        }
        .navbar-editorial .nav-link:hover {
            color: #EB4520 !important;
        }
        
        /* Structural lines matching the design */
        .grid-border-bottom {
            border-bottom: 1px solid #000000;
        }
        .grid-border-right {
            border-right: 1px solid #000000;
        }
    </style>
</head>
<body>

<!-- Stark Black Top Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-editorial sticky-top">
    <div class="container text-center">
        <div class="w-100 d-flex justify-content-between align-items-center">
            <a class="nav-link" href="index.jsp">Home</a>
            <a class="nav-link" href="menu.jsp">Menu</a>
            <span class="d-none d-md-inline text-white font-sans fw-bold tracking-widest text-uppercase" style="font-size: 0.95rem;">Luna e Vino</span>
            <a class="nav-link" href="faq.jsp">Coming Soon</a>
            <a class="nav-link" href="contact.jsp">Contact</a>
        </div>
    </div>
</nav>