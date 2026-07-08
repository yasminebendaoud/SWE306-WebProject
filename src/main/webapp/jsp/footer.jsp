<style>
.footer-custom{
    background:#000;
    color:#999;
    padding:40px 0;
}

.footer-inner{
    max-width:1400px;
    margin:0 auto;
    display:flex;
    justify-content:space-evenly;
    align-items:center;
    padding:0 20px;
    text-align:center;
    font-family:'Montserrat',sans-serif;
    font-size:0.85rem;
    letter-spacing:2px;
    text-transform:uppercase;
}

.footer-item{
    display:flex;
    align-items:center;
    justify-content:center;
    gap:8px;
    cursor:pointer;
    transition:.3s;
    white-space:nowrap;
}

.footer-logo{
    color:#b3002d;
    font-weight:700;
}

.footer-icon{
    display:none;
    font-size:1.2rem;
    color:#999;
}

.footer-short{
    display:none;
}

.footer-full{
    display:inline;
}

/* ---------- MOBILE ---------- */

@media (max-width:768px){

    .footer-inner{
        justify-content:space-evenly;
    }

    .footer-logo .footer-full{
        display:none;
    }

    .footer-logo .footer-short{
        display:inline;
    }

    .footer-item:not(.footer-logo) .footer-full{
        display:none;
    }

    .footer-item:not(.footer-logo) .footer-icon{
        display:inline;
    }

    .footer-item.active .footer-full{
        display:inline;
    }

    .footer-item.active .footer-icon{
        display:none;
    }

}
</style>

<footer class="footer-custom">

    <div class="footer-inner">

        <!-- Logo -->
        <span class="footer-item footer-logo active" onclick="footerExpand(this)">
            <span class="footer-short">LV</span>
            <span class="footer-full">LUNA E VINO</span>
        </span>

        <!-- Location -->
        <span class="footer-item" onclick="footerExpand(this)">
            <i class="fa-solid fa-location-dot footer-icon"></i>
            <span class="footer-full">DENGKIL, SELANGOR, MALAYSIA</span>
        </span>

        <!-- Email -->
        <span class="footer-item" onclick="footerExpand(this)">
            <i class="fa-solid fa-envelope footer-icon"></i>
            <span class="footer-full">CONCIERGE@LUNAEVINO.COM</span>
        </span>

        <!-- Copyright -->
        <span class="footer-item" onclick="footerExpand(this)">
            <i class="fa-regular fa-copyright footer-icon"></i>
            <span class="footer-full">© 2026 LUNA E VINO</span>
        </span>

        <!-- Credits -->
        <span class="footer-item" onclick="footerExpand(this)">
            <i class="fa-solid fa-code footer-icon"></i>
            <span class="footer-full">EDITORIAL CODESECTION</span>
        </span>

    </div>

</footer>

<script>

function footerExpand(item){

    if(window.innerWidth > 768){
        return;
    }

    document.querySelectorAll(".footer-item").forEach(function(el){
        el.classList.remove("active");
    });

    item.classList.add("active");

}

</script>