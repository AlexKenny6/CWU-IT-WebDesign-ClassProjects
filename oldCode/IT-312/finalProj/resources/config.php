<?php ob_start();

session_start();
// session destory is used for debugging purposes only 
//session_destroy();


defined("DS") ? null : define("DS", DIRECTORY_SEPARATOR) ;

defined("TEMPLATE_FRONT") ? null : define("TEMPLATE_FRONT", __DIR__ . DS . "templates/front") ;

defined("TEMPLATE_BACK") ? null : define("TEMPLATE_BACK", __DIR__ . DS . "templates/back") ;

defined("UPLOAD_DIRECTORY") ? null : define("UPLOAD_DIRECTORY", __DIR__ . DS . "uploads") ;


defined("DB_HOST") ? null : define("DB_HOST", "localhost");

defined("DB_USER") ? null : define("DB_USER", "pacwdlkv_itfinal_admin");
//user: pacwdlkv_itfinal_admin

defined("DB_PASS") ? null : define("DB_PASS", "applePIE6");
//pass: xydtaw-repqo7-flcjyx

defined("DB_NAME") ? null : define("DB_NAME", "pacwdlkv_itfinal_db");
// host: pacwdlkv_itfinal_db



$connection = mysqli_connect(DB_HOST,DB_USER,DB_PASS,DB_NAME);

require_once("functions.php");
require_once("cart.php");

?>