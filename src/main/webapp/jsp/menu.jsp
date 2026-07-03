<jsp:include page="header.jsp" />

<div class="container-fluid px-0 border-bottom border-dark">
    <div class="row g-0">
        
        <!-- Left Side: Dramatic Visual Pane (Matches image_ce0b9f.jpg layout) -->
        <div class="col-md-6 d-none d-md-block position-relative grid-border-right" style="min-height: 85vh;">
            <div class="sticky-top" style="top: 60px; height: calc(85vh - 60px); width: 100%;">
                <img src="https://images.unsplash.com/photo-1534111762495-20698442d574?q=80&w=800" 
                    class="w-100 h-100 object-fit-cover" alt="Fine Dining Experience" style="filter: contrast(1.1) brightness(0.95);">
            </div>
        </div>
        
        <!-- Right Side: Clean Structured Interactive Menu Streams -->
        <div class="col-md-6 bg-white d-flex flex-column justify-content-between">
            <div>
                
                <!-- Menu Entry Frame 1 -->
                <div class="p-4 p-lg-5 grid-border-bottom">
                    <div class="d-flex justify-content-between font-sans text-muted mb-2" style="font-size: 0.7rem;">
                        <div>IL PRIMO</div>
                        <div class="text-brand-red fw-bold">RM 135.00</div>
                    </div>
                    <h3 class="h4 fw-normal text-dark mb-3">Gastronomic Tagliolini Journey</h3>
                    <ul class="text-muted small ps-3 mb-4" style="line-height: 1.7; font-family: sans-serif; list-serif: none;">
                        <li>- Hand-cut artisanal pasta strings</li>
                        <li>- Shaved Umbrian winter truffles</li>
                        <li>- Cultured alpine butter emulsification</li>
                    </ul>
                    
                    <!-- Integration Parameters for Members 2 and 3 -->
                    <div class="row g-2 align-items-center">
                        <div class="col-7">
                            <select class="form-select form-select-sm border-dark rounded-0 font-sans">
                                <option selected>Standard Profile</option>
                                <option>Double Truffle Shaving (+RM 60)</option>
                            </select>
                        </div>
                        <div class="col-5">
                            <button class="btn btn-dark btn-sm rounded-0 w-100 font-sans bg-black text-uppercase" style="font-size: 0.65rem; padding: 8px 0;">
                                Add to Bag
                            </button>
                        </div>
                    </div>
                </div>

                <!-- Menu Entry Frame 2 -->
                <div class="p-4 p-lg-5 grid-border-bottom">
                    <div class="d-flex justify-content-between font-sans text-muted mb-2" style="font-size: 0.7rem;">
                        <div>IL SECONDO</div>
                        <div class="text-brand-red fw-bold">RM 185.00</div>
                    </div>
                    <h3 class="h4 fw-normal text-dark mb-3">The Magic of Wagyu Crudo</h3>
                    <ul class="text-muted small ps-3 mb-4" style="line-height: 1.7; font-family: sans-serif;">
                        <li>- Smoked Miyazaki A5 beef ribboning</li>
                        <li>- Wild caper berry preserves</li>
                        <li>- Whipped yolk gel and crisp flatbread</li>
                    </ul>
                    <div class="row g-2 align-items-center">
                        <div class="col-7">
                            <select class="form-select form-select-sm border-dark rounded-0 font-sans">
                                <option selected>Standard Profile</option>
                                <option>With Wine Pairing (+RM 45)</option>
                            </select>
                        </div>
                        <div class="col-5">
                            <button class="btn btn-dark btn-sm rounded-0 w-100 font-sans bg-black text-uppercase" style="font-size: 0.65rem; padding: 8px 0;">
                                Add to Bag
                            </button>
                        </div>
                    </div>
                </div>
                
            </div>
            
            <!-- Bottom Signature Branding Footer Item inside the column -->
            <div class="p-4 p-lg-5 d-flex justify-content-between align-items-center bg-light">
                <span class="font-script text-dark display-6">Luna e Vino</span>
                <span class="border border-dark rounded-circle p-2 d-inline-flex align-items-center justify-content-center" style="width: 35px; height: 35px;">
                    <i class="fa-solid fa-star text-brand-red small"></i>
                </span>
            </div>
            
        </div>
    </div>
</div>

<jsp:include page="footer.jsp" />