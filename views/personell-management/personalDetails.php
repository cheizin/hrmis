<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}

if(!isset($_POST['id']))
{
  exit("Please select Employee ");
}


session_start();
include("../../controllers/setup/connect.php");

$profile_pic= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id ='".$_POST['id']."'"));
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/


?>

<div class="card card-success card-outline col-md-12 mr-12 ml-8">
  <div class="card-body box-profile">
    <div class="float-left">


        <img class="profile-user-img img-fluid img-circle"
             src="assets/img/<?php echo $profile_pic['emp_photo']; ?>"
             alt="User profile picture">


    </div>


<div class="row border-bottom mx-5">
<div class="col-lg-2 col-xs-8 form-group">
Surname: <input type="text" class="form-control" name="Name" value="<?php echo $profile_pic['fName'];?>" readonly="readonly">

</div>
<div class="col-lg-2 col-xs-8 form-group">
Other Name: <input type="text" class="form-control" name="Name" value="<?php echo $profile_pic['fName'];?>" readonly="readonly">

</div>
<div class="col-lg-2 col-xs-8 form-group">
Gender: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['gender'];?>" readonly="readonly">

</div>
<div class="col-lg-2 col-xs-8 form-group">
Contact: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['contact'];?>" readonly="readonly">

</div>
<div class="col-lg-2 col-xs-8 form-group">
Location: <input type="text" class="form-control" name="staff_users_id" value="<?php echo $profile_pic['location'];?>" readonly="readonly">

</div>

<div class="col-lg-2 col-xs-8 form-group">
Date of Birth: <input type="text" class="form-control" name="end_ts" value="<?php echo $profile_pic['dob'];?>" readonly="readonly">

</div>
<div class="col-lg-2 col-xs-8 form-group">
Nationality <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['nationality'];?>" readonly="readonly">

</div>
<div class="col-lg-3 col-xs-8 form-group">
Email: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['Email'];?>" readonly="readonly">

</div>

<div class="col-lg-2 col-xs-8 form-group">
Religion <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['highestQualification'];?>" readonly="readonly">

</div>
<div class="col-lg-2 col-xs-8 form-group">
County of Origin <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['currentPosition'];?>" readonly="readonly">

</div>
<div class="col-lg-2 col-xs-8 form-group">
Ethnic Group <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['experience'];?>" readonly="readonly">

</div>

<div class="col-lg-1 col-xs-8 form-group">
Status <input type="text" class="form-control" name="start_ts" value="Active" readonly="readonly">
</div>

</div>
</div>


</div>
