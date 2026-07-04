<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="header.jsp" />

<style>
/* Custom UI styling continuity quirks */
.text-brand-red {
    color: #b3002d !important;
}
.grid-border-bottom {
    border-bottom: 1px solid #000;
}
</style>

<!-- Global Context Sub-Header (Stays persistent across views) -->
<div class="container-fluid grid-border-bottom text-center py-4 bg-white">
    <p class="mb-0 small text-muted font-sans text-uppercase tracking-widest">
        Ristorante <span class="text-brand-red fw-bold">"Luna e Vino"</span> is a real piece of Italy in the heart of the city
    </p>
</div>

<!-- ========================================== -->
<!-- RESERVATIONS DISPLAY (COMING SOON)        -->
<!-- ========================================== -->
<div class="container my-5 py-5">
    <div class="row justify-content-center text-center">
        <div class="col-md-8 col-lg-6 bg-white border border-dark p-5">
            <span class="text-uppercase text-brand-red font-sans fw-bold tracking-widest d-block mb-3" style="font-size: 0.8rem;">Prenotazioni</span>
            <h2 class="display-4 fw-normal text-dark mb-4">Reservations Portal</h2>
            
            <hr class="border-dark my-4 mx-5">
            
            <p class="font-script text-brand-red display-5 my-3">Coming Soon</p>
            <p class="text-muted small mb-4" style="line-height: 1.8; font-family: sans-serif;">
                We are currently engineering our private ticketing system to ensure optimal desk allocation and seamless degustation tailoring. Bookings for the next culinary season will unlock shortly.
            </p>
            
            <div class="p-3 bg-light border border-dark-subtle mt-4">
                <p class="mb-0 font-sans text-uppercase small text-muted tracking-wider" style="font-size: 0.7rem;">
                    Priority Access Notice: Registered estate accounts will receive early booking windows via dispatch wire.
                </p>
            </div>
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />