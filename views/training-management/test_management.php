<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['eid']))
{
  exit("Please select The Job Vaccancy ");
}

$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM cal_events WHERE eid ='".$_POST['eid']."'"));
?>

<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
   <li class="breadcrumb-item active" aria-current="page">Quiz Test For:  <b>   <strong><?php echo $row['subject'];?></strong></li></b>
     </ol>
</nav>
<br/>


<input type="hidden" name="eid" class="eid" value="<?php echo $row['eid'] ;?>">

<div class="row">
  <div class="col-lg-12">
    <ul class="nav nav-tabs nav-fill" role="tablist">
      <li class="nav-item">
        <a class="nav-link job-details-tab2" data-toggle="tab" href="#job-details-tab2" role="tab"
            aria-controls="contact" aria-selected="false">
          <i class="fas fa-users-class"></i> Course Quiz Details
        </a>
      </li>


    </ul>
    <div class="tab-content">

      <div class="tab-pane fade" id="job-details-tab2" role="tabpanel"></div>


    </div>

  </div>
</div>




<!--PROJECT MODALS -->
