<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<style>
/* Clean, textured background matching image_4.png */
.bg-menu-textured {
    background-color: #F8F8F8;
    position: relative;
    width: 100%;
    overflow: hidden;
}

/* The structural layout container—halved padding from 60px to 30px */
.hero-canvas {
    position: relative;
    width: 100%;
    min-height: 460px; /* Reduced min-height since padding dropped */
    display: flex;
    justify-content: center;
    align-items: center;
    padding: 30px 0; /* Halved padding */
}

/* Square box dinner photo window in the exact center */
.portrait-image-box {
    width: 420px;   
    height: 420px;
    background-image: url('https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=1200'); /* The dinner food photo back */
    background-size: cover;
    background-position: center;
    background-repeat: no-repeat;
    border: 1px solid #000000;
    position: relative;
    z-index: 1;
}

/* Dimming overlay applied directly on the photo container to let the text show clearly */
.portrait-image-box::before {
    content: "";
    position: absolute;
    inset: 0;
    background: rgba(0, 0, 0, 0.45); 
    z-index: 2;
}

/* Wide-stretching overlay title—now absolute to the canvas to guarantee perfect pixel centering */
.wide-overlay-title {
    position: absolute;
    width: 100%;
    text-align: center !important; 
    left: 50%;
    top: 50%; 
    transform: translate(-50%, -50%);
    z-index: 3; /* Sits directly on top of the image box and its overlay */
    pointer-events: none;
    
    /* Resetting browser defaults to prevent the font from shifting downward */
    margin: 0 !important;
    padding: 0 !important;
    line-height: 0.9;
    
    /* TUNED FOR THE IMAGE_083EA9.PNG LOOK */
    font-family: 'Playfair Display', Georgia, serif; 
    font-style: italic;
    font-weight: 700; /* Forces the thick, high-contrast stroke weights */
    color: #e06666; /* Elegant reddish-orange font color from image_4.png */
    font-size: clamp(4rem, 10vw, 7rem);
    letter-spacing: -0.5px; /* Tighter letter-spacing allows the cursive loops to connect naturally */
    white-space: nowrap;
}
</style>

<!-- Top strip descriptor line - Centered & Highlighted badge -->
<!-- Top strip descriptor line -->
<div class="container-fluid border-bottom bg-white"
     style="display:flex;
            justify-content:center;
            align-items:center;
            padding-top:16px;
            padding-bottom:16px;">

    <p class="mb-0"
       style="
            width:100%;
            text-align:center !important;
            font-size:0.85rem;
            letter-spacing:2px;
            text-transform:uppercase;
            color:#6c757d;
            margin:0;
        ">

        Ristorante

        <span style="
            color:#b3002d !important;
            font-weight:700;
        ">
            "Luna e Vino"
        </span>

        is a real piece of Italy in the heart of the city

    </p>

</div>
</div>
<!-- HERO LAYOUT CANVAS -->
<div class="container-fluid bg-menu-textured">
    
    <header class="hero-canvas">
        <!-- Center square image box element with food photo -->
        <div class="portrait-image-box"></div>
        
        <!-- Placed out here as a sibling so its absolute positioning aligns directly to the true center of the photo -->
        <h1 class="wide-overlay-title font-script text-center">
            Luna e Vino
        </h1>
    </header>

<!-- INTERMEDIARY MICHELIN STARS - Halved margins from top/bottom -->
<div style="width:100%; text-align:center; margin-top:15px; margin-bottom: 10px;">
    <!-- TWO STARS (Enlarged to 50px width with extra breathing room) -->
    <div style="display:flex; justify-content:center; gap:14px;">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MichelinStar.svg/960px-MichelinStar.svg.png"
             alt="Michelin Star"
             style="width:50px; height:auto;">

        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/MichelinStar.svg/960px-MichelinStar.svg.png"
             alt="Michelin Star"
             style="width:50px; height:auto;">
    </div>
</div>

<!-- MICHELIN SECTION DETAILS - Halved margins from 70px/40px to 35px/20px -->
<div style="width:100%; text-align:center; margin-top:35px; margin-bottom: 20px;">

    <div style="display:inline-block; text-align:center;">

        <div style="font-size:0.9rem; letter-spacing:1px; color:#6c757d;">
            EST. 2016 — 2026
        </div>

        <div style="font-size:1.1rem; letter-spacing:1.5px; color:#b3002d; font-weight:700; margin-top:8px;">
            MICHELIN GUIDE
        </div>

        <div style="font-size:0.85rem; letter-spacing:2px; color:#6c757d; margin-top:12px;">
            EN / IT
        </div>

     

    </div>

</div>
</div>

<jsp:include page="footer.jsp" />