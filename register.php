<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login_des.php");
    exit;
}
?>

<?php
include('connection.php');
$first_name = $_POST['first-name'];
$last_name = $_POST['last-name'];
$email = $_POST['email'];
$password = $_POST['password'];

$check = "select *from user_login where email='$email'";
$result = mysqli_query($con, $check);
$row = mysqli_fetch_array($result, MYSQLI_ASSOC);
$count = mysqli_num_rows($result);

if($count > 0){
    echo "user already exists";
}
else{
    $hash = password_hash($password, PASSWORD_DEFAULT);
    $sql = "INSERT INTO `e_commerce`.`user_login` (`first_name`, `last_name`, `email`, `password`, `is_admin`) VALUES ('$first_name', '$last_name', '$email', '$hash', '1')";

    if($con->query($sql) == true){
        //echo "Successfully inserted";
        header("location: login_des.php");
    }
    else{
        echo "Problem inserting into database";
    }
}

?>