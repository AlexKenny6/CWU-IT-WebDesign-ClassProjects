<?php require_once("resources/config.php");  ?>

<?php include(TEMPLATE_FRONT . DS . "header.php");  ?>


    <!-- Page Content -->
<div class="container">

       <!-- Side Navigation -->
       <?php include(TEMPLATE_FRONT . DS . "side_nav.php");  ?>

        <?php    
        
        $query = query(" SELECT * FROM products WHERE product_id = " . escape_string($_GET['id']) ." ");
        confirm($query);

        while($row = fetch_array($query)): 

        ?>


    <div class="col-md-9">

        <!--Row For Image and Short Description-->

        <div class="row">

            <div class="col-md-7">
                <img class="img-responsive" src="../resources/<?php echo display_image($row['product_image']); ?>" alt="">
            </div>

            <div class="col-md-5">

                <div class="thumbnail">
         

                    <div class="caption-full">
                        <h4><a href="#"><?php echo $row['product_title']; ?></a> </h4>
                        <hr>
                        <h4 class=""><?php echo "&#36;" . $row['product_price'];  ?></h4>

                        <!--<div class="ratings">
                            <p>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                                4.0 stars
                            </p>
                        </div>-->
    
                        <!-- Short Description Below -->
                        <br>
                        <p class="text-danger">ONLY <?php echo $row['product_quantity']; ?> LEFT IN STOCK!</p>
                        <br>

                        <center><img src="resources/uploads/gif.gif" style="width:250px; height: 150px;" alt="Sale gif"></center>
                        <form action="">
                            <div class="form-group">
                                <a href="../resources/cart.php?add=<?php echo $row['product_id']; ?>" type="submit" class="btn btn-primary">BUY NOW</a>
                            </div>
                        </form>

                    </div>
 
                </div>

            </div>


        </div><!--Row For Image and Short Description-->
        <hr>

        <!--Row for Tab Panel-->

        <div class="row">

            <div role="tabpanel">

                <!--<img src="resources/uploads/gif.gif" style="width:150px; height: 150px" alt="Sale gif">-->
                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                    <!--<li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>-->
                </ul>

        <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="home">
                    <br>
                    <!-- Big Description Below -->
                    <p style="color:black"><?php echo nl2br($row['product_description']); ?></p>
                </div>
            </div>

        </div>


    </div><!--Row for Tab Panel-->

    </div><!-- col-md-9 ends here -->

    <?php endwhile; ?>

    

</div>
    <!-- /.container -->

    <div class="container">
        <div class="rows">
            <h3 class="text-center">Suggested Products</h3><hr>
                <?php suggested_products(); ?>
        </div>
    </div>

<?php include(TEMPLATE_FRONT . DS . "footer.php");  ?>
