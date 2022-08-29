<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['reference_no']))
{
  exit("Please select The Job Vaccancy ");
}

//$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_titles WHERE id ='".$_POST['id']."'"));

$row3 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$_POST['reference_no']."'"));


$row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE id ='".$_POST['reference_no']."'"));


$row5 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$row4['job_posting_id']."'"));
?>


<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
       <li class="breadcrumb-item active" aria-current="page">Exam Details for Position <?php echo $row5['job_title'];?> </li>

     </ol>
</nav>


<input type="hidden" name="job_title" class="job_title" value="<?php echo $row5['job_title'];?>">

<div class="row">
  <div class="col-lg-12">
    <ul class="nav nav-tabs nav-fill" role="tablist">
      <li class="nav-item">
        <a class="nav-link test-details-tab" data-toggle="tab" href="#test-details-tab" role="tab"
            aria-controls="contact" aria-selected="false">
          <i class="fas fa-users-class"></i> Exam Details
        </a>
      </li>


    </ul>
    <div class="tab-content">

      <div class="tab-pane fade" id="test-details-tab" role="tabpanel"></div>


    </div>

  </div>
</div>




<!--PROJECT MODALS -->
