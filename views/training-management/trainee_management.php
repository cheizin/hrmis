

<?php
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['id']))
{
  exit("Please select Stock ");
}

$pdetails = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id ='".$_POST['id']."'"));
?>
<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
   <li class="breadcrumb-item active" aria-current="page">Trainee Name:  <b>   <strong><?php echo $pdetails ['fName'];?></strong></li></b>
     </ol>
</nav>
<br/>



<input type="hidden" name="id" class="id" value="<?php echo $pdetails['id'] ;?>">

<div class="row">
  <div class="col-lg-12">
    <ul class="nav nav-tabs nav-fill" role="tablist">
      <li class="nav-item">
        <a class="nav-link course-details-tab" data-toggle="tab" href="#course-details-tab" role="tab"
            aria-controls="contact" aria-selected="false">
           Course Details
        </a>
      </li>


      <li class="nav-item">
        <a class="nav-link trainers-details-tab" data-toggle="tab" href="#trainers-details-tab" role="tab"
           aria-selected="false">
    Quiz Details
        </a>
      </li>
      <!--

      <li class="nav-item">
        <a class="nav-link trainee-details-tab" data-toggle="tab" href="#trainee-details-tab" role="tab"
           aria-selected="false">
        Trainees
        </a>
      </li>



      <li class="nav-item">
        <a class="nav-link evaluation-details-tab" data-toggle="tab" href="#evaluation-details-tab" role="tab"
           aria-selected="false">
          Course Evaluation
        </a>
      </li>

            -->
      <li class="nav-item">
        <a class="nav-link materials-details-tab" data-toggle="tab" href="#materials-details-tab" role="tab"
           aria-selected="false">
           E-Materials
        </a>
      </li>





    </ul>
    <div class="tab-content">

      <div class="tab-pane fade" id="course-details-tab" role="tabpanel"></div>

      <div class="tab-pane fade" id="trainers-details-tab" role="tabpanel"></div>

        <div class="tab-pane fade" id="trainee-details-tab" role="tabpanel"></div>

      <div class="tab-pane fade" id="evaluation-details-tab" role="tabpanel"></div>

        <div class="tab-pane fade" id="materials-details-tab" role="tabpanel"></div>


    </div>

  </div>
</div>




<!--PROJECT MODALS -->
