<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login_des.php");
    exit;
}
?>

<?php include('connection.php');

$output= array();
$sql = "SELECT * FROM user_login ";

$totalQuery = mysqli_query($con,$sql);
$total_all_rows = mysqli_num_rows($totalQuery);

$columns = array(
	0 => 'id',
	1 => 'first_name',
	2 => 'last_name',
	3 => 'email',
	4 => 'created_at',
    5 => 'last_login',
    6 => 'is_admin',
);

if(isset($_POST['search']['value']))
{
	$search_value = $_POST['search']['value'];
	$sql .= " WHERE id like '%".$search_value."%'";
	$sql .= " OR first_name like '%".$search_value."%'";
	$sql .= " OR last_name like '%".$search_value."%'";
    $sql .= " OR email like '%".$search_value."%'";
    $sql .= " OR created_at like '%".$search_value."%'";
    $sql .= " OR last_login like '%".$search_value."%'";
    $sql .= " OR is_admin like '%".$search_value."%'";
}

if(isset($_POST['order']))
{
	$column_name = $_POST['order'][0]['column'];
	$order = $_POST['order'][0]['dir'];
	$sql .= " ORDER BY ".$columns[$column_name]." ".$order."";
}
else
{
	$sql .= " ORDER BY id desc";
}

if($_POST['length'] != -1)
{
	$start = $_POST['start'];
	$length = $_POST['length'];
	$sql .= " LIMIT  ".$start.", ".$length;
}	

$query = mysqli_query($con,$sql);
$count_rows = mysqli_num_rows($query);
$data = array();
while($row = mysqli_fetch_assoc($query))
{
	$sub_array = array();
	$sub_array[] = $row['id'];
	$sub_array[] = $row['first_name'];
	$sub_array[] = $row['last_name'];
    $sub_array[] = $row['email'];
    $sub_array[] = $row['created_at'];
    $sub_array[] = $row['last_login'];
	$sub_array[] = $row['is_admin'];
	$sub_array[] = '<td style="display: inline-block;">
        <a href="javascript:void();" data-id="'.$row['id'].'" class="btn btn-info btn-sm editbtn">U</a>
    
        <a href="javascript:void();" data-id="'.$row['id'].'" class="btn btn-danger btn-sm deleteBtn">D</a>
    </td>';
	$data[] = $sub_array;
}

$output = array(
	'draw'=> intval($_POST['draw']),
	'recordsTotal' =>$count_rows ,
	'recordsFiltered'=>   $total_all_rows,
	'data'=>$data,
);
echo  json_encode($output);

