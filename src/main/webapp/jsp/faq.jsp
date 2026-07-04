<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<style>
/* SPA Engine State Utilities */
.spa-section {
    display: none; /* Hide sections by default */
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
    padding: 12px 20px;
    display: inline-block;
    transition: color 0.2s ease;
}

.spa-nav-link:hover, .spa-nav-link.active-route {
    color: #b3002d !important; /* Brand red accent highlight */
    font-weight: 700;
}

/* Custom UI styling continuity quirks */
.hero-script-heading {
    z-index: 3;
}
.text-brand-red {
    color: #b3002d !important;
}
.grid-border-bottom {
    border-bottom: 1px solid #000;
}
.grid-border-right {
    border-right: 1px solid #000;
}
@media (max-width: 767.98px) {
    .grid-border-right {
        border-right: none;
        border-bottom: 1px solid #000;
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
<!-- LOCAL SPA SUB-NAVIGATION BAR               -->
<!-- ========================================== -->
<nav class="spa-nav-bar">
    <div class="container d-flex justify-content-center gap-2">
        <a href="#about" class="spa-nav-link" data-route="about">About Us</a>
        <a href="#contact" class="spa-nav-link" data-route="contact">Contact Us</a>
    </div>
</nav>

<!-- ========================================== -->
<!-- VIEW 1: HOME PLATFORM DISPLAY              -->
<!-- ========================================== -->
<div id="home-view" class="spa-section active-view">
    <header class="container my-5 py-3 position-relative">
        <div class="row justify-content-center align-items-center">
            <div class="col-10 col-sm-8 col-md-4 position-relative text-center">
                <h1 class="position-absolute w-100 font-script text-brand-red display-1 text-nowrap start-50 translate-middle-x hero-script-heading">
                    Luna e Vino
                </h1>
                <div class="position-relative hero-image-wrapper">
                    <img src="https://images.unsplash.com/photo-1544025162-d76694265947?q=80&w=600" 
                         class="img-fluid border border-dark" alt="Luna e Vino Presentation">
                </div>
            </div>
        </div>
        
        <div class="container d-flex justify-content-between font-sans text-muted px-4 mt-5 pt-3 border-top border-dark-subtle" style="font-size: 0.75rem;">
            <div>EST. 2016 — 2026</div>
            <div class="text-brand-red fw-bold">MICHELIN SELECTION</div>
            <div>EN / IT</div>
        </div>
    </header>
</div>

<!-- ========================================== -->
<!-- VIEW 2: PHILOSOPHY, ABOUT & INQUIRIES      -->
<!-- ========================================== -->
<div id="about-view" class="spa-section">
    <!-- About Header Title -->
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">La Nostra Storia</span>
        <h2 class="display-3 fw-normal text-dark">Radical Heritage</h2>
    </div>

    <!-- About Content -->
    <div class="container my-5 py-3">
        <div class="row g-5 align-items-center">
            <div class="col-md-5 px-4">
                <h3 class="font-script text-brand-red display-3 mb-0">The Philosophy</h3>
                <h4 class="h2 fw-normal mb-4">Simplicity requires the absolute highest standard of execution.</h4>
                <p class="text-muted small mb-4" style="line-height: 1.8; font-family: sans-serif;">
                    At Luna e Vino, we eliminate the unnecessary noise of traditional fine dining. Our kitchen operates on an avant-garde spectrum, utilizing hyper-local Malaysian micro-climates to source ingredients that honor historic Italian preparations. Every plate is an architectural composition of texture, memory, and flavor.
                </p>
                <div class="border-top border-dark pt-3">
                    <span class="font-sans text-uppercase fw-bold text-dark d-block">Matteo Rossi</span>
                    <span class="text-muted font-sans small text-uppercase tracking-wider">Executive Chef & Visionary</span>
                </div>
            </div>
            
            <div class="col-md-6 offset-md-1">
                <div class="p-3 bg-white border border-dark">
                    <img src="https://images.unsplash.com/photo-1556910103-1c02745aae4d?q=80&w=800" 
                         class="img-fluid w-100" alt="Chef crafting fresh culinary art" style="filter: contrast(1.05) grayscale(20%);">
                </div>
            </div>
        </div>
    </div>

    <!-- Embedded Guest Inquiries Title Segment -->
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white mt-5">
        <span class="text-uppercase text-muted font-sans tracking-widest d-block mb-2">Informazioni</span>
        <h2 class="display-4 fw-normal text-dark">Guest Inquiries</h2>
    </div>

    <!-- Embedded Guest Inquiries Content Accordion Elements -->
    <div class="container my-5 py-4">
        <div class="row justify-content-center">
            <div class="col-lg-8 bg-white border border-dark p-4 p-md-5">
                <div class="pb-4 mb-4 border-bottom border-dark-subtle">
                    <div class="d-flex justify-content-between align-items-center">
                        <h3 class="h5 fw-normal text-dark mb-2">What is your dress code policy?</h3>
                        <span class="text-brand-red font-script h3 mb-0">01</span>
                    </div>
                    <p class="text-muted small mb-0 ps-3 border-start border-danger" style="font-family: sans-serif;">
                        We enforce a strict Smart Elegant dress code. Tailored attire, evening wear, and formal footwear are highly encouraged. Please refrain from sportswear, beachwear, or casual sandals.
                    </p>
                </div>

                <div class="pb-4 mb-4 border-bottom border-dark-subtle">
                    <div class="d-flex justify-content-between align-items-center">
                        <h3 class="h5 fw-normal text-dark mb-2">Can you accommodate severe dietary conditions?</h3>
                        <span class="text-brand-red font-script h3 mb-0">02</span>
                    </div>
                    <p class="text-muted small mb-0 ps-3 border-start border-danger" style="font-family: sans-serif;">
                        Yes. Our Degustazione framework can be dynamically engineered for vegan, gluten-free, or specific allergen requirements. Please mention any critical conditions at least 48 hours in advance via your profile booking portal.
                    </p>
                </div>

                <div class="pb-4 mb-2">
                    <div class="d-flex justify-content-between align-items-center">
                        <h3 class="h5 fw-normal text-dark mb-2">How do pre-orders and digital cart processing work?</h3>
                        <span class="text-brand-red font-script h3 mb-0">03</span>
                    </div>
                    <p class="text-muted small mb-0 ps-3 border-start border-danger" style="font-family: sans-serif;">
                        Registered members can curate their fine-dining menu alternatives, select culinary add-ons, or lock in wine pairings directly through their authenticated digital checkout portal before arriving at the estate.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- VIEW 3: CONTACT DESK ARCHITECTURE          -->
<!-- ========================================== -->
<div id="contact-view" class="spa-section">
    <div class="container-fluid grid-border-bottom text-center py-5 bg-white">
        <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-2">Contatti</span>
        <h2 class="display-4 fw-normal text-dark">Connect With the Estate</h2>
    </div>

    <div class="container-fluid px-0">
        <div class="row g-0 border-bottom border-dark">
            <div class="col-md-5 bg-white p-4 p-lg-5 grid-border-right d-flex flex-column justify-content-between contact-sidebar-pane">
                <div>
                    <h3 class="font-script text-brand-red display-4 mb-3">Luna e Vino</h3>
                    <p class="text-muted small mb-5" style="font-family: sans-serif;">For exclusive corporate buyouts, press inquiries, or private chef staging requests, please reach out directly via our digital concierge desk lines.</p>
                    <div class="mb-4">
                        <span class="font-sans text-uppercase text-muted d-block small">The Location</span>
                        <span class="text-dark fw-normal">Dengkil, Selangor, Malaysia</span>
                    </div>
                    <div>
                        <span class="font-sans text-uppercase text-muted d-block small">Direct Line</span>
                        <span class="text-dark fw-normal">+60 3-8888 1234</span>
                    </div>
                </div>
                <div class="pt-4 border-top border-dark-subtle text-muted font-sans small">
                    RESPONSE HORIZON: WITHIN 12 HOURS
                </div>
            </div>

            <div class="col-md-7 p-4 p-lg-5 bg-light d-flex align-items-center">
                <form id="contactForm" onsubmit="return handleFormSubmission(event)" class="w-100" novalidate>
                    <h3 class="h4 text-uppercase font-sans tracking-wider text-dark mb-4">Send a Message</h3>
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label font-sans text-muted text-uppercase" style="font-size:0.65rem;">Full Name</label>
                            <input type="text" id="clientName" class="form-control rounded-0 border-dark bg-white" placeholder="e.g. Madeline">
                            <div class="text-brand-red font-sans small mt-1 d-none" id="nameError">Please enter your name.</div>
                        </div>
                        <div class="col-md-6">
                            <label class="form-label font-sans text-muted text-uppercase" style="font-size:0.65rem;">Email Address</label>
                            <input type="email" id="clientEmail" class="form-control rounded-0 border-dark bg-white" placeholder="name@example.com">
                            <div class="text-brand-red font-sans small mt-1 d-none" id="emailError">Please enter a valid email address.</div>
                        </div>
                        <div class="col-12">
                            <label class="form-label font-sans text-muted text-uppercase" style="font-size:0.65rem;">Your Inquiry Message</label>
                            <textarea id="clientMessage" rows="4" class="form-control rounded-0 border-dark bg-white" placeholder="Specify your architectural dining expectations..."></textarea>
                            <div class="text-brand-red font-sans small mt-1 d-none" id="messageError">Message cannot be empty.</div>
                        </div>
                        <div class="col-12 pt-3">
                            <button type="submit" class="btn btn-dark rounded-0 bg-black text-uppercase tracking-widest font-sans w-100 py-3" style="font-size: 0.75rem;">
                                Transmit Inquiry
                            </button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- ========================================== -->
<!-- CORE ENGINE: INTERACTIVE SPA JAVASCRIPT   -->
<!-- ========================================== -->
<script>
/**
 * SPA Router Engine Configuration
 */
const SPADomRouter = {
    routes: {
        '#home': 'home-view',
        '#about': 'about-view',
        '#contact': 'contact-view'
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
        const currentHash = window.location.hash || '#home';
        const targetViewId = this.routes[currentHash] || 'home-view';

        // 1. Hide all application sections
        document.querySelectorAll('.spa-section').forEach(section => {
            section.classList.remove('active-view');
        });

        // 2. Render targeted template view
        const activeTarget = document.getElementById(targetViewId);
        if (activeTarget) {
            activeTarget.classList.add('active-view');
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }

        // 3. Keep sub-nav indicators up to date
        document.querySelectorAll('.spa-nav-link').forEach(link => {
            link.classList.remove('active-route');
            if (link.getAttribute('href') === currentHash) {
                link.classList.add('active-route');
            }
        });
    }
};

/**
 * Form Validator Infrastructure Processing
 */
function validateContactForm() {
    let isValid = true;
    const name = document.getElementById("clientName");
    const email = document.getElementById("clientEmail");
    const msg = document.getElementById("clientMessage");
    const nameErr = document.getElementById("nameError");
    const emailErr = document.getElementById("emailError");
    const msgErr = document.getElementById("messageError");
    
    [nameErr, emailErr, msgErr].forEach(el => el.classList.add("d-none"));
    [name, email, msg].forEach(el => el.classList.remove("border-danger"));

    if (name.value.trim() === "") {
        nameErr.classList.remove("d-none");
        name.classList.add("border-danger");
        isValid = false;
    }
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email.value.trim())) {
        emailErr.classList.remove("d-none");
        email.classList.add("border-danger");
        isValid = false;
    }
    if (msg.value.trim() === "") {
        msgErr.classList.remove("d-none");
        msg.classList.add("border-danger");
        isValid = false;
    }
    return isValid;
}

function handleFormSubmission(event) {
    event.preventDefault();
    if (validateContactForm()) {
        alert("Inquiry transmitted securely through system registry.");
        document.getElementById("contactForm").reset();
    }
    return false;
}

document.addEventListener('DOMContentLoaded', () => {
    SPADomRouter.init();
});
</script>

<jsp:include page="footer.jsp" />