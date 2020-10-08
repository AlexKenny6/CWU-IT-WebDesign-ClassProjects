
<?php

    $upload_directory = "uploads";

    // helper functions below

    function last_id(){

        global $connection;
        return mysqli_insert_id($connection);

    }

    function redirect($location) {

        header("Location: $location");

    }

    function query($sql) {

        global $connection;
        return mysqli_query($connection, $sql);

    }

    function confirm($result) {

        global $connection;

        if(!$result) {

            die("QUERY FAILED " . mysqli_error($connection));

        }


    }

    function escape_string($string) {

        global $connection;
        return mysqli_real_escape_string($connection, $string);


    }

    function fetch_array($result) {

        return mysqli_fetch_array($result);
        
    }

    function set_message($msg){

        if(!empty($msg)) {

            $_SESSION['message'] = $msg;

        } else {

            $msg = "";

        }

    }

    function display_message(){

        if(isset($_SESSION['message'])) {

            echo $_SESSION['message'];
            unset($_SESSION['message']);

        }

    }



    /************************FRONT END FUNCTIONS*********************************************************/


    // get products function

    function get_products(){

       $query = query(" SELECT * FROM products");
       confirm($query);

        $rows = mysqli_num_rows($query);

        // Code below creates the pagination feature for product pages *********************/

        if(isset($_GET['page'])) {

            $page = preg_replace('#[^0-9]#', '', $_GET['page']);

            

        } // if end
        else {

            $page = 1;

        } // else end

        /************************** The number is $perPage = # represents the amount of products go on one page ********************/
        $perPage = 12;

        $lastPage = ceil($rows / $perPage);

        if($page < 1) {

            $page = 1;

        } // if end

        elseif($page > $lastPage) {

            $page = $lastPage;

        } // elseif end

        $middleNumbers = '';

        $sub1 = $page - 1;
        $sub2 = $page - 2;
        $add1 = $page + 1;
        $add2 = $page + 2;

        if($page == 1) {


            $middleNumbers .= '<li class="page-item active"><a>' .$page. '</a></li>';
            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$add1.'">' .$add1. '</a></li>';

        } // if end 
        elseif($page == $lastPage) {

            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$sub1.'">' .$sub1. '</a></li>';

            $middleNumbers .= '<li class="page-item active"><a>' .$page. '</a></li>';

        } // elseif end
        elseif($page > 2 && $page < ($lastPage -1)) {

            // This code is for a page that is in the middle of a bunch of products and it will create something where
            // the middle active number "the page you're on" is surrounded by two pages on each side
            // two pages on the left will be two less than the active number and the two numbers on the right will represent two pages
            // that are larger than the active page.
            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$sub2.'">' .$sub2. '</a></li>';
            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$sub1.'">' .$sub1. '</a></li>';
            $middleNumbers .= '<li class="page-item active"><a>' .$page. '</a></li>';
            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$add1.'">' .$add1. '</a></li>';
            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$add2.'">' .$add2. '</a></li>';

        } // elseif end
        elseif($page > 1 && $page < $lastPage) {

            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$sub1.'">' .$sub1. '</a></li>';
            $middleNumbers .= '<li class="page-item active"><a>' .$page. '</a></li>';
            $middleNumbers .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$add1.'">' .$add1. '</a></li>';


        } // elseif end

        $limit = 'LIMIT ' . ($page-1) * $perPage . ',' . $perPage;

        $query2 = query(" SELECT * FROM products {$limit}");
        confirm($query2);

        $outputPagination = "";



        // Previous and Next buttons
        if($page != 1) {

            $previous = $page - 1;

            $outputPagination .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$previous.'">BACK</a></li>';

        } // if end

        $outputPagination .= $middleNumbers;


        if($page != $lastPage) {

            $next = $page + 1;

            $outputPagination .= '<li class="page-item"><a class="page-link" href="'.$_SERVER['PHP_SELF'].'?page='.$next.'">NEXT</a></li>';


        } // if end




        /************** Change the # in col-sm/md/lg-# to change the amount of products in one row *******************/

        while($row = fetch_array($query2)) {

            $product_image = display_image($row['product_image']);

            $products = <<<DELIMETER
        
            <div class="col-sm-3 col-lg-3 col-md-3">
                <div class="thumbnail">
                    <a href="item.php?id={$row['product_id']}"><img src="../resources/{$product_image}" alt=""></a>
                    <div class="caption">
                        <h4 class="pull-right">&#36;{$row['product_price']}</h4>
                        <h5><a href="item.php?id={$row['product_id']}">{$row['product_title']}</a>
                        </h5>
                        <p>{$row['short_description']}</p>
                        <a class="btn btn-primary" target="_blank" href="../resources/cart.php?add={$row['product_id']}">Add To Cart</a>
                    </div>
                </div>
            </div>

DELIMETER;

            echo $products;


       } // while end


       echo "<div class='text-center'><ul class='pagination'>{$outputPagination}</ul></div>";

       // This function shows the text Active Page # of Total Page #
       if($lastPage != 1) {

        echo "<div class='text-center'><ul>Page $page of $lastPage</ul></div>";

        } // if end
       

    } // func get_products end


    function get_categories(){

        $query = query("SELECT * FROM categories");
        confirm($query);

        while($row = fetch_array($query)) {

            $categories_links = <<<DELIMETER

            <a href='category.php?id={$row['cat_id']}' class='list-group-item'>{$row['cat_title']}</a>
    
DELIMETER;

        echo $categories_links;

        }
    } // func get_categories end

        // getting the category products

        function get_products_in_cat_page(){

            $query = query(" SELECT * FROM products WHERE product_category_id = " . escape_string($_GET['id']) . " ");
            confirm($query);
     
            while($row = fetch_array($query)) {
    
            $product_image = display_image($row['product_image']);
     
            $products = <<<DELIMETER
             
            <div class="col-md-3 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <a href="item.php?id={$row['product_id']}"><img src="../resources/{$product_image}" alt=""></a>
                        <div class="caption">
                            <h5>{$row['product_title']}</h5>
                            <p>{$row['short_description']}</p>
                            <p>
                                <a href="../resources/cart.php?add={$row['product_id']}" class="btn btn-primary">Buy Now!</a> <a href="item.php?id={$row['product_id']}" class="btn btn-default">More Info</a>
                            </p>
                        </div>
                    </div>
            </div>
    
     
DELIMETER;
     
             echo $products;
     
            }
    
         }

    /******************************* Shop Page Code ***************************/

    // Shop Function

    function get_products_in_shop_page(){

        $query = query(" SELECT * FROM products");
        confirm($query);
 
        while($row = fetch_array($query)) {

        $product_image = display_image($row['product_image']);
 
        $products = <<<DELIMETER
         
        <div class="col-md-4 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="../resources/{$product_image}" alt="">
                    <div class="caption">
                        <h5>{$row['product_title']}</h5>
                        <p>{$row['short_description']}</p>
                        <p>
                            <a href="../resources/cart.php?add={$row['product_id']}" class="btn btn-primary">Buy Now!</a> <a href="item.php?id={$row['product_id']}" class="btn btn-default">More Info</a>
                        </p>
                    </div>
                </div>
        </div>

 
DELIMETER;
 
         echo $products;
 
        }
     }





    /************* Suggested Products Func ************/

    function suggested_products(){

        $query = query(" SELECT * FROM products ORDER BY RAND() LIMIT 4");
        confirm($query);
 
        while($row = fetch_array($query)) {

        $product_image = display_image($row['product_image']);
 
        $suggested_product = <<<DELIMETER
         
        <div class="col-md-3 col-sm-6 hero-feature">
                <div class="thumbnail">
                    <img src="../resources/{$product_image}" alt="">
                    <div class="caption">
                        <h5>{$row['product_title']}</h5>
                        <p>
                            <a href="../resources/cart.php?add={$row['product_id']}" class="btn btn-primary">Buy Now!</a> <a href="item.php?id={$row['product_id']}" class="btn btn-default">More Info</a>
                        </p>
                    </div>
                </div>
        </div>

 
DELIMETER;
 
         echo $suggested_product;
 
        } // while end
    } // func suggested_products() end
    



    




    // login function
    function login_user(){

        if(isset($_POST['submit'])){

            $username = escape_string($_POST['username']);
            $password = escape_string($_POST['password']);

            $query = query(" SELECT * FROM users WHERE username = '{$username}' AND password = '{$password}' ");
            confirm($query);

            if(mysqli_num_rows($query) == 0) {

                set_message("Your Password or Username are wrong");
                redirect("login.php");

            } // if end
            else{
                $_SESSION['username'] = $username;
                redirect("admin");
            } // else end

        } // if end

    } // func login_user end


    // Contact Function
    function send_message(){

        if(isset($_POST['submit'])){


            $to        = "alexander.kenny@cwu.edu";
            // put nerdcore email above 

            $from_name = $_POST['name'];
            $subject   = $_POST['subject'];
            $email     = $_POST['email'];
            $message   = $_POST['message'];

            $headers = "From: {$from_name} {$email}";

            $result = mail($to, $subject, $message, $headers);

            if(!$result) {
                
                set_message("Your message could not be sent");
                redirect("contact.php");

            } else {

                set_message("Your message has been sent!");
                redirect("contact.php");

            } // else end



        } // if end

    } // func send_message end











    /************************** BACK END FUNCTIONS ***************************************************/
    /**************************** Admin Features ****************************************/








    


    function get_username(){

        $query = query(" SELECT * FROM users");
        confirm($query);
 
        while($row = fetch_array($query)) {
 
         $username = <<<DELIMETER
         
         <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> {$row['username']} <b class="caret"></b></a>

 
DELIMETER;
 
         echo $username;
 
        } // while end
    } // func get_username end


    function display_orders(){

        $query = query("SELECT * FROM orders");
        confirm($query);


        while($row = fetch_array($query)) {

            $orders = <<<DELIMETER

            
            <tr>
                <td>{$row['order_id']}</td>
                <td>&#36;{$row['order_amount']}</td>
                <td>{$row['order_transaction']}</td>
                <td>{$row['order_currency']}</td>
                <td>{$row['order_status']}</td>
                <td><a class="btn btn-danger" href="../../resources/templates/back/delete_order.php?id={$row['order_id']}"><span class="glyphicon glyphicon-remove"></span></a></td>
            </tr>

DELIMETER;

            echo $orders;

        } // while end


    } // func display_orders end
    


    /***************************** Admin Products Page *******************************/
     /****************** This will display products in admin and phpmyadmin ***********************/


    function display_image($picture){

        global $upload_directory;

        return $upload_directory . DS . $picture;

    } // func display_image end


    function get_products_in_admin(){ 

        $query = query(" SELECT * FROM products");
        confirm($query);

        while($row = fetch_array($query)) {

        $category = show_product_category_title($row['product_category_id']);

        $product_image = display_image($row['product_image']);

        $products = <<<DELIMETER
        
            <tr>
                <td>{$row['product_id']}</td>
                <td>{$row['product_title']}<br>
                    <a href="index.php?edit_product&id={$row['product_id']}"><img width="100" height="75" src="../../resources/{$product_image}" alt=""></a>
                </td>
                <td>{$category}</td>
                <td>&#36;{$row['product_price']}</td>
                <td>{$row['product_quantity']}</td>
                <td><a class="btn btn-danger" href="../../resources/templates/back/delete_product.php?id={$row['product_id']}"><span class="glyphicon glyphicon-remove"></span></a></td>
            </tr>

DELIMETER;

        echo $products;

       } // while end

    } // func get_products_in_admin end

    function show_product_category_title($product_category_id) {

        $category_query = query("SELECT * FROM categories WHERE cat_id = '{$product_category_id}' ");
        confirm($category_query);

        while($category_row = fetch_array($category_query)) {

            return $category_row['cat_title'];

        } // while end

    } // func show_product_category_title end


    /************************* Add Products in Admin ****************************/
    /************ This will make it a lot easier than adding each product in phpmyadmin *******************/

    function add_product() {

        if(isset($_POST['publish'])) {

            $product_title          =  escape_string($_POST['product_title']);
            $product_category_id    =  escape_string($_POST['product_category_id']);
            $product_price          =  escape_string($_POST['product_price']);
            $product_quantity       =  escape_string($_POST['product_quantity']);
            $product_description    =  escape_string($_POST['product_description']);
            $short_description      =  escape_string($_POST['short_description']);
            $product_image          =  escape_string($_FILES['file']['name']);
            $image_temp_location    =  escape_string($_FILES['file']['tmp_name']);

            move_uploaded_file($image_temp_location , UPLOAD_DIRECTORY . DS . $product_image);

            $query = query("INSERT INTO products(product_title, product_category_id, product_price, product_quantity, product_description, short_description, product_image) VALUES('{$product_title}', '{$product_category_id}', '{$product_price}', '{$product_quantity}', '{$product_description}', '{$short_description}', '{$product_image}')");
            $last_id = (last_id() - 31);
            confirm($query);
            set_message("New Product With ID {$last_id} Was Added");
            redirect("index.php?products");
            

        } // if end


    } // func add_products end


    function show_categories_add_product_page(){

        $query = query("SELECT * FROM categories");
        confirm($query);

        while($row = fetch_array($query)) {

            $categories_options = <<<DELIMETER

            <option value="{$row['cat_id']}">{$row['cat_title']}</option>
    
DELIMETER;

        echo $categories_options;

        } // while end

    } // fund show_categories_add_product_page end

    /******************************* Updating Products in EDIT PRODUCTS Screen *****************/
 
    function update_product() {

        if(isset($_POST['update'])) {

            $product_title          =  escape_string($_POST['product_title']);
            $product_category_id    =  escape_string($_POST['product_category_id']);
            $product_price          =  escape_string($_POST['product_price']);
            $product_quantity       =  escape_string($_POST['product_quantity']);
            $product_description    =  escape_string($_POST['product_description']);
            $short_description      =  escape_string($_POST['short_description']);
            $product_image          =  escape_string($_FILES['file']['name']);
            $image_temp_location    =  escape_string($_FILES['file']['tmp_name']);

            if(empty($product_image)) {

                $get_pic = query("SELECT product_image FROM products WHERE product_id = " . escape_string($_GET['id']) . " ");
                confirm($get_pic);

                while($pic = fetch_array($get_pic)) {

                    $product_image = $pic['product_image'];

                } // while end

            } // if end

            move_uploaded_file($image_temp_location , UPLOAD_DIRECTORY . DS . $product_image);

            $query = "UPDATE products SET ";
            $query .= "product_title        = '{$product_title}',       ";
            $query .= "product_category_id  = '{$product_category_id}', ";
            $query .= "product_price        = '{$product_price}',       ";
            $query .= "product_quantity     = '{$product_quantity}',    ";
            $query .= "product_description  = '{$product_description}', ";
            $query .= "short_description    = '{$short_description}',   ";
            $query .= "product_image        = '{$product_image}'        ";
            $query .= "WHERE product_id=" . escape_string($_GET['id']);
            
            $send_update_query = query($query);
            confirm($send_update_query);
            set_message("Product Has Been Updated");
            redirect("index.php?products");
            

        } // if end


    } // func update_products end

    /*************************** Categories in Admin (Adding/Deleting) ***************************/

    function show_categories_in_admin() {

        $category_query = query("SELECT * FROM categories");
        confirm($category_query);

        while($row = fetch_array($category_query)) {

            $cat_id = $row['cat_id'];
            $cat_title = $row['cat_title'];

            $category = <<<DELIMETER

            <tr>
                <td>{$cat_id}</td>
                <td>{$cat_title}</td>
                <td><a class="btn btn-danger" href="../../resources/templates/back/delete_category.php?id={$row['cat_id']}"><span class="glyphicon glyphicon-remove"></span></a></td>
                </td>
            </tr>

DELIMETER;

            echo $category;

        } // while end

    } // func show_categories_in_admin end


    function add_category() {

        if(isset($_POST['add_category'])) {

            $cat_title = escape_string($_POST['cat_title']);

            if(empty($cat_title) || $cat_title == " ") {

                echo "<p class='bg-danger'>THIS CANNOT BE EMPTY</p>";

            } // if end
            else {

            $insert_cat = query("INSERT INTO categories(cat_title) VALUES('{$cat_title}') ");
            confirm($insert_cat);
            set_message("Category Created");
            
            } // else end

        } // if end

    } // func add_category end


    /**************************** Admin Users **************************/

    function display_users() {

        $category_query = query("SELECT * FROM users");
        confirm($category_query);

        while($row = fetch_array($category_query)) {

            $user_id = $row['user_id'];
            $user_name = $row['username'];
            $email = $row['email'];
            $passwrd = $row['password'];

            $user = <<<DELIMETER

            <tr>
                <td>{$user_id}</td>
                <td>{$user_name}</td>
                <td>{$email}</td>
                <!--<td><a class="btn btn-danger" href="../../resources/templates/back/delete_user.php?id={$row['user_id']}"><span class="glyphicon glyphicon-remove"></span></a></td>-->
                </td>
            </tr>

DELIMETER;

            echo $user;

        } // while end

    } // func display_users end


    function add_user(){

        if(isset($_POST['add_user'])) {

            $username   =   escape_string($_POST['username']);
            $email      =   escape_string($_POST['email']);
            $password   =   escape_string($_POST['password']);
            // $user_photo =   escape_string($_FILES['file']['name']);
            // $photo_temp =   escape_string($_FILES['file']['tmp_name']);
            // move_uploaded_file($photo_temp, UPLOAD_DIRECTORY . DS . $user_image);

            $query = query("INSERT INTO users(username,email,password) VALUES('{$username}','{$email}','{$password}') ");
            confirm($query);

            set_message("User Created");

            redirect("index.php?users");

        }

    }

    /************************************** Reports **************************/

    function get_reports(){

        $query = query(" SELECT * FROM reports");
        confirm($query);

        while($row = fetch_array($query)) {

        $report = <<<DELIMETER
        
            <tr>
                <td>{$row['report_id']}</td>
                <td>{$row['product_id']}</td>
                <td>{$row['order_id']}</td>
                <td>&#36;{$row['product_price']}<br>
                <td>{$row['product_title']}<br>
                <td>{$row['product_quantity']}</td>
                <td><a class="btn btn-danger" href="../../resources/templates/back/delete_report.php?id={$row['report_id']}"><span class="glyphicon glyphicon-remove"></span></a></td>
            </tr>

DELIMETER;

        echo $report;

       }

    } // func get_reports end


/************************************* Home Page Picture Slider ******************************/

    function add_slides() {

        if(isset($_POST['add_slide'])) {

            $slide_title        = escape_string($_POST['slide_title']);
            $slide_image        = escape_string($_FILES['file']['name']);
            $slide_image_loc    = escape_string($_FILES['file']['tmp_name']);

            if(empty($slide_title) || empty($slide_image)) {

                echo "<p class='bg-danger'>This Field Cannot Be Empty</p>";

            } // if end
            else {

                move_uploaded_file($slide_image_loc, UPLOAD_DIRECTORY . DS . $slide_image);

                $query = query("INSERT INTO slides(slide_title, slide_image) VALUES('{$slide_title}', '{$slide_image}') ");
                confirm($query);
                set_message("Slide Added");

                redirect("index.php?slides");


            } // else end

        } // if end

    } // func add_slides end





    function get_current_slide_in_admin() {

        $query = query("SELECT * FROM slides ORDER BY slide_id DESC LIMIT 1");
        confirm($query);

        while($row = fetch_array($query)) {

            $slide_image = display_image($row['slide_image']);

            $slide_active_admin = <<<DELIMETER

                <img class="img-responsive" src="../../resources/{$slide_image}" alt="">

DELIMETER;

            echo $slide_active_admin;

        } // while end

    } // func get_current_slide_in_admin end





    function get_active_slide() {

        $query = query("SELECT * FROM slides ORDER BY slide_id DESC LIMIT 1");
        confirm($query);

        while($row = fetch_array($query)) {

            $slide_image = display_image($row['slide_image']);

            $slide_active = <<<DELIMETER

            <div class="item active">
                <img style="width:850px;height:400px;" class="slide-image" src="../resources/{$slide_image}" alt="">
            </div>

DELIMETER;

            echo $slide_active;

        } // while end

    } // fun get_active_slide end






    function get_slides() {

        $query = query("SELECT * FROM slides");
        confirm($query);

        while($row = fetch_array($query)) {

            $slide_image = display_image($row['slide_image']);

            $slides = <<<DELIMETER

            <div class="item">
                <img style="width:850px;height:400px;" class="slide-image" src="../resources/{$slide_image}" alt="">
            </div>

DELIMETER;

            echo $slides;

        } // while end

    } // func get_sliders end




    function get_slide_thumbnails() {

        $query = query("SELECT * FROM slides ORDER BY slide_id ASC");
        confirm($query);

        while($row = fetch_array($query)) {

            $slide_image = display_image($row['slide_image']);

            $slide_thumb_admin = <<<DELIMETER

            <div class="col-xs-6 col-md-3 image_container">

                <a href="index.php?delete_slide_id={$row['slide_id']}">
        
                    <img style="width:200px;height:100px;" class="slide-image img-responsive" src="../../resources/{$slide_image}" alt="">
        
                </a>

                <div class="caption">

                    <p>{$row['slide_title']}</p>

                </div>
                
            </div>

DELIMETER;

            echo $slide_thumb_admin;

        } // while end

    } // func get_slide_thumbnails end


    /******************************* Dashboard Functions ***********************/

    function show_orders_on_dashboard() {

            $query = query("SELECT * FROM orders");
            confirm($query);
    
    
            while($row = fetch_array($query)) {
    
                $orders = <<<DELIMETER
    
                <tr>

                    <td>{$row['order_id']}</td>
                    <td>&#36;{$row['order_amount']}</td>
                  
                </tr>
    
DELIMETER;
    
                echo $orders;
    
            } // while end

    } // func show_orders_on_dashboard() end

    /******************** Search Products Function ******************/

    function filter_products() {
        
        $query = query("SELECT * FROM products WHERE product_category_id='' ");
        confirm($query);
        
            while($row = fetch_array($query)) {
            
                $filter = <<<DELIMETER
            
                
            
DELIMETER;
            
        } // while end
        
        
    } // func filter_products() end



?>