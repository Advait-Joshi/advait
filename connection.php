<?php

$username = "root";
$password="";
$server ="localhost";
$db = "dummy";


$con = mysqli_connect($server,$username,$password,$db);

if(mysqli_connect_errno()){
    echo "Failed to connect";
    exit();
}
echo "Connection success";


?>