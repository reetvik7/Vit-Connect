<?php
session_start();
include_once 'c.php';
// Check connection

$rno=$_SESSION['onetimepass'];
$urno=$_POST['otpvalue'];
if(!(strcmp($rno,$urno)))
{
    $fn=$_SESSION['name'];
    $em=$_SESSION['email'];
    $pw=$_SESSION['pass'];
    $gd=$_SESSION['gender'];
    $dob=$_SESSION['dob'];
    mysqli_query($c, "INSERT INTO members_list VALUES ('','".$fn."','".$em."','".$pw."','active')") or die(mysqli_error($c));
    $q = mysqli_query($c, "SELECT * FROM members_list WHERE email = '".$em."'");
    $f = mysqli_fetch_array($q);
    $id = $f['id'];
    mysqli_query($c, "INSERT INTO members_details VALUES ('".$id."','".$gd."','".$dob."','','','','','','')");
    $t = $id."_posts";
    mysqli_query($c, "CREATE TABLE $t (id INT PRIMARY KEY AUTO_INCREMENT,user VARCHAR(250), post TEXT(10000), time INT, details VARCHAR(250), privacy VARCHAR(250), status VARCHAR(250))");
    $t = $id."_main";
    mysqli_query($c, "CREATE TABLE $t (id INT,user VARCHAR(250), post TEXT(10000), time INT PRIMARY KEY, details VARCHAR(250), privacy VARCHAR(250), status VARCHAR(250))");
    $t = $id."_mates";
    mysqli_query($c, "CREATE TABLE $t (user INT PRIMARY KEY, relation VARCHAR(250), status VARCHAR(250))");
    $t = $id."_notify";
    mysqli_query($c, "CREATE TABLE $t (id INT PRIMARY KEY AUTO_INCREMENT, notify VARCHAR(250), time INT, details VARCHAR(250), status VARCHAR(250))");
    mkdir("../profiles/" . $id);
    copy("../img/person.jpg", "../profiles/".$id."/profile.png");
    $otpo = "success";
    $_SESSION['otpdone'] = $otpo;
    header("location: ../");
}
else{
    $otpo = "fail";
    $_SESSION['otpdone'] = $otpo;
    header("location: ../");
} 

?>