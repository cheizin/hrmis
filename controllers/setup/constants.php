<?php
define("SERVER_NAME","localhost");
define("DB_USER","wisegene_hrmis");
define("DB_PASS","9000@Kenya");
define("DB_NAME","wisegene_hrmis");

//for the PDO
$db_servername = "localhost";
$db_username = "wisegene_hrmis";
$db_password = "9000@Kenya";
$db_name = "wisegene_hrmis";

//mail headers and mail settings
ini_set("SMTP","cmacas.cma.local");
ini_set('smtp_port', 25);
$headers = "MIME-Version: 1.0" . "\r\n";
$headers .= "Content-type:text/html;charset=UTF-8" . "\r\n";
$headers .= 'From: PPRMIS SYSTEM <PRisk@cma.or.ke>' . "\r\n";

?>