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

/* Refined Fine-Dining Price & Action Typography */
.price-tag {
    font-family: sans-serif;
    font-size: 1.05rem;
    font-weight: 400;
    letter-spacing: 1px;
    color: #111111;
}

.btn-add-cart {
    font-family: sans-serif;
    font-size: 0.65rem;
    text-transform: uppercase;
    letter-spacing: 2px;
    font-weight: 500;
    border: none;
    background: transparent;
    color: #888888;
    padding: 4px 0;
    position: relative;
    transition: color 0.3s ease, letter-spacing 0.3s ease;
}

/* Elegant Underline Animation */
.btn-add-cart::after {
    content: '';
    position: absolute;
    width: 100%;
    transform: scaleX(0);
    height: 1px;
    bottom: 0;
    left: 0;
    background-color: #b3002d;
    transform-origin: bottom right;
    transition: transform 0.25s ease-out;
}

.btn-add-cart:hover {
    background: transparent;
    color: #b3002d;
    letter-spacing: 3px;
}

.btn-add-cart:hover::after {
    transform: scaleX(1);
    transform-origin: bottom left;
}

.btn-add-cart:focus, .btn-add-cart:active {
    background: transparent !important;
    color: #b3002d !important;
    box-shadow: none !important;
    outline: none !important;
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
                        <img src="https://i.pinimg.com/1200x/56/c2/d5/56c2d5122d292e50d3c1982aa34c26a0.jpg" alt="Caesar Salad" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Rocket Salad -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/d9/c3/20/d9c320004008291d20e7577f6ff9fb34.jpg" alt="Rocket Salad" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Salmon Salad -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/33/36/0b/33360bac37894f9bf896cfa71423cebd.jpg" alt="Salmon Salad" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 34.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Beetroot & Pear Salad -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/0f/6c/ec/0f6cec4d8d67c5bae8c4c5173f25c12b.jpg" alt="Beetroot & Pear Salad" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Niçoise Salad -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/bc/57/96/bc57960419775f4a2262bc981a6248b8.jpg" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 30.00</div>
                        <button class="btn-add-cart">Add to Order</button>
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
                        <img src="https://i.pinimg.com/1200x/6f/c1/83/6fc1832f7c9bf740cd87e9d7ae32695c.jpg" alt="Penne all'Arrabbiata" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 42.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Penne all'Amatriciana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/48/9e/35/489e35366c57ef95d52c926a42dfa036.jpg" alt="Penne all'Amatriciana" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Penne all'Amatriciana</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Penne pasta, cured pork guanciale/pancetta, pecorino</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A rich, savory Roman pasta sauce made from cured pork, tomatoes, and sharp pecorino cheese.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Fettuccine al Salmone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/30/dd/e3/30dde38553261130ada12927d080a31e.jpg" alt="Fettuccine al Salmone" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Fettuccine al Salmone</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fettuccine, smoked salmon, heavy cream</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Flat ribbons of pasta coated in a luxurious, velvety pink cream sauce with flaked salmon.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Fettuccine Crema e Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/98/68/4b/98684bf5d20288107ad24e449dd84d6a.jpg" alt="Fettuccine Crema e Funghi" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Fettuccine al Ragù di Agnello -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/e8/b9/66/e8b9662b11951dba10e4e325792672b8.jpg" alt="Fettuccine al Ragù di Agnello" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Fettuccine al Ragù di Agnello</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fettuccine, slow-cooked lamb, red wine</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Hearty, deeply savory slow-braised lamb ragù layered over fresh ribbons of pasta.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Ravioli di Carne ai Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/c9/44/e1/c944e1cc04081fae3b1f7165f36d7a8c.jpg" alt="Ravioli di Carne ai Funghi" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Ravioli di Carne ai Funghi</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Meat-stuffed ravioli, porcini mushrooms, butter</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Handmade pillows of meat-filled pasta served in a rich, aromatic wild mushroom and butter sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 68.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Tortellini di Ricotta e Spinaci -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/30/50/1a/30501a36c59e796acef72829d376801f.jpg" alt="Tortellini di Ricotta e Spinaci" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 56.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Agnolotti del Plin -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/f8/5c/00/f85c00871a2e6c0497958a1e25078f3b.jpg" alt="Agnolotti del Plin" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Agnolotti del Plin</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Roasted meat filling, veal jus, butter</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Traditional pinched pasta parcels from Piedmont filled with savory roasted meats and glazed in jus.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 72.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Gnocchi al Gorgonzola e Noci -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/44/db/a4/44dba46f69f6ab3aae609d15e0b4f46d.jpg" alt="Gnocchi al Gorgonzola e Noci" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Gnocchi al Gorgonzola e Noci</h3>
                            <span class="dietary-badge">Vegetarian</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Potato gnocchi, gorgonzola cheese, walnuts</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Pillowy soft potato dumplings blanketed in a rich, pungent blue cheese sauce and topped with toasted walnuts.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Gnocchi alla Bolognese -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/236x/ec/33/2b/ec332bd46492562c3b2b0aedcf0fd65a.jpg" alt="Gnocchi alla Bolognese" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Gnocchi alla Bolognese</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Potato gnocchi, minced beef and pork, tomatoes</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Soft potato gnocchi served with a classic, slow-simmered Italian meat ragù.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Spaghetti alle Vongole -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/9a/08/d7/9a08d72cfc5b0fed66764fa4787a796a.jpg" alt="Spaghetti alle Vongole" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Capellini all'Aragosta -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/46/88/46/4688467f41e7fc62035f598ad8497196.jpg" alt="Capellini all'Aragosta" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 118.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Lasagna Classica -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/00/c8/a9/00c8a9ed39118068621788d25481d98f.jpg" alt="Lasagna Classica" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Lasagna Classica</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Pasta layers, bolognese, béchamel, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Baked, comforting layers of egg pasta, rich meat ragù, creamy white sauce, and melted cheese.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Risotto ai Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/6a/ab/1e/6aab1eb4643c76de07d82dfc6f8b6fe7.jpg" alt="Risotto ai Funghi" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Risotto di Pesce -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/e1/6e/5e/e16e5e38cd3da782d3bd21d5a29bb7fa.jpg" alt="Risotto di Pesce" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 68.00</div>
                        <button class="btn-add-cart">Add to Order</button>
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
                        <img src="https://i.pinimg.com/736x/58/90/fb/5890fb48ed8ada6d13b65318e8052113.jpg" alt="Tuna Steak with Lemon Caper Sauce" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 78.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Porchetta -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/a3/d8/04/a3d804e244d2f6c1ec225c994b905b7b.jpg" alt="Porchetta" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 72.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Chicken Parmigiana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/d6/ea/04/d6ea04de71e5e66abf9390565eafbbc6.jpg" alt="Chicken Parmigiana" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Chicken Parmigiana</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Breaded chicken breast, marinara sauce, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Crispy, golden pan-fried chicken cutlet topped with zesty tomato sauce and melted mozzarella.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Osso Buco -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/64/12/c8/6412c824f21e595fc66540a3aa42d462.jpg" alt="Osso Buco alla Milanese" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Osso Buco alla Milanese</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Braised veal shanks, white wine, gremolata</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Tender, fall-off-the-bone veal shanks braised with vegetables, topped with a zesty lemon-garlic herb toss.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 88.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Saltimbocca -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/19/ab/76/19ab76330c3fd03e319ee60e9377c0c7.jpg" alt="Saltimbocca alla Romana" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 82.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Pollo al Limone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/31/71/73/317173b98fe4bcfd80bc4f4699a8c24a.jpg" alt="Pollo al Limone" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 56.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Bistecca -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/9e/0c/b6/9e0cb6ab04a0008718b83a6972efd762.jpg" alt="Bistecca alla Griglia" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 128.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Branzino -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/3b/a7/63/3ba763b64bc0dd24b3e5531af1fe6006.jpg" alt="Branzino al Forno" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 86.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Pollo ai Funghi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/99/2c/89/992c89c878b87a9b8e8e12c39d38030b.jpg" alt="Pollo ai Funghi" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Agnello Scottadito -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/e2/1c/12/e21c12e22175846ef40106149e5aff03.jpg" alt="Agnello Scottadito" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 98.00</div>
                        <button class="btn-add-cart">Add to Order</button>
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
                        <img src="https://i.pinimg.com/736x/61/89/e1/6189e1a3f01e977cfe36ee3b3e876ca1.jpg" alt="Margherita" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 42.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Napoletana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/f6/76/e6/f676e67e713c5e86f2dd8f3ec9935a12.jpg" alt="Napoletana" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 42.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Tonno -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/93/44/3e/93443e7d168dbdfe01244fc2f25cc1f4.jpg" alt="Tonno" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tonno</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, tuna chunks, onions, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A coastal favorite combining flaked tuna and sweet, thinly sliced red onions over a cheesy base.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Diavola -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/b2/ff/4c/b2ff4cdb4165b9d6a2aac915fc4325ed.jpg" alt="Diavola" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Diavola</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, spicy salami, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A fiery pizza loaded with slices of spicy Italian pepperoni/salami and crushed chili flakes.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Capricciosa -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/236x/b8/63/3a/b8633a5cd2c935c1c629bc8c7866aed2.jpg" alt="Capricciosa" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Capricciosa</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, mozzarella, mushrooms, ham, artichokes, olives</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A fully loaded, traditional "capricious" pizza offering a savory mix of ham, mushrooms, artichokes, and black olives.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 56.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Calzone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/236x/be/22/fe/be22feda81894e96e7e861ba476e7866.jpg" alt="Calzone" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Calzone</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Folded pizza dough, ricotta, ham, mozzarella</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A spectacular golden, folded crescent-moon pizza turnover stuffed to the brim with oozing cheese and ham.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 54.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Pizza Ciao -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/a1/d0/b2/a1d0b20e027eb193c7293123b697e0ce.jpg" alt="Pizza Ciao" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Pizza Ciao</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Chef's special toppings, mozzarella, prosciutto</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">The signature house pizza loaded with premium cured meats, fresh greens, and artisan cheese.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Ai Fichi -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/236x/15/00/bd/1500bde33000062223d54f9217cac2e7.jpg" alt="Ai Fichi" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Ai Fichi</h3>
                            <span class="dietary-badge">Vegetarian Option</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Mozzarella, sweet dried figs, gorgonzola, prosciutto</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A sophisticated balance of sweet and savory combining dried figs, pungent blue cheese, and salty ham strips.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 58.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Burrata e Rucola -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/ff/65/a9/ff65a9ea4cbe99d7eba340831f0d5aba.jpg" alt="Burrata e Rucola" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Al Salmone -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/40/16/07/401607cb1b6e9080e255e6bca3c51a98.jpg" alt="Al Salmone" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Al Salmone</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Smoked salmon, mozzarella, capers, cream</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">An elegant white-base pizza topped with smoky salmon ribbons, cream, and pops of briny capers.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 62.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Costiera -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/de/96/5b/de965b6fffac6836bca964564afc0864.jpg" alt="Costiera" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 68.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Vegetariana -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/b0/af/94/b0af9403302893bd9c611741020330fe.jpg" alt="Vegetariana" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Funghi Misti -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/2f/e8/1d/2fe81dba03b75e4c731e211d041b814a.jpg" alt="Funghi Misti" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 52.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Tropicale -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/f4/6d/d5/f46dd5b4121e8ee4bde2809a4d635192.jpg" alt="Tropicale" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tropicale</h3>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Tomato sauce, mozzarella, ham, sweet pineapple</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">The classic sweet-and-savory combo featuring diced juicy pineapples and savory cured ham.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Bianca -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/7d/7c/3e/7d7c3e2cb648c095646e499ee78a2f83.jpg" alt="Bianca" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 26.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Rossa -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/96/14/a8/9614a8b724c660abdd8a75d148b01507.jpg" alt="Rossa" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 24.00</div>
                        <button class="btn-add-cart">Add to Order</button>
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
                        <img src="https://i.pinimg.com/1200x/6b/49/0c/6b490c27c6e5bc3793008cd9a09c856c.jpg" alt="Tiramisu" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 28.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Chocolate Molten Lava Cake -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/236x/19/86/ed/1986edbbdb53b64d170c2026de24c947.jpg" alt="Chocolate Molten Lava Cake" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 32.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Cannoli -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/f1/38/56/f1385614c92ea4200b289063b4589928.jpg" alt="Cannoli" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Cannoli</h3>
                            <span class="dietary-badge">Vegetarian</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Fried pastry shell, sweet ricotta, chocolate chips</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">Crispy, fried pastry tubes filled with a sweet, creamy sheep's milk ricotta stuffing.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 24.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Pear Tarte Tatin -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/8f/2e/35/8f2e35b58ea5d86ade2dcbac43caa298.jpg" alt="Pear Tarte Tatin" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 30.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Panna Cotta -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/41/f1/f8/41f1f85df2a0bc84b5a009b712ac9671.jpg" alt="Panna Cotta" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Panna Cotta</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                            <span class="dietary-badge">Nut-Free</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Heavy cream, vanilla bean, berry coulis</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A silky, molded chilled cream dessert flavored with vanilla bean and served with a transiently tart berry sauce.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 24.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Crème Brûlée -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/3c/05/b0/3c05b024c5c51d32ad8eba27cdc6e512.jpg" alt="Crème Brûlée" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 26.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Homemade Gelato -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/7a/da/fc/7adafc8e1a03110bc2817323eb5d2d7e.jpg" alt="Homemade Gelato" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 12.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Sorbetto -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/62/fe/71/62fe7111d95aeb3a5bd005224e401f6b.jpg" alt="Sorbetto" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 22.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Cheese Platter -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/91/4f/4e/914f4eebc9af5922082bc9d94011dd28.jpg" alt="Cheese Platter" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Cheese Platter</h3>
                            <span class="dietary-badge">Vegetarian</span>
                        </div>
                        <p class="text-muted small mb-2"><em>Selection of artisanal cheeses, honey, crackers</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif;">A curated board of Italian cheeses varying from soft to hard, served alongside sweet honey and crisp crackers.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 48.00</div>
                        <button class="btn-add-cart">Add to Order</button>
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
                        <img src="https://i.pinimg.com/736x/08/5c/e1/085ce167cbed682128ae1455234f885e.jpg" alt="Espresso" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 10.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Macchiato -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/ea/3a/c9/ea3ac9030ff78175db4f8e6cda043e55.jpg" alt="Macchiato" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Macchiato</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A classic shot of rich espresso "marked" with a dollop of warm, frothy milk foam.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 10.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Americano -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/42/dc/61/42dc61aa66899a5ef2cf4cf145ef9f40.jpg" alt="Americano" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 10.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Cappuccino -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/d3/89/a0/d389a04ccb1fa9f7d720c6979a723c95.jpg" alt="Cappuccino" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Cappuccino</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">Equal parts espresso, steamed milk, and a thick, luxurious layer of aerated milk foam.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Caffè Latte -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/60/3a/2d/603a2d6569ea8e2e74603111cdc40e30.jpg" alt="Caffè Latte" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Caffè Latte</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A creamy, comforting coffee made with a shot of espresso topped with plenty of steamed milk.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Mocha -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/1200x/1d/ef/45/1def45ce8f7cacba26b29ec94b37bfb8.jpg" alt="Mocha" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Mocha</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A rich, comforting fusion of strong espresso, steamed milk, and sweet dark chocolate syrup.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 18.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Hot Chocolate -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/d5/f9/63/d5f9636f55a7a30bfbce5e96c06ea5d5.jpg" alt="Hot Chocolate" class="menu-image-placeholder" />
                    </div>
                    <div class="col col-md-7 col-lg-8">
                        <div class="d-flex flex-wrap align-items-center gap-2 mb-1">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Hot Chocolate</h3>
                            <span class="dietary-badge">Vegetarian</span>
                            <span class="dietary-badge">Gluten-Free</span>
                        </div>
                        <p class="text-secondary small mb-0 font-sans">A thick, velvety, and deeply decadent European-style drinking chocolate.</p>
                    </div>
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Tea -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/4d/1d/58/4d1d58ffc1fe0f08d4b9f0e682e6332f.jpg" alt="Tea" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 12.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Fresh Juice -->
                <div class="row align-items-center mb-5 pb-4 border-bottom border-light g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/02/56/ab/0256abe44a6b4786d6bdec6b84372f0a.jpg" alt="Fresh Juice" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 16.00</div>
                        <button class="btn-add-cart">Add to Order</button>
                    </div>
                </div>

                <!-- Soft Drinks -->
                <div class="row align-items-center mb-5 g-3">
                    <div class="col-auto">
                        <img src="https://i.pinimg.com/736x/68/eb/a2/68eba25efe0554a209fc83bdbae6e050.jpg" alt="Soft Drinks" class="menu-image-placeholder" />
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
                    <div class="col-12 col-md-3 text-md-end d-flex flex-row flex-md-column justify-content-between align-items-md-end align-items-center gap-2">
                        <div class="price-tag">RM 12.00</div>
                        <button class="btn-add-cart">Add to Order</button>
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
<style>
/* Quantity selector for menu page */
.menu-order-controls {
    display: flex;
    align-items: center;
    gap: 10px;
    margin-top: 8px;
}

.menu-quantity-input {
    width: 70px;
    padding: 6px 8px;
    border: 1px solid #d6d6d6;
    border-radius: 6px;
    font-size: 0.85rem;
    text-align: center;
    font-family: sans-serif;
}

.menu-quantity-label {
    font-family: sans-serif;
    font-size: 0.65rem;
    text-transform: uppercase;
    letter-spacing: 1.5px;
    color: #777;
}

/* Rating and review display */
.menu-rating-review {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    gap: 8px;
    margin-top: 8px;
    font-family: sans-serif;
    font-size: 0.75rem;
    color: #666;
}

.rating-stars {
    color: #b3002d;
    letter-spacing: 1px;
    font-weight: 700;
}

.rating-score {
    font-weight: 700;
    color: #111;
}

.review-count {
    color: #777;
}
</style>

<script>
document.addEventListener('DOMContentLoaded', function () {
    const addButtons = document.querySelectorAll('.btn-add-cart');

    const ratings = [
        4.7, 4.7, 4.8, 4.6, 4.5,
        4.8, 4.7, 4.9, 4.6, 4.8,
        4.7, 4.9, 4.6, 4.8, 4.7,
        4.8, 4.9, 4.7, 4.6, 4.8,
        4.7, 4.8, 4.9, 4.6, 4.8,
        4.7, 4.9, 4.6, 4.8, 4.7,
        4.8, 4.7, 4.9, 4.6, 4.8,
        4.7, 4.9, 4.6, 4.8, 4.7,
        4.8, 4.7, 4.9, 4.6, 4.8,
        4.7, 4.9, 4.6, 4.8, 4.7,
        4.8, 4.7, 4.9, 4.6, 4.8,
        4.7, 4.9, 4.6, 4.8, 4.7,
        4.8, 4.7, 4.6, 4.5, 4.4
    ];

    addButtons.forEach(function (button, index) {
        const menuId = index + 1;
        const rating = ratings[index] || 4.7;
        const reviewCount = 80 + (index * 7);

        const menuRow = button.closest('.row');
        const priceColumn = button.parentElement;

        if (menuRow) {
            const descriptionBlock = menuRow.querySelector('.text-secondary');

            if (descriptionBlock && !menuRow.querySelector('.menu-rating-review')) {
                const ratingBlock = document.createElement('div');
                ratingBlock.className = 'menu-rating-review';

                ratingBlock.innerHTML =
                    '<span class="rating-stars">★ ★ ★ ★ ☆</span>' +
                    '<span class="rating-score">' + rating.toFixed(1) + '/5</span>' +
                    '<span class="review-count">(' + reviewCount + ' customer reviews)</span>';

                descriptionBlock.insertAdjacentElement('afterend', ratingBlock);
            }
        }

        if (priceColumn && !priceColumn.querySelector('.menu-order-controls')) {
            const controls = document.createElement('div');
            controls.className = 'menu-order-controls';

            controls.innerHTML =
                '<label class="menu-quantity-label">Qty</label>' +
                '<input type="number" class="menu-quantity-input" value="1" min="1" max="20">';

            priceColumn.insertBefore(controls, button);
        }

        button.addEventListener('click', function () {
            const quantityInput = priceColumn.querySelector('.menu-quantity-input');
            let quantity = 1;

            if (quantityInput && quantityInput.value) {
                quantity = parseInt(quantityInput.value);

                if (isNaN(quantity) || quantity < 1) {
                    quantity = 1;
                }
            }

            const form = document.createElement('form');
            form.method = 'post';
            form.action = '<%= request.getContextPath() %>/OrderServlet';

            const actionInput = document.createElement('input');
            actionInput.type = 'hidden';
            actionInput.name = 'action';
            actionInput.value = 'add';

            const menuIdInput = document.createElement('input');
            menuIdInput.type = 'hidden';
            menuIdInput.name = 'menu_id';
            menuIdInput.value = menuId;

            const quantityHiddenInput = document.createElement('input');
            quantityHiddenInput.type = 'hidden';
            quantityHiddenInput.name = 'quantity';
            quantityHiddenInput.value = quantity;

            form.appendChild(actionInput);
            form.appendChild(menuIdInput);
            form.appendChild(quantityHiddenInput);

            document.body.appendChild(form);
            form.submit();
        });
    });
});
</script>

<jsp:include page="footer.jsp" />