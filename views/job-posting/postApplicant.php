<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['job_posting_id']))
{
  exit("Please select The Job Applied ");
}

$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$_POST['job_posting_id']."'"));

$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['job_posting_id']."'"));


  $result = mysqli_fetch_array(mysqli_query($dbc, "SELECT * FROM application_status_details WHERE reference_no ='".$_POST['job_posting_id']."' ORDER BY id DESC LIMIT 1" ));
?>
<nav aria-label="breadcrumb">
   <ol class="breadcrumb">
     <li class="breadcrumb-item active" aria-current="page">
     Job Applied: <strong>  <?php echo $row['job_title'];?> <br/> </strong>JOB Code: <strong> <?php echo $row['id'];?> </strong>  <br/>

     Status: <strong>


                       <?php


                 $row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['job_posting_id']."'"));

                   $row5 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$_POST['job_posting_id']."'"));

                   $row6 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM assigned_test WHERE posted_job='".$row5['job_title']."'"));


                     $sql_query1 =  mysqli_query($dbc,"SELECT * FROM application_status_details WHERE reference_no ='".$row6['id']."' ORDER BY id ");
                     $number = 1;
                     if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
                     {?>
                       <?php

                            $result = mysqli_query($dbc, "SELECT * FROM application_status_details WHERE reference_no ='".$row6['id']."'ORDER BY id "  );
                            if(mysqli_num_rows($result))
                            {
                              while($profile_pic = mysqli_fetch_array($result))
                              {
                                ?>
                                <?php echo $profile_pic['status_name']; ?>

                             <?php

                              }
                            }
                            ?>

                                     <?php
                                     }
                                     else
                                     {

                                       echo $row['job_status'];

                                     }
                                     ?>



                         </strong>
                           <br/>
Deadline: <strong> <?php echo $row['deadline'];?> </strong><br/>
</li>
     </ol>
</nav>

<div class="row">
  <div class="col-lg-5 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        <form id="add-job-application-form">

          <input type="hidden" name="add-job-application" value="add-job-application">
            <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

             <input type="hidden" name="email" value ="<?php echo $row['id'];?>" >



               <div class="row border-bottom mx-4">
                <strong> Job Vaccancy Details  </strong>

               </div>
            <div class="row border-bottom mx-2">
        <div class="col-lg-6 col-xs-12 form-group">
            <label><span class="required">*</span>Company Name</label>

            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE email ='".$row['email']."' ORDER BY id "  );
                 if(mysqli_num_rows($result))
                 {
                   while($product_unit = mysqli_fetch_array($result))
                   {
                     ?>
                       <input type="text" class="select2 form-control" readonly=""  value="<?php echo $product_unit['fName'];?>">
                        <?php
                   }
                 }
                 ?>

        </div>
        <div class="col-lg-6 col-xs-12 form-group">
            <label><span class="required">*</span>Company Type</label>
            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE email ='".$row['email']."' ORDER BY id "  );
                 if(mysqli_num_rows($result))
                 {
                   while($product_unit = mysqli_fetch_array($result))
                   {
                     ?>
                       <input type="text" class="select2 form-control" readonly=""  value="<?php echo $product_unit['lName'];?>">
                        <?php
                   }
                 }
                 ?>

        </div>

          </div>

              <div class="row border-bottom mx-2">
        <div class="col-lg-6 col-xs-12 form-group">
            <label for="item_name"><span class="required">*</span>Experience Length</label>


               <input type="text" class="select2 form-control" readonly=""  value="<?php echo $row['expLength'];?>">

        </div>


            <div class="col-lg-6 col-xs-12 form-group">
                <label><span class="required">*</span>Employment Type</label>
                   <input type="text" class="select2 form-control" readonly=""  value="<?php echo $row['emp_type'];?>">
            </div>

                </div>
<div class="row border-bottom mx-2">
                        <div class="col-lg-6 col-xs-12 form-group">
                          <label><span class="required">*</span>Minimum Qualification</label>
                             <input type="text" class="select2 form-control" readonly=""  value="<?php echo $row['rank_name'];?>">
                        </div>
                        <div class="col-lg-6 col-xs-12 form-group">
                            <label><span class="required">*</span>Experience Level</label>
                           <input type="text" class="select2 form-control" readonly=""  value="<?php echo $row['exp_level'];?>">
                        </div>

                          </div>

                          <div class="row border-bottom mx-2">


                          <div class="col-lg-6 col-xs-12 form-group">
                              <label for="item_description"><span class="required">*</span>Job Location</label>

                                   <input type="text" class="select2 form-control" readonly=""  value="<?php echo $row['job_location'];?>">
                          </div>
                          <div class="col-lg-4 col-xs-12 form-group">
                              <label for="item_description"><span class="required">*</span>Country</label>

                             <input type="text" class="select2 form-control" readonly=""  value="<?php echo $row['country'];?>">
                          </div>
                            </div>


      <div class="row border-bottom mx-2">
                          <div class="col-lg-6 col-xs-12 form-group">
                            <label> <span class="required">*</span> Deadline</label>
                            <div class="input-group mb-2 mr-sm-2">
                              <div class="input-group-prepend">
                                <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                              </div>
                                   <input type="text" class="select2 form-control" readonly=""  value="<?php echo $row['deadline'];?>">
                            </div>
                          </div>

                          </div>




            <div class="row border-bottom mx-1">
              <div class="col-lg-12 col-xs-12 form-group">
                  <label for="item_name"><span class="required">*</span>job Description</label>

                    <textarea name="job_description" class="form-control"  readonly="" ><?php echo $row['job_description'];?></textarea>

              </div>
                </div>
<div class="row border-bottom mx-1">
        <div class="col-lg-12 col-xs-12 form-group">
            <label for="item_name"><span class="required">*</span>Responsibilities and Duties</label>

              <textarea name="responsibility" class="form-control" readonly="" ><?php echo $row['responsibility'];?></textarea>

        </div>

        </div>


            </form>

      </div>

    </div>
  </div>

  <div class="col-lg-7 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">



<div class="row border-bottom mx-4">
<strong> Applicant Details </strong>

</div>

        <div class="row border-bottom mx-3">
          <div class="col-lg-12 col-xs-12 form-group">
              <label for="item_name"><span class="required">*</span>Cover Letter</label>

                <textarea name="cover_letter" class="form-control" readonly><?php echo $row2['cover_letter'];?></textarea>

          </div>

    <hr style="border-top: 1px dashed #8c8b8b;">
    </div>
Education History


<?php
//$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


$sql_query1 =  mysqli_query($dbc,"SELECT * FROM education_history WHERE email ='".$_SESSION['email']."'");
$number = 1;
if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
{?>

<table class="table table-striped table-bordered table-hover" id="end-product-tablet" style="width:100%">
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
$sql= mysqli_query($dbc,"SELECT * FROM education_history ORDER BY start_date DESC ");
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
<i class="fa fa-plus-circle"></i> Add a short overview of your Education History before Application</p>
</button>

<?php
}
?>
<hr style="border-top: 1px dashed #8c8b8b;">
Career History

<?php
//$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
$sql_query1 =  mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$_SESSION['email']."'");
$number = 1;
if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
{?>

<table class="table table-striped table-bordered table-hover" id="end-productt" style="width:100%">
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
$sql= mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$_SESSION['email']."' ORDER BY start_date DESC ");
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
<i class="fa fa-plus-circle"></i> Add a short overview of your career history before Application
</button>

<?php
}
?>
<hr style="border-top: 1px dashed #8c8b8b;">
<form id="add-application-details-form">

            <input type="hidden" name="add-job-application" value="add-job-application">
              <input type="hidden" name="applicant_email" value ="<?php echo $_SESSION['email'];?>" >

               <input type="hidden" name="job_posting_id" value ="<?php echo $_POST['job_posting_id'];?>" >


        </form>


      </div>

    </div>
  </div>
</div>



<?php
//fetch last reference number from database and auto increment it
$reference_row = mysqli_fetch_array(mysqli_query($dbc,"SELECT MAX(reference_no) AS ref_no FROM stock_item "));
//auto increment the fetched record
$reference_row = $reference_row['ref_no'];
//add programm name prefix, plus the auto incremented value
$reference_row = $reference_row+1;
?>
