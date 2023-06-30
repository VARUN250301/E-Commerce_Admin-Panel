<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login_des.php");
    exit;
}
?>

<?php include('connection.php');

$output= array();
$sql = "SELECT * FROM categories ";

$totalQuery = mysqli_query($con,$sql);
$total_all_rows = mysqli_num_rows($totalQuery);

$columns = array(
	0 => 'id',
	1 => 'user_id',
	2 => 'category_name',
	3 => 'category_desc',
	4 => 'category_img',
);

if(isset($_POST['search']['value']))
{
	$search_value = $_POST['search']['value'];
	$sql .= " WHERE user_id like '%".$search_value."%'";
	$sql .= " OR category_name like '%".$search_value."%'";
	$sql .= " OR category_desc like '%".$search_value."%'";
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
	$sub_array[] = $row['user_id'];
	$sub_array[] = $row['category_name'];
	$sub_array[] = '<td style="width: 10px;">'.$row['category_desc'].'</td>';
	$sub_array[] ='<img src="'.$row['category_img'].'" alt="Category Image" style="width: 40px; height: 30px;">';
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

