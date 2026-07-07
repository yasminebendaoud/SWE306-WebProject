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

.footer-logo{
    color:#b3002d;
    font-weight:700;
}

.footer-text{
    display:inline;
}

.footer-icon{
    display:none;
    font-size:1.2rem;
    color:#999;
}

/* Mobile */
@media (max-width:768px){

    .footer-inner{
        justify-content:space-evenly;
    }

    .footer-text{
        display:none;
    }

    .footer-icon{
        display:inline;
    }

    .footer-logo{
        font-size:0.9rem;
    }

}
</style>

<footer class="footer-custom">

    <div class="footer-inner">

        <span class="footer-logo">
            LUNA E VINO
        </span>

        <span>
            <span class="footer-text">DENGKIL, SELANGOR, MALAYSIA</span>
            <i class="fa-solid fa-location-dot footer-icon"></i>
        </span>

        <span>
            <span class="footer-text">CONCIERGE@LUNAEVINO.COM</span>
            <i class="fa-solid fa-envelope footer-icon"></i>
        </span>

        <span>
            <span class="footer-text">© 2026 LUNA E VINO</span>
            <i class="fa-regular fa-copyright footer-icon"></i>
        </span>

        <span>
            <span class="footer-text">EDITORIAL CODESECTION</span>
            <i class="fa-solid fa-code footer-icon"></i>
        </span>

    </div>

</footer>
