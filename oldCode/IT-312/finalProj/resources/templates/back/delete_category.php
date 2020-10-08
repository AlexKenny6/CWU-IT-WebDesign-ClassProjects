<?php require_once("../../config.php"); ?>

<?php

    if(isset($_GET['id'])) {

    $query = query("DELETE FROM categories WHERE cat_id = " . escape_string($_GET['id']) . " ");
    confirm($query);
    
    set_message("Category Deleted");

    redirect("../../../admin/index.php?categories");

    } // if end
    else {

        redirect("../../../admin/index.php?categories");

    } // else end


?>