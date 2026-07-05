<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<style>
/* SPA Engine State Utilities */
.spa-section {
    display: none; /* Hide courses by default */
    opacity: 0;
    transition: opacity 0.25s ease-in-out;
}

.spa-section.active-view {
    display: block !important; /* Force render current active view */
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
    color: #b3002d !important; /* Brand red accent highlight */
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
    font-size: 2.25rem; /* Enriched display sizing for script flow */
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
    width: 130px;
    height: 130px;
    object-fit: cover;
    background-color: #fdfdfd;
    border: 1px solid #000000;
}
@media (max-width: 575.98px) {
    .menu-image-placeholder {
        width: 100px;
        height: 100px;
    }
    .menu-item-title {
        font-size: 1.85rem;
    }
}
</style>

<!-- Global Context Sub-Header (Stays persistent across views) -->
<div class="container-fluid grid-border-bottom text-center py-4 bg-white">
    <p class="mb-0 small text-muted font-sans text-uppercase tracking-widest">
        Ristorante <span class="text-brand-red fw-bold">"Luna e Vino"</span> is a real piece of Italy in the heart of the city
    </p>
</div>

<!-- ========================================== -->
<!-- LOCAL MENU SUB-NAVIGATION BAR             -->
<!-- ========================================== -->
<nav class="spa-nav-bar">
    <div class="container d-flex justify-content-center gap-1 gap-sm-3">
        <a href="#antipasti" class="spa-nav-link" data-route="antipasti">Antipasti</a>
        <a href="#primi" class="spa-nav-link" data-route="primi">Primi</a>
        <a href="#secondi" class="spa-nav-link" data-route="secondi">Secondi</a>
        <a href="#dolci" class="spa-nav-link" data-route="dolci">Dolci</a>
    </div>
</nav>

<!-- ========================================== -->
<!-- SECTION 1: ANTIPASTI                      -->
<!-- ========================================== -->
<div id="antipasti-view" class="spa-section active-view">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Starters</span>
        <h2 class="display-4 fw-normal text-dark">Antipasti</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-lg-9">
                <!-- Item 1 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <img src="https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=300" class="menu-image-placeholder" alt="Carpaccio di Manzo">
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Carpaccio di Manzo</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Gluten-Free</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Wagyu beef, Parmigiano-Reggiano, black truffle</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Paper-thin slices of seared Wagyu beef drizzled with a white truffle emulsion and topped with aged cheese shards.</p>
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Fiori di Zucca Ripieni</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Vegetarian</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Zucchini blossoms, buffalo ricotta, mint</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Delicate squash blossoms stuffed with whipped herbed ricotta, lightly tempura-fried, and served over a tomato coulis.</p>
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="d-flex gap-3 gap-md-4 mb-5">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Polpo Scottato</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Gluten-Free</span>
                                <span class="dietary-badge">Dairy-Free</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Mediterranean octopus, purple potato, caper berries</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Charred octopus tentacle served over a vibrant purple potato purée, finished with a tangy caper and lemon oil.</p>
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
        <h2 class="display-4 fw-normal text-dark">Primi</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-lg-9">
                <!-- Item 1 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Risotto all'Arancia e Gamberi</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Gluten-Free</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Carnaroli rice, red prawns, Sicilian blood orange</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Creamy, slow-stirred risotto infused with citrus zest and topped with crudo-style marinated red prawns.</p>
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tortelli di Zucca</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Vegetarian</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Mantuan pumpkin, amaretto crumbs, sage brown butter</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Handmade egg pasta parcels filled with sweet pumpkin purée, tossed in a fragrant, nutty sage butter.</p>
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="d-flex gap-3 gap-md-4 mb-5">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Tagliolini al Tartufo Nero</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Vegetarian</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>House-made egg pasta, cultured butter, Umbrian black truffle</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Fine ribbons of delicate egg pasta glossy with rich mountain butter and showered with freshly shaved black truffles.</p>
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
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Second Course</span>
        <h2 class="display-4 fw-normal text-dark">Secondi</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-lg-9">
                <!-- Item 1 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Filetto di Branzino all’Acqua Pazza</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Gluten-Free</span>
                                <span class="dietary-badge">Dairy-Free</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Wild sea bass, heirloom cherry tomatoes, wild fennel</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Pan-seared sea bass fillet poached gently in a refined, aromatic "crazy water" tomato broth.</p>
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Anatra al Balsamico Invecchiato</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Gluten-Free</span>
                                <span class="dietary-badge">Dairy-Free</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Duck breast, 25-year aged balsamic, caramelized figs</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">Pan-roasted, rosy duck breast glazed with a velvety, syrupy traditional balsamic reduction and served with sweet figs.</p>
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="d-flex gap-3 gap-md-4 mb-5">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Melanzane alla Rinascimentale</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Vegetarian</span>
                                <span class="dietary-badge">Gluten-Free</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Heirloom eggplant, smoked provola, basil oil</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">A deconstructed, elegant take on eggplant parmigiana, featuring layers of baked eggplant, melted smoky cheese, and intense tomato essence.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- SECTION 4: DOLCI                           -->
<!-- ========================================== -->
<div id="dolci-view" class="spa-section">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Dessert</span>
        <h2 class="display-4 fw-normal text-dark">Dolci</h2>
    </div>
    <div class="container my-5 py-3">
        <div class="row justify-content-center">
            <div class="col-lg-9">
                <!-- Item 1 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Deconstructed Tiramisù</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Vegetarian</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Mascarpone mousse, espresso-soaked sponge, dark chocolate</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">A modern presentation of the classic, featuring airy piped mascarpone, espresso spheres, and delicate chocolate tuiles.</p>
                    </div>
                </div>
                <!-- Item 2 -->
                <div class="d-flex gap-3 gap-md-4 mb-5 pb-4 border-bottom border-light">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Panna Cotta allo Zafferano</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Vegetarian</span>
                                <span class="dietary-badge">Gluten-Free</span>
                                <span class="dietary-badge">Nut-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Heavy cream, saffron, wild berries</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">A silky, golden-hued cream gelatin infused with premium saffron strands, contrasted by a tart berry compote.</p>
                    </div>
                </div>
                <!-- Item 3 -->
                <div class="d-flex gap-3 gap-md-4 mb-5">
                    <div>
                        <div class="menu-image-placeholder d-flex align-items-center justify-content-center text-muted small font-sans bg-light">No Photo</div>
                    </div>
                    <div class="flex-grow-1">
                        <div class="d-flex flex-wrap justify-content-between align-items-center gap-2 mb-2">
                            <h3 class="menu-item-title font-script text-brand-red mb-0">Torta Caprese Rivisitata</h3>
                            <div class="d-flex gap-1">
                                <span class="dietary-badge">Vegetarian</span>
                                <span class="dietary-badge">Gluten-Free</span>
                            </div>
                        </div>
                        <p class="text-muted small mb-2"><em>Almond flour, dark chocolate, blood orange sorbet</em></p>
                        <p class="text-secondary small mb-0" style="font-family: sans-serif; line-height: 1.6;">A flourless, intensely rich chocolate and almond cake served warm alongside a refreshing, vibrant citrus sorbet.</p>
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
        '#dolci': 'dolci-view'
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