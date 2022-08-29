<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}

if(!isset($_POST['id']))
{
  exit("Please select Bank Details ");
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
              data-toggle="modal" data-target="#add-employmnet-details-modal">
             Add Employment Details
      </button>

    </div>
    <div class="card-body table-responsive">

      <?php
   $sql_query1 =  mysqli_query($dbc,"SELECT * FROM employment_details_module WHERE reference_no ='".$_POST['id']."' ORDER BY id DESC limit 1");

   $number = 1;
   if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
   {?>
     <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
       <thead>
         <tr>
           <td>#</td>
           <td>Department</td>
           <td>Supervisor</td>
           <td>Job Title</td>
           <td>Employment Type</td>
           <td>Job Grade</td>
           <td>Date of Joining</td>
            <td>End of contract/retirement</td>
           <td>Probabation Period</td>
            <td>Job Responsibilities</td>

         </tr>
       </thead>
       <?php
          $no = 1;
          $sql= mysqli_query($dbc,"SELECT * FROM employment_details_module WHERE reference_no ='".$_POST['id']."' ORDER BY id DESC limit 1");
          while($product = mysqli_fetch_array($sql))
          {
            ?>
            <tr style="cursor: pointer;">
              <td width="40px"><?php echo $no++ ;?>.

              </td>

              <td><?php echo $product['department'];?></td>
              <td><?php echo $product['supervisor'];?></td>

              <td><?php echo $product['job_title'];?></td>
              <td><?php echo $product['employment_type'];?></td>
                <td><?php echo $product['job_grade'];?></td>
                  <td><?php echo $product['start_date'];?></td>
                    <td><?php echo $product['end_date'];?></td>
                    <td><?php echo $product['duration'];?></td>
                      <td><?php echo $product['job_responsibilities'];?></td>

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
<strong><i class="fa fa-info-circle"></i> No Employment Details Added</strong>
</div>

       <?php
     }
     ?>



    </div>
  </div>
</div>

<!-- start add end product modal -->
<div class="modal fade" id="add-employmnet-details-modal" role="dialog">
  <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header alert alert-success">

        <h5 class="modal-title">Employment details for <b><?php echo $profile_pic['fName'];?> </b></h5>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-employment-details-form">
          <input type="hidden" name="reference_no" value="<?php echo $_POST['id'];?>">

          <input type="hidden" name="add-employment-details" value="add-employment-details">
          <div class="row border-bottom mx-3">


             <div class="col-lg-4 col-xs-12 form-group">
                 <label><span class="required">*</span>Departments</label>
                 <?php
                 $result = mysqli_query($dbc, "SELECT * FROM departments_module ORDER BY department_name ASC");
                 echo '
                 <select name="department_name" data-tags="true" class="select2 form-control" data-placeholder="Select Department" required>
                 <option></option>';
                 while($row = mysqli_fetch_array($result)) {
                     echo '<option value="'.$row['department_name'].'">'.$row['department_name']."</option>";
                 }
                 echo '</select>';
                 ?>
             </div>

             <div class="col-lg-4 col-xs-12 form-group">
                 <label><span class="required">*</span>Employment Type</label>
                 <?php
                 $result = mysqli_query($dbc, "SELECT * FROM employment_type ORDER BY emp_type ASC");
                 echo '
                 <select name="emp_type" data-tags="true" class="select2 form-control" data-placeholder="Select Employment Type" required>
                 <option></option>';
                 while($row = mysqli_fetch_array($result)) {
                     echo '<option value="'.$row['emp_type'].'">'.$row['emp_type']."</option>";
                 }
                 echo '</select>';
                 ?>
             </div>

             <div class="col-lg-4 col-xs-12 form-group">
                 <label><span class="required">*</span>Supervisor</label>
                 <?php
                 $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE companyName ='".$profile_pic['companyName']."' ORDER BY id ASC");
                 echo '
                 <select name="supervisor" data-tags="true" class="select2 form-control" data-placeholder="Select Supervisor Name" required>
                 <option></option>';
                 while($row = mysqli_fetch_array($result)) {
                     echo '<option value="'.$row['fName'].'">'.$row['fName']."</option>";
                 }
                 echo '</select>';
                 ?>
             </div>

           </div>

           <div class="row border-bottom mx-3">



              <div class="col-lg-4 col-xs-12 form-group">
                  <label for="item_name"><span class="required">*</span>Job Title</label>

                    <input type="text" autocomplete="off" class="select2 form-control" name="job_title">

              </div>

              <div class="col-lg-4 col-xs-12 form-group">
                  <label><span class="required">*</span>Job Grade</label>
                  <?php
                  $result = mysqli_query($dbc, "SELECT * FROM job_grade ORDER BY id ASC");
                  echo '
                  <select name="grade_name" data-tags="true" class="select2 form-control" data-placeholder="Select Grade Name" required>
                  <option></option>';
                  while($row = mysqli_fetch_array($result)) {
                      echo '<option value="'.$row['grade_name'].'">'.$row['grade_name']."</option>";
                  }
                  echo '</select>';
                  ?>
              </div>

              <div class="col-lg-12 col-xs-12 form-group">
                  <label for="job_responsibilities"><span class="required">*</span>Job Responsibilities</label>

                    <textarea name="job_responsibilities" class="form-control" required></textarea>
              </div>
                </div>
                         <div class="row border-bottom mx-3">

              <div class="col-lg-4 col-xs-12 form-group">
                <label> <span class="required">*</span> Date of Joining</label>
                <div class="input-group mb-2 mr-sm-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                  </div>
                  <input type="text" class="form-control project_start_date" autocomplete="off" name="product_start_date" required>
                </div>
              </div>
              <div class="col-lg-4 col-xs-12 form-group">
                <label> <span class="required">*</span> End of Contract/Retirement</label>
                <div class="input-group mb-2 mr-sm-2">
                  <div class="input-group-prepend">
                    <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                  </div>
                  <input type="text" class="form-control project_end_date" autocomplete="off" name="product_end_date" required>
                </div>
              </div>
              <div class="col-lg-4 col-xs-12 form-group">
                  <label><span class="required">*</span>Duration</label>


                  <input type="hidden" class="form-control project-duration-in-days" name="duration" readonly required>
                  <input type="text" class="form-control pull-right project-duration bg-grey" readonly required>
              </div>
            </div>



              <div class="row">

                <div class="pull-left mt-4">
                  <small class="text-muted">Recorded by:-<?php echo $_SESSION['fName'];?></small>
                </div>
                </div>


          <div class="row text-center">
              <button type="submit" class="btn btn-primary btn-block font-weight-bold submitting">SUBMIT</button>
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
