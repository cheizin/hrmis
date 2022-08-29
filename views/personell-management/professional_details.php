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
              data-toggle="modal" data-target="#add-professional-details-modal">
             Add Professional Details
      </button>
    </div>
    <div class="card-body table-responsive">

      <?php
      //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
      $sql_query1 =  mysqli_query($dbc,"SELECT * FROM employment_history WHERE reference_no ='".$_POST['id']."'");
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
      <td>Start Date</td>
      <td>End Date</td>
      <td>Experience</td>
      <!--<td>Edit</td> -->

      </tr>
      </thead>
      <?php
      $no = 1;
      $sql= mysqli_query($dbc,"SELECT * FROM employment_history WHERE reference_no ='".$_POST['id']."' ORDER BY id DESC ");
      while($employment = mysqli_fetch_array($sql))
      {
      ?>
      <tr style="cursor: pointer;">
      <td width="40px"><?php echo $no++ ;?>.

      </td>
      <td class="btn btn-link" data-toggle="modal" data-target="#emplyoment-details-modal-<?php echo $employment['id'];?>" title="Click <?php echo $employment['job_title'];?> to view more Details">
        <span class="text-primary" style="cursor:pointer;"><?php echo $employment['job_title'];?></span>
        <!-- employment details modal -->
        <div class="modal fade" id="emplyoment-details-modal-<?php echo $employment['id'];?>" role="dialog">
          <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
            <div class="modal-content">

              <div class="modal-header alert alert-success">

                <h5 class="modal-title">Employment History for <b><?php echo $profile_pic['fName'];?> </b>
                   <span class="font-weight-bold"></h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <form id="add-professional-history-form">

                  <input type="hidden" name="add-professional-history" value="add-professional-history">
                    <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

                    <div class="row border-bottom mx-4">
                <div class="col-lg-5 col-xs-12 form-group">
                    <label><span class="required">*</span>Employer Name</label>
                      <input type="text" class="select2 form-control" readonly=""  value="<?php echo $employment['comp_name'];?>">

                </div>
                <div class="col-lg-3 col-xs-12 form-group">
                    <label><span class="required">*</span>Industry</label>
          <input type="text"  class="select2 form-control" readonly="" value="<?php echo $employment['industry'];?>">
                </div>
                <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>Job Title</label>
                        <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['job_title'];?>">
                </div>


                    </div>

        <div class="row border-bottom mx-4">



          <div class="col-lg-3 col-xs-12 form-group">
              <label><span class="required">*</span>Work Type</label>
          <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['work_type'];?>">
          </div>

                                  <div class="col-lg-3 col-xs-12 form-group">
                                      <label><span class="required">*</span>Monthly Salary</label>
                                        <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['monthly_salary'];?>">
                                  </div>

                                  <div class="col-lg-3 col-xs-12 form-group">
                                      <label><span class="required">*</span>Job Level</label>
                        <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['job_level'];?>">
                                  </div>
                                  <div class="col-lg-3 col-xs-12 form-group">
                                      <label><span class="required">*</span>Country</label>
                                          <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['country'];?>">
                                  </div>

                    </div>

                    <div class="row border-bottom mx-4">

                      <div class="col-lg-3 col-xs-12 form-group">
                        <label> <span class="required">*</span> Start Date</label>
                        <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['start_date'];?>">
                      </div>
                      <div class="col-lg-3 col-xs-12 form-group">
                        <label> <span class="required">*</span> End Date</label>
            <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['end_date'];?>">
                      </div>
                      <div class="col-lg-3 col-xs-12 form-group">
                          <label><span class="required">*</span>Duration</label>
                          <input type="text" class="select2 form-control" readonly="" value="<?php echo $employment['duration'];?>">
                      </div>

              </div>

              <div class="row border-bottom mx-4">

                <div class="col-lg-12 col-xs-12 form-group">
                    <label for="job_responsibilities"><span class="required">*</span>Job Responsibilities</label>

                      <textarea name="job_responsibilities" class="form-control" required><?php echo $employment['job_responsibilities'];?></textarea>
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
          <!-- start view job history -->
      </td>

      <td><?php echo $employment['comp_name'];?></td>
      <td><?php echo $employment['job_level'];?></td>

      <td><?php echo $employment['start_date'];?></td>
      <td><?php echo $employment['end_date'];?></td>
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
         <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No Professional Details Added</strong>
</div>

       <?php
     }
     ?>



    </div>
  </div>
</div>

<!-- start add end product modal -->
<div class="modal fade" id="add-professional-details-modal" role="dialog">
  <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header alert alert-success">

        <h5 class="modal-title">Professional details for <b><?php echo $profile_pic['fName'];?> </b></h5>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-professional-history-form">

          <input type="hidden" name="add-professional-history" value="add-professional-history">
          <input type="hidden" name="reference_no" value="<?php echo $_POST['id'];?>">
            <input type="hidden" name="email" value="<?php echo $profile_pic['Email'];?>">

          <div class="row border-bottom mx-4">
          <div class="col-lg-3 col-xs-12 form-group">
          <label><span class="required">*</span>Employer Name</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="comp_name">
          </div>
          <div class="col-lg-3 col-xs-12 form-group">
          <label><span class="required">*</span>Industry</label>
          <?php
          $result = mysqli_query($dbc, "SELECT * FROM industry ORDER BY industry_name ASC");
          echo '
          <select name="industry" data-tags="true" class="select2 form-control" data-placeholder="Select Industry" required>
          <option></option>';
          while($row = mysqli_fetch_array($result)) {
              echo '<option value="'.$row['industry_name'].'">'.$row['industry_name']."</option>";
          }
          echo '</select>';
          ?>
          </div>
          <div class="col-lg-3 col-xs-12 form-group">
            <label><span class="required">*</span>Job Title</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="job_title">
          </div>
          <div class="col-lg-3 col-xs-12 form-group">
          <label><span class="required">*</span>Country</label>
            <input type="text" autocomplete="off" class="select2 form-control"  name="country">
          </div>

          </div>

          <div class="row border-bottom mx-4">



          <div class="col-lg-3 col-xs-12 form-group">
          <label><span class="required">*</span>Work Type</label>
          <?php
          $result = mysqli_query($dbc, "SELECT * FROM work_type ORDER BY work_type ASC");
          echo '
          <select name="work_type" data-tags="true" class="select2 form-control" data-placeholder="Select Work Type" required>
          <option></option>';
          while($row = mysqli_fetch_array($result)) {
          echo '<option value="'.$row['work_type'].'">'.$row['work_type']."</option>";
          }
          echo '</select>';
          ?>
          </div>

                        <div class="col-lg-3 col-xs-12 form-group">
                            <label><span class="required">*</span>Monthly Salary</label>
                              <input type="text" autocomplete="off" class="select2 form-control"  name="monthly_salary">
                        </div>

                        <div class="col-lg-3 col-xs-12 form-group">
                            <label><span class="required">*</span>Job Level</label>
                            <?php
                            $result = mysqli_query($dbc, "SELECT * FROM job_level ORDER BY job_level ASC");
                            echo '
                            <select name="job_level" data-tags="true" class="select2 form-control" data-placeholder="Select Job Level" required>
                            <option></option>';
                            while($row = mysqli_fetch_array($result)) {
                                echo '<option value="'.$row['job_level'].'">'.$row['job_level']."</option>";
                            }
                            echo '</select>';
                            ?>
                        </div>

          </div>

          <div class="row border-bottom mx-4">

            <div class="col-lg-3 col-xs-12 form-group">
              <label> <span class="required">*</span> Start Date</label>
              <div class="input-group mb-2 mr-sm-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                </div>
                <input type="text" class="form-control project_start_date" autocomplete="off" name="start_date" required>
              </div>
            </div>
            <div class="col-lg-3 col-xs-12 form-group">
              <label> <span class="required">*</span> End Date</label>
              <div class="input-group mb-2 mr-sm-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                </div>
                <input type="text" class="form-control project_end_date" autocomplete="off" name="end_date" required>
              </div>
            </div>
            <div class="col-lg-3 col-xs-12 form-group">
                <label><span class="required">*</span>Duration</label>


                <input type="hidden" class="form-control project-duration-in-days" name="duration" readonly required>
                <input type="text" class="form-control pull-right project-duration bg-grey" readonly required>
            </div>

          </div>

          <div class="row border-bottom mx-4">

          <div class="col-lg-12 col-xs-12 form-group">
          <label for="job_responsibilities"><span class="required">*</span>Job Responsibilities</label>

            <textarea name="job_responsibilities" class="form-control" required></textarea>
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
