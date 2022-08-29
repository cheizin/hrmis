<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}

if(!isset($_POST['id']))
{
  exit("Please select academic Details ");
}


session_start();
include("../../controllers/setup/connect.php");

$profile_pic= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id='".$_POST['id']."'"));
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/


?>
<div class="col-lg-12 col-xs-12">
  <div class="card card-success card-outline">
    <div class="card-header">

      <button class="btn btn-link" style="float:right;"
              data-toggle="modal" data-target="#add-academic-details-modal">
             Add Academic Qualification
      </button>

    </div>
    <div class="card-body table-responsive">

      <?php
      //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


      $sql_query1 =  mysqli_query($dbc,"SELECT * FROM education_history WHERE reference_no ='".$_POST['id']."'");
      $number = 1;
      if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
      {?>

      <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
      <thead>
      <tr>
      <td>#</td>
      <td>School Name</td>
      <td>Qualification</td>
      <td>Start Date</td>
      <td>End Date</td>
      <td>Duration</td>
        <td>Description</td>


      <!--<td>Edit</td> -->

      </tr>
      </thead>
      <?php
      $no = 1;
      $sql= mysqli_query($dbc,"SELECT * FROM education_history WHERE reference_no ='".$_POST['id']."' ORDER BY start_date DESC ");
      while($employment = mysqli_fetch_array($sql))
      {
      ?>
      <tr style="cursor: pointer;">
      <td width="40px"><?php echo $no++ ;?>.

      </td>

      <td><?php echo $employment['school_name'];?></td>
      <td><?php echo $employment['qualification'];?></td>

      <td><?php echo $employment['start_date'];?></td>
      <td><?php echo $employment['end_date'];?></td>
      <td><?php echo $employment['duration'];?></td>
        <td><?php echo $employment['description'];?></td>


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
         <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No academic Details Added</strong>
</div>

       <?php
     }
     ?>



    </div>
  </div>
</div>

<!-- start add end product modal -->
<div class="modal fade" id="add-academic-details-modal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header alert alert-success">

        <h5 class="modal-title">Academic details for <b><?php echo $profile_pic['fName'];?> </b></h5>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-academic-details-form">

          <input type="hidden" name="reference_no" value="<?php echo $_POST['id'];?>">
            <input type="hidden" name="email" value="<?php echo $profile_pic['Email'];?>">
          <input type="hidden" name="add-academic-details" value="add-academic-details">

          <div class="row border-bottom mx-4">
          <div class="col-lg-12 col-xs-12 form-group">
          <label><span class="required">*</span>Institution</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="school_name">
          </div>
          <div class="col-lg-12 col-xs-12 form-group">
          <label><span class="required">*</span>Qualification</label>
          <?php
          $result2 = mysqli_query($dbc, "SELECT * FROM qualification ORDER BY id ASC");
          echo '
          <select name="qualification" data-tags="true" class="select2 form-control" data-placeholder="Select Qualification" required>
          <option></option>';
          while($row = mysqli_fetch_array($result2)) {
              echo '<option value="'.$row['rank_name'].'">'.$row['rank_name']."</option>";
          }
          echo '</select>';
          ?>
          </div>
          <div class="col-lg-12 col-xs-12 form-group">
          <label><span class="required">*</span>Course Name</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="qualification_name">
          </div>


          </div>


          <div class="row border-bottom mx-4">

            <div class="col-lg-5 col-xs-12 form-group">
              <label> <span class="required">*</span> Start Date</label>
              <div class="input-group mb-2 mr-sm-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                </div>
                <input type="text" class="form-control project_start_date" autocomplete="off" name="start_date" required>
              </div>
            </div>
            <div class="col-lg-5 col-xs-12 form-group">
              <label> <span class="required">*</span> End Date</label>
              <div class="input-group mb-2 mr-sm-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                </div>
                <input type="text" class="form-control project_end_date" autocomplete="off" name="end_date" required>
              </div>
            </div>
            <div class="col-lg-2 col-xs-12 form-group">
                <label>Duration</label>


                <input type="hidden" class="form-control project-duration-in-days" name="duration" readonly required>
                <input type="text" class="form-control pull-right project-duration bg-grey" readonly required>
            </div>

          </div>

          <div class="row border-bottom mx-4">

          <div class="col-lg-12 col-xs-12 form-group">
          <label for="description"><span class="required">*</span>Description</label>

            <textarea name="description" class="form-control" required></textarea>
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
<!-- end add end product -->
