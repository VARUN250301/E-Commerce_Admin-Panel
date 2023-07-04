<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login_des.php");
    exit;
}
?>

<?php 
include('connection.php');
$first_name = $_POST['first_name'];
$last_name = $_POST['last_name'];
$email = $_POST['e_mail'];
$created_at = $_POST['created_at'];
$last_login = $_POST['last_login'];
$is_admin = $_POST['is_admin'];
$id = $_POST['id'];

$sql = "UPDATE `user_login` SET  `first_name`='$first_name' , `last_name`= '$last_name', `email`='$email' WHERE id='$id' ";
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