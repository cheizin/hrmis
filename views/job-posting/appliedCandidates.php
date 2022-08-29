<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");

if(!isset($_POST['id']))
{
  exit("Please select The application");
}

  $get_mail = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE id ='".$_POST['id']."'"));

      $profile_pic = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$get_mail['applicant_email']."'"));


        $applied = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE applicant_email ='".$get_mail['applicant_email']."'"));

        $job_posted =  mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$get_mail['job_posting_id']."'"));


$about_me =  mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$get_mail['applicant_email']."'"));

$emp_details = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$get_mail['applicant_email']."'"));

/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/
?>

<?php echo $job_posted['job_title'];?>


<nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item active" aria-current="page">
            <i class="far fa-user-plus"></i> <b><?php echo $profile_pic['fName'];?> <?php echo $profile_pic['lName'];?> Application Details</b>
   </li>

<br/>
           <button class="btn btn-link" style="float:right;"
                   data-toggle="modal" data-target="#add-status-modal">
                   <i class="fa fa-plus-circle">Click here to Update Application Status</i>
           </button>

           <!-- start add end product modal -->
           <div class="modal fade" id="add-status-modal" role="dialog">
           <div class="modal-dialog" role="document">
           <div class="modal-content">
           <div class="modal-header alert alert-success">

           <h5 class="modal-title">Updating Application Status For the candidate  <?php echo $profile_pic['fName'];?>

           <span class="font-weight-bold"></h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span>
           </button>
           </div>
           <div class="modal-body">
           <form id="add-status-post-form">

           <input type="hidden" name="add-status-post" value="add-status-post">

             <input type="hidden" name="email" value="<?php echo $profile_pic['Email'];?>"  >

              <input type="hidden" name="id" value="<?php echo $get_mail['id'];?>"  >

              <input type="hidden" name="name" value="<?php echo $profile_pic['fName'];?>"  >

              <input type="hidden" name="job_title" value="<?php echo $job_posted['job_title'];?>>"  >


              <?php echo $job_posted['job_title'];?>
           <!-- start of row -->

              <div class="row">

                <div class="col-lg-12 col-xs-12 form-group">
                <label><span class="required">*</span>Application Status</label>
                <?php
                $result2 = mysqli_query($dbc, "SELECT * FROM application_status ORDER BY id ASC");
                echo '
                <select name="status_name" data-tags="true" class="select2 form-control" data-placeholder="Select Application Status" required>
                <option></option>';
                while($row = mysqli_fetch_array($result2)) {
                    echo '<option value="'.$row['status_name'].'">'.$row['status_name']."</option>";
                }
                echo '</select>';
                ?>
                </div>


              </div>


              <div class="row text-center">
                  <button type="submit" class="btn btn-success btn-block btn_submit_total submitting">SUBMIT</button>
              </div>
            </form>
           </div>
           <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
           </div>
           </div>
           </div>
           </div>


      </ol>
  </nav>
<!-- Profile Image -->
<div class="card card-success card-outline col-md-12 mr-12 ml-8">
  <div class="card-body box-profile">
    <div class="float-left">

        <img class="profile-user-img img-fluid img-circle"
             src="assets/img/<?php echo $profile_pic['emp_photo']; ?>"
             alt="User profile picture">


    </div>





<div class="row border-bottom mx-3">



   <?php
   echo $profile_pic['currentPosition'];
       ?>

        </b> at
       <?php
          echo $profile_pic['companyName'];

       ?>
           <br/>
    Holds a
       </b>

       <?php
echo $profile_pic['highestQualification'];
            ?>

            with
            <?php
echo $profile_pic['experience'];
            ?>
            Experience

            <br/>

</div>
<br/>
        <br/>
          <br/>


          <?php
          //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


          $sql_query1 =  mysqli_query($dbc,"SELECT * FROM all_evidence_document WHERE reference_no ='".$profile_pic['Email']."'");
          $number = 1;
          if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
          {?>



          <?php
          $invoice1 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM all_evidence_document WHERE reference_no ='".$profile_pic['Email']."'"));
           ?>

Attached CV: <br/> <a href="views/stock-item/documents/<?php echo $invoice1['cv'];?>" target="_blank">

           <?php echo $invoice1['cv'];?>

         </a><br/>

          <?php
          }
          else
          {
            ?>
          <br/>
          <div class="alert alert-success">
          <strong><i class="fa fa-info-circle"></i> No CV was attached</strong>
          </div>

          <?php
          }
          ?>


<b>Cover Letter</b>

<?php
//$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


$sql_query1 =  mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE applicant_email ='".$get_mail['applicant_email']."'");
$number = 1;
if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
{?>

<br/>

<?php echo $get_mail['cover_letter'];?>

<?php
}
else
{
  ?>
<br/>
<div class="alert alert-info">
<strong><i class="fa fa-info-circle"></i> No Cover Letter Was Included</strong>
</div>

<?php
}
?>


<hr style="border-top: 1px dashed #8c8b8b;">
<b>Employement History</b>

<?php
//$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
$sql_query1 =  mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$get_mail['applicant_email']."'");
$number = 1;
if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
{?>

<table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
<thead>
<tr>
<td>#</td>
<td>Job Title</td>
<td>Company Name</td>
<td>Job Level</td>

<td>Experience</td>
<!--<td>Edit</td> -->

</tr>
</thead>
<?php
$no = 1;
$sql= mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$get_mail['applicant_email']."' ORDER BY start_date DESC ");
while($employment = mysqli_fetch_array($sql))
{
?>
<tr style="cursor: pointer;">
<td width="40px"><?php echo $no++ ;?>.

</td>
<td><?php echo $employment['job_title'];?></td>
<td><?php echo $employment['comp_name'];?></td>
<td><?php echo $employment['job_level'];?></td>

<td><?php echo $employment['duration'];?></td>

</tr>
<?php
}
?>
</table>

<?php
}
else
{
?>

<button class="btn btn-link" style="float:right;"
data-toggle="modal" data-target="#add-employment-history-modal">
<i class="fa fa-plus-circle"></i> No employment History was Added
</button>

<?php
}
?>



<hr style="border-top: 1px dashed #8c8b8b;">
<b>Education History</b>


<?php
//$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");

$sql_query1 =  mysqli_query($dbc,"SELECT * FROM education_history WHERE email ='".$get_mail['applicant_email']."'");
$number = 1;
if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
{?>

<table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
<thead>
<tr>
<td>#</td>
<td>School Name</td>
<td>Qualification</td>

<td>Duration</td>
<!--<td>Edit</td> -->
</tr>
</thead>
<?php
$no = 1;
$sql= mysqli_query($dbc,"SELECT * FROM education_history WHERE email ='".$get_mail['applicant_email']."' ORDER BY start_date DESC ");
while($employment = mysqli_fetch_array($sql))
{
?>
<tr style="cursor: pointer;">
<td width="40px"><?php echo $no++ ;?>.

</td>

<td><?php echo $employment['school_name'];?></td>
<td><?php echo $employment['qualification'];?></td>

<td><?php echo $employment['duration'];?></td>


</tr>
<?php
}
?>
</table>

<?php
}
else
{
?>

<button class="btn btn-link" style="float:right;"
data-toggle="modal" data-target="#add-education-history-modal">
<i class="fa fa-plus-circle"></i> No details of Education History added</p>
</button>

<?php
}
?>


<hr style="border-top: 1px dashed #8c8b8b;">
<b>Job Skills</b>

<form id="add-job-skills-form">

<input type="hidden" name="add-job-skills-history" value="add-job-skills-history">
<input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>">
<div class="row">

<div class="col-md-8 col-xs-12 form-group">


              <?php

                $sql_query = mysqli_query($dbc,"SELECT * FROM selected_job_skills WHERE email ='".$get_mail['applicant_email']."' ");

                while($row = mysqli_fetch_array($sql_query))
                {
                  $sql_staff_name = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE EmpNo='".$row['staff_id']."'"));
                  ?>
                  <?php echo $row['skill_name'];?>,

                  <?php
                }

               ?>

          </div>
          </div>




</form>

<hr style="border-top: 1px dashed #8c8b8b;">
<b>Certificate and Awards</b>

<?php
//$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


$sql_query1 =  mysqli_query($dbc,"SELECT * FROM awards WHERE email ='".$get_mail['applicant_email']."'");
$number = 1;
if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
{?>

<table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
<thead>
<tr>
<td>#</td>
<td>Award Name</td>
<td>Type</td>
<td>Year Received</td>
<td>Institution</td>
<!--<td>Edit</td> -->

</tr>
</thead>
<?php
$no = 1;
$sql2= mysqli_query($dbc,"SELECT * FROM awards ORDER BY year_received DESC ");
while($awards = mysqli_fetch_array($sql2))
{
?>
<tr style="cursor: pointer;">
<td width="40px"><?php echo $no++ ;?>.

</td>

<td><?php echo $awards['award_name'];?></td>
<td><?php echo $awards['type'];?></td>

<td><?php echo $awards['year_received'];?></td>
<td><?php echo $awards['institution'];?></td>



</td>

</tr>
<?php
}
?>
</table>

<?php
}
else
{
?>

<button class="btn btn-link" style="float:right;"
data-toggle="modal" data-target="#add-awards-history-modal">
<i class="fa fa-plus-circle"></i> Give overview of Certificates and Awards</p>
</button>

<?php
}
?>


<!-- start add end product modal -->
<div class="modal fade" id="add-awards-history-modal" role="dialog">
<div class="modal-dialog" role="document">
<div class="modal-content">

<div class="modal-header alert alert-success">

<h5 class="modal-title">Adding Certificates And Awards
<span class="font-weight-bold"></h5>
<button type="button" class="close" data-dismiss="modal" aria-label="Close">
<span aria-hidden="true">&times;</span>
</button>
</div>
<div class="modal-body">
<form id="add-awards-history-form">

<input type="hidden" name="add-awards-history" value="add-awards-history">
<input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

<div class="row border-bottom mx-4">
<div class="col-lg-5 col-xs-12 form-group">
<label><span class="required">*</span>Institution</label>
  <input type="text" autocomplete="off" class="select2 form-control" name="institution">
</div>
<div class="col-lg-5 col-xs-12 form-group">
<label><span class="required">*</span>Award Name</label>
<?php
$result2 = mysqli_query($dbc, "SELECT * FROM award_type ORDER BY id ASC");
echo '
<select name="type" data-tags="true" class="select2 form-control" data-placeholder="Select Award Type" required>
<option></option>';
while($row = mysqli_fetch_array($result2)) {
    echo '<option value="'.$row['type'].'">'.$row['type']."</option>";
}
echo '</select>';
?>
</div>
<div class="col-lg-5 col-xs-12 form-group">
<label><span class="required">*</span>Award Name</label>
  <input type="text" autocomplete="off" class="select2 form-control" name="award_name">
</div>
<div class="col-lg-5 col-xs-12 form-group">
<label> <span class="required">*</span> Year Received</label>
<div class="input-group mb-2 mr-sm-2">
<div class="input-group-prepend">
  <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
</div>
<input type="text" class="form-control project_start_date" autocomplete="off" name="year_received" required>
</div>
</div>


</div>

      <!-- start row button -->
<div class="row">
  <div class="col-md-12 text-center">
      <button type="submit" class="btn btn-success btn-block font-weight-bold submitting">SUBMIT</button>
  </div>
</div>

</form>
</div>
<div class="modal-footer">
<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
</div>
</div>
</div>
</div>

</div>
</div>
