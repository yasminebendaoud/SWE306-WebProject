<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<style>
    .font-playfair-italic {
        font-family: 'Playfair Display', 'Playfair', serif;
        font-style: italic;
    }
    .bg-menu-textured {
        background-color: #F8F8F8;
    }
    /* Simple centered frame for the images */
    .menu-centered-box {
        width: 100%;
        max-width: 320px;
        height: 320px;
        margin: 0 auto 1.5rem auto;
        overflow: hidden;
    }
    .menu-centered-box img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    /* Elegant centered horizontal line between food items */
    .menu-divider {
        border-top: 1px solid #333333;
        width: 100%;
        max-width: 400px;
        margin: 4rem auto;
    }
    /* Ensures clean text line height when centered */
    .menu-text-block {
        max-width: 550px;
        margin: 0 auto;
        line-height: 1.6;
    }
    /* FORCE all headings to center */
    h2,
    .menu-text-block h2 {
        text-align: center !important;
        width: 100%;
        display: block;
    }
</style>

<div class="container-fluid bg-menu-textured py-5">
    <div class="row g-0">
        <div class="col-12 col-md-8 col-lg-6 mx-auto">

            <!-- Item 1: Gastronomic Tagliolini Journey -->
            <div class="py-2">
                <h2 class="font-playfair-italic fw-normal text-dark mb-4" style="font-size: 2.6rem;">
                    Gastronomic Tagliolini Journey
                </h2>

                <div class="menu-centered-box">
                    <img src="https://images.unsplash.com/photo-1534111762495-20698442d574?q=80&w=800" alt="Gastronomic Tagliolini Journey">
                </div>

                <div class="menu-text-block">
                    <h2 class="font-playfair-italic text-muted fw-normal mb-2" style="font-size: 1.25rem;">
                        Something about how the meal makes you feel
                    </h2>

                    <h2 class="font-playfair-italic text-dark fw-normal mb-3" style="font-size: 1.15rem; letter-spacing: 0.3px;">
                        Hand-cut artisanal pasta strings • Shaved Umbrian winter truffles • Cultured alpine butter emulsification
                    </h2>

                    <h2 class="font-playfair-italic text-muted fw-normal" style="font-size: 1.2rem; letter-spacing: 0.5px;">
                        RM 135.00
                    </h2>
                </div>
            </div>

            <div class="menu-divider"></div>

            <!-- Item 2: Oyster Meal -->
            <div class="py-2">
                <h2 class="font-playfair-italic fw-normal text-dark mb-4" style="font-size: 2.6rem;">
                    Oyster Meal
                </h2>

                <div class="menu-centered-box">
                    <img src="https://images.unsplash.com/photo-1553618551-fba689030290?q=80&w=800" alt="Oyster Meal">
                </div>

                <div class="menu-text-block">
                    <h2 class="font-playfair-italic text-muted fw-normal mb-2" style="font-size: 1.25rem;">
                        Something about how the meal makes you feel
                    </h2>

                    <h2 class="font-playfair-italic text-dark fw-normal mb-3" style="font-size: 1.15rem; letter-spacing: 0.3px;">
                        Freshly shucked premium oysters • House cocktail reduction • Zesty lemon accents • Grated horseradish
                    </h2>

                    <h2 class="font-playfair-italic text-muted fw-normal" style="font-size: 1.2rem; letter-spacing: 0.5px;">
                        RM 160.00
                    </h2>
                </div>
            </div>

            <div class="menu-divider"></div>

            <!-- Item 3: Lobster Bisque -->
            <div class="py-2">
                <h2 class="font-playfair-italic fw-normal text-dark mb-4" style="font-size: 2.6rem;">
                    Lobster Bisque
                </h2>

                <div class="menu-centered-box">
                    <img src="https://images.unsplash.com/photo-1547592165-e1d17fed6005?q=80&w=800" alt="Lobster Bisque">
                </div>

                <div class="menu-text-block">
                    <h2 class="font-playfair-italic text-muted fw-normal mb-2" style="font-size: 1.25rem;">
                        Something about how the meal makes you feel
                    </h2>

                    <h2 class="font-playfair-italic text-dark fw-normal mb-3" style="font-size: 1.15rem; letter-spacing: 0.3px;">
                        Rich crustacean cream reduction • Butter-poached lobster claw • Saffron emulsion • Snipped chives
                    </h2>

                    <h2 class="font-playfair-italic text-muted fw-normal" style="font-size: 1.2rem; letter-spacing: 0.5px;">
                        RM 145.00
                    </h2>
                </div>
            </div>

            <div class="menu-divider"></div>

            <!-- Item 4: The Magic of Wagyu Crudo -->
            <div class="py-2">
                <h2 class="font-playfair-italic fw-normal text-dark mb-4" style="font-size: 2.6rem;">
                    The Magic of Wagyu Crudo
                </h2>

                <div class="menu-centered-box">
                    <img src="https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=800" alt="The Magic of Wagyu Crudo">
                </div>

                <div class="menu-text-block">
                    <h2 class="font-playfair-italic text-muted fw-normal mb-2" style="font-size: 1.25rem;">
                        Something about how the meal makes you feel
                    </h2>

                    <h2 class="font-playfair-italic text-dark fw-normal mb-3" style="font-size: 1.15rem; letter-spacing: 0.3px;">
                        Smoked Miyazaki A5 beef ribboning • Wild caper berry preserves • Whipped yolk gel and crisp flatbread
                    </h2>

                    <h2 class="font-playfair-italic text-muted fw-normal" style="font-size: 1.2rem; letter-spacing: 0.5px;">
                        RM 185.00
                    </h2>
                </div>
            </div>

        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />