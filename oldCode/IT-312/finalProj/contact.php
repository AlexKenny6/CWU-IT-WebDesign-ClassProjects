<?php require_once("resources/config.php");  ?>

<?php include(TEMPLATE_FRONT . DS . "header.php");  ?>

         <!-- Contact Section -->

        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2><hr>
                    
                        <div class="col-md-7">
                            <div class="map">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1258.3913967739536!2d-120.53862417627877!3d47.00305863600708!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x5499f3b9dd72a735%3A0x6e52ba0bf840faf0!2sStudent%20Union%20%26%20Recreation%20Center!5e0!3m2!1sen!2sus!4v1574576618231!5m2!1sen!2sus" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                            </div>
                        </div>
                        <div class="col-md-5">
                            <p style="color:black" class="text-center">We are looking forward to hearing from you.
                                Please feel free to get in touch via the form or contact links below, we will get back to you as soon as possible.
                                Thank you and have a great day!</p>
                            <div class="address" class="text-center">
                                <br>
                                <p style="color:black">400 E University Way<br>Ellensburg, WA. 98926, USA</p>
                            </div>   
                        </div> 

                    <!-- Message Sent if email is successfully sent -->
                    <h3 class="section-subheading">
                        <?php display_message(); ?>
                    </h3>
                </div>
            </div>
            <br>
            <br>
            <br>
            <div class="row">
                <div class="col-lg-12">

                    <?php send_message(); ?>

                    <form action="" method="post" name="sentMessage" id="contactForm" >
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" name="name" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" name="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="text" name="subject" class="form-control" placeholder="Your Subject *" id="subject" required data-validation-required-message="Please enter your subject.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" name="message" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" name="submit" class="btn btn-xl">Send Message</button>
                            </div>
                            <br><br><br>
                        </div>
                    </form>


                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->
<?php include(TEMPLATE_FRONT .  "/footer.php");?>