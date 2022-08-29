<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}


if(!isset($_POST['id']))
{
  exit("Please select trainee Details ");
}

// echo $_POST['id'];

session_start();
include("../../controllers/setup/connect.php");

$profile_pic= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id='".$_POST['id']."'"));

$profile_pic2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users "));
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/


?>

<?php

$personal_details = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE fName ='".$_SESSION['fName']."'"));
 ?>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        Trainee List


      </div>
      <div class="card-body table-responsive">

        <?php
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level = 'trainee'     ORDER BY id ");

        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

       <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
         <thead>
           <tr>
             <td>#</td>
             <td>Passport</td>
             <td>Personal Details</td>
             <td>Gender</td>
              <td>Email</td>
              <td>Contact</td>
             <td>Empoyee No</td>
               <td>Status</td>

           </tr>
         </thead>
         <?php
         $no = 1;
          $sql = mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level = 'trainee'   ORDER BY id DESC");
          while($row = mysqli_fetch_array($sql)){
          ?>
         <tr style="cursor: pointer;">
           <td width="50px"> <?php echo $no++;?>.

           </td>
           <td>
           <div class="card-body box-profile">
             <div class="float-left">


               <b>
                              <?php
                                       echo $row['fName']; ?>
                                 </b><br/>

                        <img class="profile-user-img img-fluid img-circle"
                             src="assets/img/<?php echo $row['emp_photo']; ?>"
                             alt="User profile picture">




             </div>
             </td>

           <td>
             <?php echo $row['location'] ;?>,  <?php echo $row['country'] ;?> <br/>
               <?php echo $row['highestQualification'] ;?>


           </td>
           <td>  <?php echo $row['gender'] ;?>

           </td>
           <td>  <?php echo $row['Email'] ;?>

           </td>
           <td>  <?php echo $row['contact'] ;?>

           </td>
           <td>  <?php echo $row['id'] ;?>

           </td>

           <td>  <?php echo $row['status'] ;?>

           </td>




         </tr>
         <?php
            }
          ?>


       </table>
      </div>
    </div>
  </div>
</div>

<?php
}
else
{
      ?>
    <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No Trainee recorded</strong>
</div>

  <?php
}
?>
