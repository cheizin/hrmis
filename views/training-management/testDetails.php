<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");


$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM cal_events WHERE eid ='".$_POST['eid']."'"));

$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_test WHERE reference_no ='".$_POST['eid']."'"));
?>

<div class="row">

  <div class="col-lg-7 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        <form id="add-quiz-history-form">

          <input type="hidden" name="add_quiz_history" value="add_quiz_history">


            <input type="hidden" name="eid" value="<?php echo $_POST['eid'];?>"  >

            <div class="row border-bottom mx-4">
              <div class="col-lg-12 col-xs-12 form-group">
                  <label for="item_name"><span class="required">*</span>Quiz Name </label>

                    <textarea name="test_name" class="form-control" required></textarea>

              </div>

            </div>

            <div class="row">
              <div class="col-md-12 text-center">
                  <button type="submit" class="btn btn-success btn-block font-weight-bold submitting">SUBMIT</button>
              </div>
            </div>

            </form>

      </div>

    </div>

  </div>

  <div class="col-lg-5 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">

<!--
        <button class="btn btn-link" style="float:right;"
                data-toggle="modal" data-target="#add-job-modal2">
                <i class="fa fa-plus-circle">Click here to assign quiz To a Course</i>
        </button>

      -->
<br/><br/>

        <?php

          $sql_query = mysqli_query($dbc,"SELECT * FROM assigned_test WHERE reference_no ='".$row['eid']."'");

          while($row = mysqli_fetch_array($sql_query))
          {

            ?>
            <?php echo $row['posted_job'];?>

            <?php
          }

         ?>


        <!-- start add end product modal -->
        <div class="modal fade" id="add-job-modal2" role="dialog">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header alert alert-success">

        <h5 class="modal-title">Assigning quiz to a scheduled Course
        <span class="font-weight-bold"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
        <form id="add-job-post-form2">

        <input type="hidden" name="add-job-post2" value="add-job-post2">

          <input type="hidden" name="eid" value="<?php echo $row['eid'];?>"  >
        <!-- start of row -->

           <div class="row">

             <div class="col-lg-12 col-xs-12 form-group">
             <label><span class="required">*</span>Scheduled Course</label>
             <?php
             $result2 = mysqli_query($dbc, "SELECT * FROM cal_events ORDER BY eid ASC");
             echo '
             <select name="subject" data-tags="true" class="select2 form-control" data-placeholder="Select Course" required>
             <option></option>';
             while($row = mysqli_fetch_array($result2)) {
                 echo '<option value="'.$row['subject'].'">'.$row['subject']."</option>";
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
</br>




      </div>

    </div>
  </div>
  </div>

  <?php
  //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
  $sql_query1 =  mysqli_query($dbc,"SELECT * FROM job_test WHERE reference_no ='".$_POST['eid']."'");
  $number = 1;
  if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
  {?>

  <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
  <thead>
  <tr>
  <td>#</td>
  <td>Test Name</td>
  <td>Time Recorded</td>
  <td>Recorded by</td>
  <!--<td>Edit</td> -->

  </tr>
  </thead>
  <?php
  $no = 1;
  $sql= mysqli_query($dbc,"SELECT * FROM job_test WHERE reference_no ='".$_POST['eid']."' ");
  while($employment = mysqli_fetch_array($sql))
  {
  ?>
  <tr style="cursor: pointer;">
  <td width="40px"><?php echo $no++ ;?>.

  </td>


  <td><?php echo $employment['test_name'];?></td>
  <td><?php echo $employment['time_recorded'];?></td>

  <td><?php echo $employment['recorded_by'];?></td>

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

  <button class="btn btn-link"
  data-toggle="modal" data-target="#add-employment-history-modal">
   No Quiz Details Have been added
  </button>

  <?php
  }
  ?>
