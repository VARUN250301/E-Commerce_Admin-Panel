<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login_des.php");
    exit;
}
?>

<?php 
include('connection.php');
$cat_id = $_POST['cat_id'];
$product_name = $_POST['product_name'];
$product_desc = $_POST['product_desc'];
$price = $_POST['price'];
$rating = $_POST['rating'];

$sql = "INSERT INTO `product` (`cat_id`,`product_name`,`product_desc`,`price`, `rating`) values ('$cat_id', '$product_name', '$product_desc', '$price', '$rating' )";
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