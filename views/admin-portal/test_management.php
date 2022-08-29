<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['id']))
{
  exit("Please select The Job Vaccancy ");
}

$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_titles WHERE id ='".$_POST['id']."'"));
?>

<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
   <li class="breadcrumb-item active" aria-current="page">Job Title Test For:  <b>   <strong><?php echo $row['title_name'];?></strong></li></b>
     </ol>
</nav>
<br/>


<input type="hidden" name="id" class="id" value="<?php echo $row['id'] ;?>">

<div class="row">
  <div class="col-lg-12">
    <ul class="nav nav-tabs nav-fill" role="tablist">
      <li class="nav-item">
        <a class="nav-link job-details-tab" data-toggle="tab" href="#job-details-tab" role="tab"
            aria-controls="contact" aria-selected="false">
          <i class="fas fa-users-class"></i> Job Test Details
        </a>
      </li>


    </ul>
    <div class="tab-content">

      <div class="tab-pane fade" id="job-details-tab" role="tabpanel"></div>


    </div>

  </div>
</div>




<!--PROJECT MODALS -->
