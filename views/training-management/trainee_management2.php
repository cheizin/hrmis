

<?php
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['eid']))
{
  exit("Please select course ");
}

$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM cal_events WHERE eid ='".$_POST['eid']."'"));


?>

<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
       <li class="breadcrumb-item active" aria-current="page">Assigned Course List for <strong>  <?php echo $row['subject'];?> </strong></li>
     </ol>
</nav>

<br/>

<input type="hidden" name="eid" class="eid" value="<?php echo $_POST['eid'] ;?>">
<div class="row">
  <div class="col-lg-12">
    <ul class="nav nav-tabs nav-fill" role="tablist">
      <li class="nav-item">
        <a class="nav-link course-tab" data-toggle="tab" href="#course-tab" role="tab"
            aria-controls="contact" aria-selected="false">
           Course List
        </a>
      </li>

    </ul>
    <div class="tab-content">

      <div class="tab-pane fade" id="course-tab" role="tabpanel"></div>

    </div>

  </div>
</div>




<!--PROJECT MODALS -->
