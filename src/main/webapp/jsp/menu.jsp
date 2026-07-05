<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<style>
/* SPA Engine State Utilities */
.spa-section {
    display: none;
    opacity: 0;
    transition: opacity 0.25s ease-in-out;
}

.spa-section.active-view {
    display: block !important;
    opacity: 1;
}

/* Local SPA Sub-Navigation Bar Styling */
.spa-nav-bar {
    background-color: #ffffff;
    border-bottom: 1px solid #000000;
    position: sticky;
    top: 0;
    z-index: 1020;
}

.spa-nav-link {
    font-family: sans-serif;
    font-size: 0.75rem;
    text-transform: uppercase;
    letter-spacing: 2px;
    color: #6c757d;
    text-decoration: none;
    font-weight: 500;
    padding: 12px 15px;
    display: inline-block;
    transition: color 0.2s ease;
}

.spa-nav-link:hover, .spa-nav-link.active-route {
    color: #b3002d !important;
    font-weight: 700;
}

/* Custom UI styling continuity quirks */
.text-brand-red {
    color: #b3002d !important;
}
.grid-border-bottom {
    border-bottom: 1px solid #000;
}

/* Menu Item Typography Layout */
.menu-item-title {
    font-size: 2.1rem;
    font-weight: normal;
    line-height: 1.1;
}
.dietary-badge {
    font-family: sans-serif;
    font-size: 0.65rem;
    text-transform: uppercase;
    letter-spacing: 1px;
    background-color: #f8f9fa;
    border: 1px solid #dee2e6;
    color: #495057;
    padding: 2px 8px;
    height: fit-content;
}

/* Left-aligned Photo Space Settings */
.menu-image-placeholder {
    width: 110px;
    height: 110px;
    object-fit: cover;
    background-color: #fdfdfd;
    border: 1px solid #000000;
}

/* Add to Cart Actions Styling */
.price-tag {
    font-family: sans-serif;
    font-size: 1.1rem;
    font-weight: 600;
    color: #212529;
}
.btn-add-cart {
    font-family: sans-serif;
    font-size: 0.7rem;
    text-transform: uppercase;
    letter-spacing: 1px;
    font-weight: 600;
    border: 1px solid #000000;
    background-color: #ffffff;
    color: #000000;
    padding: 6px 12px;
    transition: all 0.2s ease;
}
.btn-add-cart:hover {
    background-color: #b3002d;
    border-color: #b3002d;
    color: #ffffff;
}

@media (max-width: 767.98px) {
    .menu-image-placeholder {
        width: 80px;
        height: 80px;
    }
    .menu-item-title {
        font-size: 1.7rem;
    }
}
</style>

<!-- Global Context Sub-Header -->
<div class="container-fluid grid-border-bottom text-center py-4 bg-white">
    <p class="mb-0 small text-muted font-sans text-uppercase tracking-widest">
        Ristorante <span class="text-brand-red fw-bold">"Luna e Vino"</span> is a real piece of Italy in the heart of the city
    </p>
</div>

<!-- ========================================== -->
<!-- LOCAL MENU SUB-NAVIGATION BAR             -->
<!-- ========================================== -->
<nav class="spa-nav-bar">
    <div class="container d-flex justify-content-center flex-wrap gap-1 gap-sm-2">
        <a href="#antipasti" class="spa-nav-link" data-route="antipasti">Starters & Salads</a>
        <a href="#primi" class="spa-nav-link" data-route="primi">Pasta & Risotto</a>
        <a href="#secondi" class="spa-nav-link" data-route="secondi">Main Courses</a>
        <a href="#pizza" class="spa-nav-link" data-route="pizza">Wood-Fired Pizza</a>
        <a href="#dolci" class="spa-nav-link" data-route="dolci">Desserts</a>
        <a href="#bevande" class="spa-nav-link" data-route="bevande">Drinks</a>
    </div>
</nav>

<!-- ========================================== -->
<!-- SECTION 1: ANTIPASTI                      -->
<!-- ========================================== -->
<div id="antipasti-view" class="spa-section active-view">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Starters</span>
        <h2 class="display-4 fw-normal text-dark">Antipasti & Insalate</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-xl-10">
                
                <!-- Caesar Salad -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Caesar Salad</h3>
                            <span class="dietary-badge">Nut-Free</span>
                            <span class="dietary-badge">Vegetarian Option</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Romaine lettuce, croutons, parmesan</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Crisp romaine tossed in a classic creamy dressing with shaved parmesan and crunchy croutons.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Rocket Salad -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Rocket Salad</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Arugula (rocket), cherry tomatoes, balsamic</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Peppery wild rocket leaves tossed with fresh tomatoes and a tangy balsamic reduction.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Salmon Salad -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Salmon Salad</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Smoked salmon, mixed greens, capers</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Delicate ribbons of oak-smoked salmon laid over fresh garden greens with a zesty citrus dressing.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 34.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Beetroot & Pear Salad -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Beetroot & Pear Salad</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Roasted beetroot, fresh pear, goat cheese</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A sweet and earthy blend of tender beetroot and crisp pear slices, topped with creamy goat cheese.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Niçoise Salad -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Niçoise Salad</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Seared tuna, soft-boiled egg, green beans</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A Mediterranean classic featuring flaky tuna, hard-boiled eggs, olives, and crisp green beans.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 30.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- SECTION 2: PRIMI                           -->
<!-- ========================================== -->
<div id="primi-view" class="spa-section">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">First Course</span>
        <h2 class="display-4 fw-normal text-dark">Primi Piatti</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-xl-10">

                <!-- Penne all'Arrabbiata -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Penne all'Arrabbiata</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Penne pasta, garlic, chili flakes, tomato sauce</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Tube pasta tossed in a fiery, spicy tomato sauce infused with fresh garlic and chili.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 42.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Penne all'Amatriciana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Penne all'Amatriciana</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Penne pasta, cured pork guanciale/pancetta, pecorino</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A rich, savory Roman pasta sauce made from cured pork, tomatoes, and sharp pecorino cheese.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Fettuccine al Salmone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Fettuccine al Salmone</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fettuccine, smoked salmon, heavy cream</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Flat ribbons of pasta coated in a luxurious, velvety pink cream sauce with flaked salmon.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Fettuccine Crema e Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Fettuccine Crema e Funghi</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fettuccine, wild mushrooms, cream</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Comforting egg pasta tossed with earthy sautéed mushrooms in a smooth garlic-cream sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Fettuccine al Ragù di Agnello -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Fettuccine al Ragù di Agnello</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fettuccine, slow-cooked lamb, red wine</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Hearty, deeply savory slow-braised lamb ragù layered over fresh ribbons of pasta.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Ravioli di Carne ai Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Ravioli di Carne ai Funghi</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Meat-stuffed ravioli, porcini mushrooms, butter</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Handmade pillows of meat-filled pasta served in a rich, aromatic wild mushroom and butter sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 68.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Tortellini di Ricotta e Spinaci -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tortellini di Ricotta e Spinaci</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tortellini, ricotta, spinach, sage</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Ring-shaped pasta stuffed with creamy spinach and ricotta, finished in a light sage-butter sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 56.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Agnolotti del Plin -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Agnolotti del Plin</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Roasted meat filling, veal jus, butter</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Traditional pinched pasta parcels from Piedmont filled with savory roasted meats and glazed in jus.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 72.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Gnocchi al Gorgonzola e Noci -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Gnocchi al Gorgonzola e Noci</h3>
                            <span class="dietary-badge">Vegetarian</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Potato gnocchi, gorgonzola cheese, walnuts</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Pillowy soft potato dumplings blanketed in a rich, pungent blue cheese sauce and topped with toasted walnuts.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Gnocchi alla Bolognese -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Gnocchi alla Bolognese</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Potato gnocchi, minced beef and pork, tomatoes</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Soft potato gnocchi served with a classic, slow-simmered Italian meat ragù.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Spaghetti alle Vongole -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Spaghetti alle Vongole</h3>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Spaghetti, fresh clams, white wine, garlic</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A seaside classic of long pasta tossed with fresh clams, garlic, chili, and a splash of white wine.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Capellini all'Aragosta -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Capellini all'Aragosta</h3>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Angel hair pasta, lobster meat, cherry tomatoes</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Delicate, fine strands of pasta tossed with sweet, succulent lobster meat in a light tomato-herb broth.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 118.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Lasagna Classica -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Lasagna Classica</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Pasta layers, bolognese, béchamel, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Baked, comforting layers of egg pasta, rich meat ragù, creamy white sauce, and melted cheese.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Risotto ai Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Risotto ai Funghi</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Arborio rice, mixed mushrooms, parmesan</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Creamy, slow-cooked Italian rice infused with the deep, earthy flavors of wild mushrooms.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Risotto di Pesce -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Risotto di Pesce</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Arborio rice, mixed seafood, white wine</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Luxuriously creamy risotto packed with a medley of fresh seafood and bright mediterranean herbs.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 68.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- SECTION 3: SECONDI                         -->
<!-- ========================================== -->
<div id="secondi-view" class="spa-section">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Main Courses</span>
        <h2 class="display-4 fw-normal text-dark">Secondi Piatti</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-xl-10">

                <!-- Tuna Steak -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tuna Steak with Lemon Caper Sauce</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Yellowfin tuna, lemon juice, capers</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Perfect pan-seared tuna steak drizzled with a bright, tangy, and salty lemon-caper reduction.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 78.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Porchetta -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Porchetta</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Pork belly, fennel seeds, garlic, rosemary</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Savory, moist boneless pork roast rolled with aromatic herbs and roasted until the crackling is perfectly crisp.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 72.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Chicken Parmigiana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Chicken Parmigiana</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Breaded chicken breast, marinara sauce, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Crispy, golden pan-fried chicken cutlet topped with zesty tomato sauce and melted mozzarella.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Osso Buco -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Osso Buco alla Milanese</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Braised veal shanks, white wine, gremolata</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Tender, fall-off-the-bone veal shanks braised with vegetables, topped with a zesty lemon-garlic herb toss.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 88.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Saltimbocca -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Saltimbocca alla Romana</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Veal cutlets, prosciutto, fresh sage</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Thin veal cutlets lined with savory prosciutto and fresh sage, pan-fried in a white wine butter glaze.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 82.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Pollo al Limone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Pollo al Limone</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Chicken breast, lemon, white wine, butter</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Tender, juicy chicken cutlets pan-seared in a silky, bright, and refreshing lemon butter sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 56.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Bistecca -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Bistecca alla Griglia</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Premium beef steak, rosemary, garlic</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Fire-grilled premium beef steak seasoned simply with sea salt, cracked pepper, and aromatic herbs.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 128.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Branzino -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Branzino al Forno</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Whole Mediterranean sea bass, herbs, lemon</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Fresh whole sea bass baked delicately with Mediterranean herbs, olive oil, and lemon slices.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 86.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Pollo ai Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Pollo ai Funghi</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Chicken breast, wild mushrooms, garlic, cream</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Succulent pan-seared chicken breast smothered in a rich, velvety wild mushroom cream sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Agnello Scottadito -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Agnello Scottadito</h3>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Grilled lamb chops, rosemary, garlic</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Juicy, char-grilled lamb chops marinated in garlic and fresh rosemary—literally translates to "burnt fingers" from eating them hot.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 98.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- SECTION 4: PIZZA                           -->
<!-- ========================================== -->
<div id="pizza-view" class="spa-section">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Wood-Fired</span>
        <h2 class="display-4 fw-normal text-dark">Pizze Forno a Legna</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-xl-10">

                <!-- Margherita -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Margherita</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, fresh mozzarella, basil</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">The timeless classic featuring a vibrant tomato base, creamy mozzarella, and fragrant fresh basil leaves.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 42.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Napoletana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Napoletana</h3>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, anchovies, capers, oregano</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A savory, salty traditional pie topped with rich tomato sauce, briny anchovies, and capers (no cheese).</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 42.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Tonno -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tonno</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, tuna chunks, onions, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A coastal favorite combining flaked tuna and sweet, thinly sliced red onions over a cheesy base.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Diavola -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Diavola</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, spicy salami, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A fiery pizza loaded with slices of spicy Italian pepperoni/salami and crushed chili flakes.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Capricciosa -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Capricciosa</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, mozzarella, mushrooms, ham, artichokes, olives</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A fully loaded, traditional "capricious" pizza offering a savory mix of ham, mushrooms, artichokes, and black olives.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 56.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Calzone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Calzone</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Folded pizza dough, ricotta, ham, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A spectacular golden, folded crescent-moon pizza turnover stuffed to the brim with oozing cheese and ham.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 54.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Pizza Ciao -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Pizza Ciao</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Chef's special toppings, mozzarella, prosciutto</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">The signature house pizza loaded with premium cured meats, fresh greens, and artisan cheese.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Ai Fichi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Ai Fichi</h3>
                            <span class="dietary-badge">Vegetarian Option</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Mozzarella, sweet dried figs, gorgonzola, prosciutto</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A sophisticated balance of sweet and savory combining dried figs, pungent blue cheese, and salty ham strips.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Burrata e Rucola -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Burrata e Rucola</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fresh burrata cheese, wild rocket, cherry tomatoes</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A luxurious white pizza base topped with cold, creamy fresh burrata cheese and peppery arugula after baking.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Al Salmone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Al Salmone</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Smoked salmon, mozzarella, capers, cream</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">An elegant white-base pizza topped with smoky salmon ribbons, cream, and pops of briny capers.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Costiera -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Costiera</h3>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Mixed seafood, garlic, parsley, tomato sauce</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A coastal celebration featuring fresh mixed seafood, garlic, and herbs over a rich tomato base.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 68.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Vegetariana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Vegetariana</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, mozzarella, grilled bell peppers, zucchini, eggplant</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A colorful medley of char-grilled garden vegetables laid over a classic cheese and tomato base.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Funghi Misti -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Funghi Misti</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, mozzarella, assorted wild mushrooms</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">An earthy, savory pie heavily topped with a selection of roasted forest mushrooms and herbs.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Tropicale -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tropicale</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, mozzarella, ham, sweet pineapple</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">The classic sweet-and-savory combo featuring diced juicy pineapples and savory cured ham.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Bianca -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Bianca</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Mozzarella, olive oil, rosemary (no tomato sauce)</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A minimalist "white pizza" focusing on crisp dough, melting mozzarella, and fragrant rosemary oil.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 26.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Rossa -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Rossa</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Marinara tomato sauce, garlic, oregano (no cheese)</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Simple and rustic; just rich, slow-cooked tomato sauce infused with sliced garlic and wild oregano.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 24.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- SECTION 5: DOLCI                           -->
<!-- ========================================== -->
<div id="dolci-view" class="spa-section">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Desserts</span>
        <h2 class="display-4 fw-normal text-dark">Dolci</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-xl-10">

                <!-- Tiramisu -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tiramisu</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Mascarpone, espresso, ladyfingers, cocoa</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Layers of coffee-dipped ladyfingers and whipped mascarpone cream, dusted heavily with premium dark cocoa.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Chocolate Molten Lava Cake -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Chocolate Molten Lava Cake</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Dark chocolate, butter, eggs</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A decadent, warm chocolate cake with a rich, oozing liquid chocolate center.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 32.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Cannoli -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Cannoli</h3>
                            <span class="dietary-badge">Vegetarian</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fried pastry shell, sweet ricotta, chocolate chips</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Crispy, fried pastry tubes filled with a sweet, creamy sheep's milk ricotta stuffing.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 24.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Pear Tarte Tatin -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Pear Tarte Tatin</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Caramelized pears, puff pastry</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">An upscale, inverted tart featuring deeply caramelized pears over a buttery, flaky puff pastry crust.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 30.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Panna Cotta -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Panna Cotta</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Heavy cream, vanilla bean, berry coulis</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A silky, molded chilled cream dessert flavored with vanilla bean and served with a tart berry sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 24.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Crème Brûlée -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Crème Brûlée</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Egg yolks, heavy cream, torched sugar</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A rich, velvety custard base topped with a contrasting layer of hardened, beautifully torched caramelized sugar.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 26.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Homemade Gelato -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Homemade Gelato (per scoop)</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free Options</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Milk, cream, assorted flavors</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Denser and milkier than traditional ice cream, churned in-house for a smooth, velvety texture.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 12.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Sorbetto -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Sorbetto</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fresh fruit purée, sugar, ice</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">An intensely refreshing, dairy-free frozen treat made purely from seasonal fresh fruits.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 22.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Cheese Platter -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Cheese Platter</h3>
                            <span class="dietary-badge">Vegetarian</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Selection of artisanal cheeses, honey, crackers</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A curated board of Italian cheeses varying from soft to hard, served alongside sweet honey and crisp crackers.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- SECTION 6: BEVANDE                         -->
<!-- ========================================== -->
<div id="bevande-view" class="spa-section">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Drinks</span>
        <h2 class="display-4 fw-normal text-dark">Bevande</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-xl-10">

                <!-- Espresso -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Espresso</h3>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A concentrated, bold shot of pure Italian espresso with a thick crema layer.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 10.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Macchiato -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Macchiato</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A classic shot of rich espresso "marked" with a dollop of warm, frothy milk foam.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 10.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Americano -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Americano</h3>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A smooth, full-bodied black coffee prepared by diluting espresso with hot water.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 10.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Cappuccino -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Cappuccino</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">Equal parts espresso, steamed milk, and a thick, luxurious layer of aerated milk foam.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Caffè Latte -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Caffè Latte</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A creamy, comforting coffee made with a shot of espresso topped with plenty of steamed milk.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Mocha -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Mocha</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A rich, comforting fusion of strong espresso, steamed milk, and sweet dark chocolate syrup.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 18.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Hot Chocolate -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Hot Chocolate</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A thick, velvety, and deeply decadent European-style drinking chocolate.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Tea -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tea</h3>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A selection of premium steeped herbal, green, or black tea leaves.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 12.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Fresh Juice -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Fresh Juice</h3>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">Ice-cold, 100% freshly squeezed seasonal fruits with no added sugar.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

                <!-- Soft Drinks -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Soft Drinks</h3>
                            <span class="dietary-badge">Vegan</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Dairy-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A chilled selection of standard carbonated sodas to refresh the palate.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-center gap-2">
                        <div class="price-tag">RM 12.00</div>
                        <button class="btn btn-add-cart btn-sm">Add to Cart</button>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- CORE MENU ENGINE: INTERACTIVE NAVIGATION   -->
<!-- ========================================== -->
<script>
const MenuDomRouter = {
    routes: {
        '#antipasti': 'antipasti-view',
        '#primi': 'primi-view',
        '#secondi': 'secondi-view',
        '#pizza': 'pizza-view',
        '#dolci': 'dolci-view',
        '#bevande': 'bevande-view'
    },

    init() {
        window.addEventListener('hashchange', () => this.handleRouting());
        
        document.addEventListener('click', (e) => {
            const anchor = e.target.closest('a');
            if (anchor && anchor.getAttribute('href') && anchor.getAttribute('href').startsWith('#')) {
                const route = anchor.getAttribute('href');
                if (this.routes[route]) {
                    e.preventDefault();
                    window.location.hash = route;
                }
            }
        });

        this.handleRouting();
    },

    handleRouting() {
        const currentHash = window.location.hash || '#antipasti';
        const targetViewId = this.routes[currentHash] || 'antipasti-view';

        document.querySelectorAll('.spa-section').forEach(section => {
            section.classList.remove('active-view');
        });

        const activeTarget = document.getElementById(targetViewId);
        if (activeTarget) {
            activeTarget.classList.add('active-view');
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        document.querySelectorAll('.spa-nav-link').forEach(link => {
            link.classList.remove('active-route');
            if (link.getAttribute('href') === currentHash) {
                link.classList.add('active-route');
            }
        });
    }
};

document.addEventListener('DOMContentLoaded', () => {
    MenuDomRouter.init();
});
</script>

<jsp:include page="footer.jsp" />