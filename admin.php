<?php
session_start();

if(!isset($_SESSION['loggedin']) || $_SESSION['loggedin']!=true){
    header("location: login_des.php");
    exit;
}
?>

<?php include('connection.php'); ?>
<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Bootstrap CSS -->
  <link href="css/bootstrap5.0.1.min.css" rel="stylesheet" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/datatables-1.10.25.min.css" />
  
  <title>E-Commerce - Admin List</title>
  <style type="text/css">
    .btnAdd {
      text-align: right;
      width: 83%;
      margin-bottom: 20px;
    }
  </style>
</head>

<body>
<nav style="background-color: #E0FFFF; color: black;" class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
  <span><svg style="margin: 5px 10px 5px 5px;" xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-truck" viewBox="0 0 16 16">
  <path d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5v-7zm1.294 7.456A1.999 1.999 0 0 1 4.732 11h5.536a2.01 2.01 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456zM12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12v4zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2z"/>
</svg><a class="navbar-brand" href="welcome.php" style="font-weight: 900; ">E-Commerce</a></span>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="product.php" style="font-weight: 700;">Product</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="categories.php" style="font-weight: 700;">Categories</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="admin.php" style="font-weight: 700;">Admin List</a>
        </li>
      </ul>

      <form class="d-flex" role="search">
        
      <a href="logout.php"><button class="btn btn-outline-danger" type="button">Logout</button></a>
      </form>
      
    </div>
  </div>
</nav>
  <div class="container-fluid">
    <h1 style="margin: 10px;" class="text-center"><svg xmlns="http://www.w3.org/2000/svg" style="margin:5px 15px 3px 3px" width="35" height="35" fill="currentColor" class="bi bi-wrench-adjustable" viewBox="0 0 16 16">
  <path d="M16 4.5a4.492 4.492 0 0 1-1.703 3.526L13 5l2.959-1.11c.027.2.041.403.041.61Z"/>
  <path d="M11.5 9c.653 0 1.273-.139 1.833-.39L12 5.5 11 3l3.826-1.53A4.5 4.5 0 0 0 7.29 6.092l-6.116 5.096a2.583 2.583 0 1 0 3.638 3.638L9.908 8.71A4.49 4.49 0 0 0 11.5 9Zm-1.292-4.361-.596.893.809-.27a.25.25 0 0 1 .287.377l-.596.893.809-.27.158.475-1.5.5a.25.25 0 0 1-.287-.376l.596-.893-.809.27a.25.25 0 0 1-.287-.377l.596-.893-.809.27-.158-.475 1.5-.5a.25.25 0 0 1 .287.376ZM3 14a1 1 0 1 1 0-2 1 1 0 0 1 0 2Z"/>
</svg>Admin Panel</h1>
    <h3 class="datatable design text-center">Following is the list of all the admins of E-Commerce</h3>
    <div class="row">
      <div class="container">
        <div class="btnAdd">
           <a href="signup.php" class="btn btn-success btn-sm">Add Admin</a>
        </div> 
        <div class="row">
          <div class="col-md-2"></div>
          <div class="col-md-8">
            <table style="border: 2px solid black;"id="example" class="table">
              <thead>
                <th>Id</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>E-Mail</th>
                <th>Admin Joining Date</th>
                <th>Last Login</th>
                <th>Admin Status</th>
                <th>Options</th>
              </thead>
              <tbody>
              </tbody>
            </table>
          </div>
          <div class="col-md-2"></div>
        </div>
      </div>
    </div>
  </div>
  <!-- Optional JavaScript; choose one of the two! -->
  <!-- Option 1: Bootstrap Bundle with Popper -->
  <script src="js/jquery-3.6.0.min.js" crossorigin="anonymous"></script>
  <script src="js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
  <script type="text/javascript" src="js/dt-1.10.25datatables.min.js"></script>
  <!-- Option 2: Separate Popper and Bootstrap JS -->
  <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
  -->

  <script type="text/javascript">
    $(document).ready(function() {
      $('#example').DataTable({
        "fnCreatedRow": function(nRow, aData, iDataIndex) {
          $(nRow).attr('id', aData[0]);
        },
        'serverSide': 'true',
        'processing': 'true',
        'paging': 'true',
        'order': [],
        'ajax': {
          'url': 'fetch_data_admin.php',
          'type': 'post',
        },
        "aoColumnDefs": [{
            "bSortable": false,
            "aTargets": [7]
          },

        ]
      });
    });
    // $(document).on('submit', '#addAdmin', function(e) {
    //   e.preventDefault();
    //   var user_id = $('#add_User_Id_Field').val();
    //   var category_name = $('#add_Category_Name_Field').val();
    //   var category_desc = $('#add_Category_Description_Field').val();
    //   var category_img = $('#addCategory_ImageField').val();
    //   if (user_id != '' && category_name != '' && category_desc != '' && category_img != '') {
    //     $.ajax({
    //       url: "add_categories.php",
    //       type: "post",
    //       data: {
    //         user_id: user_id,
    //         category_name: category_name,
    //         category_desc: category_desc,
    //         category_img: category_img
    //       },
    //       success: function(data) {
    //         var json = JSON.parse(data);
    //         var status = json.status;
    //         if (status == 'true') {
    //           mytable = $('#example').DataTable();
    //           mytable.draw();
    //           $('#addCategoryModal').modal('hide');
    //         } else {
    //           alert('failed');
    //         }
    //       }
    //     });
    //   } else {
    //     alert('Fill all the required fields');
    //   }
    // });
    $(document).on('submit', '#updateAdmin', function(e) {
      e.preventDefault();
      //var tr = $(this).closest('tr');
      var first_name = $('#First_Name_Field').val();
      var last_name = $('#Last_Name_Field').val();
      var e_mail = $('#E_Mail_Field').val();
      var trid = $('#trid').val();
      var id = $('#id').val();
      var created_at = $('#created_at_Field').val();
      var last_login = $('#last_login_Field').val();
      var is_admin = $('#is_admin_Field').val();
      if (first_name != '' && last_name != '' && e_mail != '') {
        $.ajax({
          url: "update_admin.php",
          type: "post",
          data: {
            first_name: first_name,
            last_name: last_name,
            e_mail: e_mail,
           
            id: id,
            created_at: created_at,
            last_login:last_login,
            is_admin: is_admin
          },
          success: function(data) {
            var json = JSON.parse(data);
            var status = json.status;
            if (status == 'true') {
              table = $('#example').DataTable();
              // table.cell(parseInt(trid) - 1,0).data(id);
              // table.cell(parseInt(trid) - 1,1).data(username);
              // table.cell(parseInt(trid) - 1,2).data(email);
              // table.cell(parseInt(trid) - 1,3).data(mobile);
              // table.cell(parseInt(trid) - 1,4).data(city);
              var button = '<td><a href="javascript:void();" data-id="' + id + '" class="btn btn-info btn-sm editbtn">U</a>  <a href="#!"  data-id="' + id + '"  class="btn btn-danger btn-sm deleteBtn">D</a></td>';
              var row = table.row("[id='" + trid + "']");
              row.row("[id='" + trid + "']").data([id, first_name, last_name, e_mail, created_at, last_login, is_admin, button]);
          
              $('#exampleModal').modal('hide');
            } else {
              alert('failed');
            }
          }
        });
      } else {
        alert('Fill all the required fields');
      }
    });
    $('#example').on('click', '.editbtn ', function(event) {
      var table = $('#example').DataTable();
      var trid = $(this).closest('tr').attr('id');
      // console.log(selectedRow);
      var id = $(this).data('id');
      // var created_at = $(this).data('created_at');
      // var last_login = $(this).data('last_login');
      // var is_admin = $(this).data('is_admin');
      $('#exampleModal').modal('show');

      $.ajax({
        url: "get_single_data_admin.php",
        data: {
          id: id
        },
        type: 'post',
        success: function(data) {
          var json = JSON.parse(data);
          $('#First_Name_Field').val(json.first_name);
          $('#Last_Name_Field').val(json.last_name);
          $('#E_Mail_Field').val(json.email);
          
          $('#id').val(id);
          $('#created_at_Field').val(json.created_at);
          $('#last_login_Field').val(json.last_login);
          $('#is_admin_Field').val(json.is_admin);
          $('#trid').val(trid);
        }
      })
    });

    $(document).on('click', '.deleteBtn', function(event) {
      var table = $('#example').DataTable();
      event.preventDefault();
      var id = $(this).data('id');
      if (confirm("Are you sure want to delete this category ? ")) {
        $.ajax({
          url: "delete_admin.php",
          data: {
            id: id
          },
          type: "post",
          success: function(data) {
            var json = JSON.parse(data);
            status = json.status;
            if (status == 'success') {
              //table.fnDeleteRow( table.$('#' + id)[0] );
              //$("#example tbody").find(id).remove();
              //table.row($(this).closest("tr")) .remove();
              $("#" + id).closest('tr').remove();
            } else {
              alert('Failed');
              return;
            }
          }
        });
      } else {
        return null;
      }



    })
  </script>
  <!-- Update Modal -->
  <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Update Admin</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="updateAdmin">
            <input type="hidden" name="id" id="id" value="">
            <input type="hidden" name="created_at" id="created_at" value="">

         
            <input type="hidden" name="trid" id="trid" value="">
            <div class="mb-3 row">
              <label for="First_Name_Field" class="col-md-3 form-label">First_Name</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="First_Name_Field" name="First_Name_Field">
              </div>
            </div>
            <div class="mb-3 row">
              <label for="Last_Name_Field" class="col-md-3 form-label">Last_Name</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="Last_Name_Field" name="Last_Name_Field">
              </div>
            </div>
            <div class="mb-3 row">
              <label for="E_Mail_Field" class="col-md-3 form-label">E Mail</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="E_Mail_Field" name="E_Mail_Field">
              </div>
            </div>
            <div class="mb-3 row">
              <label for="is_admin_Field" class="col-md-3 form-label">is_admin</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="is_admin_Field" name="is_admin_Field" readonly>
              </div>
            </div>
            <div class="mb-3 row">
              <label for="last_login_Field" class="col-md-3 form-label">last_login</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="last_login_Field" name="last_login_Field" readonly>
              </div>
            </div>
            <div class="mb-3 row">
              <label for="created_at_Field" class="col-md-3 form-label">created_at</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="created_at_Field" name="created_at_Field" readonly>
              </div>
            </div>
            <div class="text-center">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
  <!-- Add admin Modal -->
  <!-- <div class="modal fade" id="addAdminModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Add Category</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
          <form id="addAdmin" action="">
            <div class="mb-3 row">
              <label for="add_Id_Field" class="col-md-3 form-label">Id</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="add_Id_Field" name="add_Id_Field">
              </div>
            </div>
            <div class="mb-3 row">
              <label for="add_Firs_Name_Field" class="col-md-3 form-label">Firs Name</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="add_Firs_Name_Field" name="add_Firs_Name_Field">
              </div>
            </div>
            <div class="mb-3 row">
              <label for="add_Category_Description_Field" class="col-md-3 form-label">Category Description</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="add_Category_Description_Field" name="add_Category_Description_Field">
              </div>
            </div>
            <div class="mb-3 row">
              <label for="addCategory_ImageField" class="col-md-3 form-label">Category_Image</label>
              <div class="col-md-9">
                <input type="text" class="form-control" id="addCategory_ImageField" name="addCategory_ImageField">
              </div>
            </div>
           
            <div class="text-center">
              <button type="submit" class="btn btn-primary">Submit</button>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div> -->
</body>

</html>
<script type="text/javascript">
  //var table = $('#example').DataTable();
</script>