<?php require_once("../resources/config.php");  ?>
    <?php include(TEMPLATE_FRONT . DS . "header.php");  ?>

    <?php
        process_transaction();
    ?>
        <!-- Page Content -->
        <div class="container">
            <h1 class="text-center">THANK YOU</h1><br>
            <h4 class="text-center">We Appreciate Your Business and Hope That Your Experience on Our Store was Exceptional!</h4>
            <br>
            <p style="color:black" class="text-center">You will be getting an email with a receipt shortly :)</p>
            <br>
            <h4 class="text-center">If You Would Like to Continue Shopping, Click <a href="shop.php">Here</a> or If You Would Like to Contact Us, Click <a href="contact.php">Here</a>!</h4>
            <br>
            <br>
            <br>
            <br>
            <br>
        </div>
        <!-- /.container -->

    <?php include(TEMPLATE_FRONT . DS . "footer.php");  ?>
