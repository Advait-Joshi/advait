<?php 

if(isset($_POST["formbutton"])){
    $username=$_POST['Uname'];
    $email=$_POST['email'];
    $number=$_POST["number"];
    $comment=$_POST["Comment"];

    if(empty($username) || empty($email) || empty($number) || empty($comment))
    {
        header('location.index.php?error');
    }
    else{
        $to=""
    }
}



?>