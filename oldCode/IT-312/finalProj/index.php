<?php require_once("resources/config.php");  ?>

<?php include(TEMPLATE_FRONT . DS . "header.php");  ?>

    <!-- Page Content -->
    <div class="container">
            <div class="text-center">
                <h2>Star Wars Merch</h2>
                <h4>The only place in the <u>GALAXY</u> to buy authentic lightsabers</h4>

            </div>
        <div class="row">
            <!-- Categories go here (Below lol)-->
            <?php include(TEMPLATE_FRONT . DS . "side_nav.php");  ?>
            <div class="col-md-9">
                <br>
                <div class="row carousel-holder">
                    <!-- carousel code goes here (below)-->
                    <?php include(TEMPLATE_FRONT . DS . "slider.php");  ?>
                </div>
                <!-- put this on categories page
                <div class="row">
                    <?php get_products();  ?>
                </div>
                -->
                <!-- End of row -->
            </div><br><br>
        </div>
    </div>
    <!-- /.container -->
    <br><br><br>
    
    <!-- Beginning of Quotes/Testimonials -->
    <br>
    <br>
    <div class="slideshow-container">
        <h3 class="m_3 text-center">Testimonials</h3>
        <hr>
        <!-- Full-width slides/quotes -->
        <div class="mySlides">
            <q>I love this place! Great items to pick from.</q>
            <p class="author">- Tyler</p>
        </div>

        <div class="mySlides">
            <q>Great products, I really loved the green lightsaber and was a prefect holiday gift.</q>
            <p class="author">- Bobby</p>
        </div>
        <!-- Dots/bullets/indicators -->
        <div class="dot-container">
            <span class="dot" onclick="currentSlide(1)"></span>
            <span class="dot" onclick="currentSlide(2)"></span>
        </div>
    </div>
    <div>
        <style>
            * Slideshow container */
                .slideshow-container {

                position: relative;
                background: #f1f1f1f1;

                }
                /* Slides */
                .mySlides {

                display: none;
                padding: 80px;
                text-align: center;

                }
                /* On hover, add a black background color with a little bit see-through */
                .prev:hover, .next:hover {

                background-color: rgba(0,0,0,0.8);
                color: white;

                }
                /* The dot/bullet/indicator container */
                .dot-container {

                text-align: center;
                padding: 20px;
                background: #ddd;

                }
                /* The dots/bullets/indicators */
                .dot {

                cursor: pointer;
                height: 15px;
                width: 15px;
                margin: 0 2px;
                background-color: #bbb;
                border-radius: 50%;
                display: inline-block;
                transition: background-color 0.6s ease;

                }
                /* Add a background color to the active dot/circle */
                .active, .dot:hover {

                background-color: #717171;

                }
                /* Add an italic font style to all quotes */
                q {font-style: italic;}

                /* Add a blue color to the author */
                .author {color: cornflowerblue;}

        </style>

        <script>
            var slideIndex = 1;
            showSlides(slideIndex);
            speed: 500,

            function plusSlides(n) {

                showSlides(slideIndex += n);

            } // func plusSlides end

            function currentSlide(n) {

                showSlides(slideIndex = n);

            } // func currentSlide end

            function showSlides(n) {

                var i;
                var slides = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("dot");
                if (n > slides.length) {slideIndex = 1}
                if (n < 1) {slideIndex = slides.length}

                for (i = 0; i < slides.length; i++) {

                slides[i].style.display = "none";

                } // for end

                for (i = 0; i < dots.length; i++) {

                dots[i].className = dots[i].className.replace(" active", "");

                } // for end

                slides[slideIndex-1].style.display = "block";
                dots[slideIndex-1].className += " active";

            } // func showSlides end

        </script>
    </div> 
    <!-- End of CSS and JS -->


    <!-- End of Quotes/Testimonials -->

<?php include(TEMPLATE_FRONT . DS . "footer.php");  ?>
