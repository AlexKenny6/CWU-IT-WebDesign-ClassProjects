<?php require_once("resources/config.php");  ?>

<?php include(TEMPLATE_FRONT . DS . "header.php");  ?>

    <!-- Page Content -->
    <div class="container">


        
        <?php    
        
        $query = query(" SELECT * FROM categories WHERE cat_id = " . escape_string($_GET['id']) ." ");
        confirm($query);

        while($row = fetch_array($query)): 

        ?>

        <!-- Jumbotron Header -->
        <header class="jumbotron hero-spacer text-center">
            <h1><?php echo $row['cat_title']; ?></h1>
            <p style="color:black">
            <?php echo $row['cat_description']; ?>
            </p>
        </header>
        <hr>

        <!-- /.row -->

        <!-- Page Features -->
        <div class="row text-center">

           <?php 
           
            get_products_in_cat_page(); 
           
           ?>

        </div>
        <!-- /.row -->


    </div>

    <?php endwhile; ?>
    <!-- /.container -->

    <?php include(TEMPLATE_FRONT . DS . "footer.php");  ?>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
