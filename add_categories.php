<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login_des.php");
    exit;
}
?>

<?php 
include('connection.php');
$user_id = $_POST['user_id'];
$category_name = $_POST['category_name'];
$category_desc = $_POST['category_desc'];
$category_img = $_POST['category_img'];

$sql = "INSERT INTO `categories` (`user_id`,`category_name`,`category_desc`,`category_img`) values ('$user_id', '$category_name', '$category_desc', '$category_img')";
$query= mysqli_query($con,$sql);
$lastId = mysqli_insert_id($con);
if($query ==true)
{
   
    $data = array(
        'status'=>'true',
       
    );

    echo json_encode($data);
}
else
{
     $data = array(
        'status'=>'false',
      
    );

    echo json_encode($data);
} 

?>