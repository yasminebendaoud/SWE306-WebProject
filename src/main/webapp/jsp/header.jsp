<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Luna e Vino — Ristorante Italiano</title>
    <!-- Bootstrap 5 CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Carattere&family=Playfair+Display:ital,wght@0,400;0,600;1,400&family=Montserrat:wght@400;500&display=swap" rel="stylesheet">
    <!-- FontAwesome Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    
    <!-- Bulletproof link to your local custom styles using Context Path -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-editorial sticky-top">
    <div class="container text-center">
        <div class="w-100 d-flex justify-content-between align-items-center">
            <!-- All links route safely from the root context + the jsp directory -->
            <a class="nav-link" href="${pageContext.request.contextPath}/jsp/index.jsp#home">Home</a>
            <a class="nav-link" href="${pageContext.request.contextPath}/jsp/menu.jsp">Menu</a>
            
            <span class="d-none d-md-inline text-white font-sans fw-bold tracking-widest text-uppercase" style="font-size: 0.95rem;">Luna e Vino</span>
            
            <a class="nav-link" href="${pageContext.request.contextPath}/jsp/faq.jsp#faq">Coming Soon</a>
            <a class="nav-link" href="${pageContext.request.contextPath}/jsp/faq.jsp#contact">Contact</a>
        </div>
    </div>
</nav>