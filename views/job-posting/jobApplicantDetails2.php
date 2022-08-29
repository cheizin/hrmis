<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['applicant_email']))
{
  exit("Please select The applicant");
}


$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$_POST['id']."'"));

$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));
?>
<nav aria-label="breadcrumb">
     Job Title <strong>  <?php echo $row['job_title'];?> <br/> </strong>JOB Code: <strong> <?php echo $row['id'];?> </strong>  <br/>

     Status:  <strong>
 <?php echo $row['status'];?>
                         </strong>
                           <br/>
Deadline: <strong> <?php echo $row['deadline'];?>  </strong><br/>

</nav>

        <?php
        //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."' ");
        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

<div class="row">
  <div class="col-lg-5 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">


        <div class="row border-bottom mx-4">


        </div>
        <?php

        $row3 = mysqli_num_rows(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));


        ?>
      <strong>     <?php echo $row3; ?> Applicant(s) </strong>
        <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">

        <?php
        $no = 1;
        $sql= mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."' ");
        while($row = mysqli_fetch_array($sql))
        {
                  $row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));

        ?>
              <input type="hidden" name="stock-id" class="stock-id" value="<?php echo $row4['applicant_email'] ;?>">

        <tr style="cursor: pointer;">


          <td width="50px"> <?php echo $no++;?>.

          </td>
          <td>
          <div class="card-body box-profile">
            <div class="float-left">



              <?php

                   $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."'"  );
                   if(mysqli_num_rows($result))
                   {
                     while($project= mysqli_fetch_array($result))
                     {
                         ?>
                       <img class="profile-user-img img-fluid img-circle"
                            src="assets/img/<?php echo $project['emp_photo']; ?>"
                            alt="User profile picture">
                                 <?php


                     }
                   }
                   ?>


            </div>
            </td>



              <td data-toggle="tab" href="#stock-list-payments-tab" role="tab" onclick="viewJobApplicants2('<?php echo $row['applicant_email'];?>');"
                  aria-controls="contact" aria-selected="false">


            <strong>
            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."'"  );
                 if(mysqli_num_rows($result))
                 {
                   while($project= mysqli_fetch_array($result))
                   {
                       echo $project['fName'];

                   }
                 }
                 ?>
                 <?php

                      $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."'"  );
                      if(mysqli_num_rows($result))
                      {
                        while($project= mysqli_fetch_array($result))
                        {
                            echo $project['lName'];

                        }
                      }
                      ?>
                    </strong>
                      <br/>
            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."'"  );
                 if(mysqli_num_rows($result))
                 {
                   while($project= mysqli_fetch_array($result))
                   {
                       echo $project['currentPosition'];

                   }
                 }
                 ?>
                 at
                 <?php

                      $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."'"  );
                      if(mysqli_num_rows($result))
                      {
                        while($project= mysqli_fetch_array($result))
                        {
                            echo $project['companyName'];

                        }
                      }
                      ?>
                      </b> <br/>
                        Holds a    <?php

                               $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."'"  );
                               if(mysqli_num_rows($result))
                               {
                                 while($project= mysqli_fetch_array($result))
                                 {
                                     echo $project['highestQualification'];

                                 }
                               }
                               ?>
                               with
                               <?php

                                     $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."'"  );
                                     if(mysqli_num_rows($result))
                                     {
                                       while($project= mysqli_fetch_array($result))
                                       {
                                           echo $project['experience'];

                                       }
                                     }
                                     ?>

                                     Experience<br/>


          </td>

        </tr>
        <?php
        }
        ?>
        </table>


      </div>

    </div>
  </div>

  <div class="col-lg-7 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">

        <div class="tab-content">
          <div class="card card-primary card-outline col-md-12 mr-12 ml-8">
            <div class="card-body box-profile">
              <div class="float-left">
                <?php

                $profile_pic = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$_POST['applicant_email']."'"));
                ?>

                  <img class="profile-user-img img-fluid img-circle"
                       src="assets/img/<?php echo $profile_pic['emp_photo']; ?>"
                       alt="User profile picture">


              </div>





          <div class="row border-bottom mx-5">
          <div class="col-lg-2 col-xs-8 form-group">
          Surname: <input type="text" class="form-control" name="Name" value="<?php echo $profile_pic['fName'];?>" readonly="readonly">

          </div>
          <div class="col-lg-2 col-xs-8 form-group">
          Other Name: <input type="text" class="form-control" name="Name" value="<?php echo $profile_pic['fName'];?>" readonly="readonly">

          </div>
          <div class="col-lg-2 col-xs-8 form-group">
          Gender: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['gender'];?>" readonly="readonly">

          </div>
          <div class="col-lg-2 col-xs-8 form-group">
          Contact: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['contact'];?>" readonly="readonly">

          </div>
          <div class="col-lg-2 col-xs-8 form-group">
          Location: <input type="text" class="form-control" name="staff_users_id" value="<?php echo $profile_pic['location'];?>" readonly="readonly">

          </div>

          <div class="col-lg-2 col-xs-8 form-group">
          Date of Birth: <input type="text" class="form-control" name="end_ts" value="<?php echo $profile_pic['dob'];?>" readonly="readonly">

          </div>
          <div class="col-lg-2 col-xs-8 form-group">
          Nationality <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['nationality'];?>" readonly="readonly">

          </div>
          <div class="col-lg-3 col-xs-8 form-group">
          Email: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['Email'];?>" readonly="readonly">

          </div>


          </div>
          <hr style="border-top: 1px dashed #8c8b8b;">
          <b>About me</b>

          <?php
          //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


          $sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_POST['applicant_email']."'");
          $number = 1;
          if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
          {?>

          <br/>

          <?php echo $about_me['about_me'];?>

          <?php
          }
          else
          {
          ?>

          <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-about-me-modal">
          <i class="fa fa-plus-circle"></i> Add your Work Experience, internship, part-time work or long term specialised experience
          </button>

          <?php
          }
          ?>


          <!-- start add end product modal -->
          <div class="modal fade" id="add-about-me-modal" role="dialog">
          <div class="modal-dialog" role="document">
          <div class="modal-content">
          <div class="modal-header alert alert-success">

          <h5 class="modal-title">Adding About Me
          <span class="font-weight-bold"></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          <form id="add-about-me">

          <input type="hidden" name="add-about-me" value="add-about-me">
           <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

          <!-- start of row -->

             <div class="row">

                           <div class="col-lg-12 col-xs-12 form-group">
                               <label for="item_name"><span class="required">*</span>About Me</label>

                                 <textarea name="about_me" class="form-control" required></textarea>

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

          <hr style="border-top: 1px dashed #8c8b8b;">
          <b>Employement History</b>
          <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-employment-history-modal">
          <i class="fa fa-plus-circle"></i>
          </button>

          <?php
          //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
          $sql_query1 =  mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$_POST['applicant_email']."'");
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
          $sql= mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$_SESSION['email']."' ORDER BY start_date DESC ");
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

                    <h5 class="modal-title">Employment History for <strong> Reference No: <?php echo $employment['id'];?>
                       <span class="font-weight-bold"></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form id="add-employment-history-form">

                      <input type="hidden" name="add-employment-history" value="add-employment-history">
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

          <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-employment-history-modal">
          <i class="fa fa-plus-circle"></i> Add a short overview of your career history and skills
          </button>

          <?php
          }
          ?>


          <div class="modal fade" id="add-employment-history-modal" role="dialog">
          <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
          <div class="modal-content">

          <div class="modal-header alert alert-success">

          <h5 class="modal-title">Adding Carerer History
          <span class="font-weight-bold"></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          <form id="add-employment-history-form">

          <input type="hidden" name="add-employment-history" value="add-employment-history">
          <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

          <div class="row border-bottom mx-4">
          <div class="col-lg-3 col-xs-12 form-group">
          <label><span class="required">*</span>Employer Name</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="comp_name">
          </div>
          <div class="col-lg-3 col-xs-12 form-group">
          <label><span class="required">*</span>Industry</label>
          <?php
          $result = mysqli_query($dbc, "SELECT * FROM industry ORDER BY industry ASC");
          echo '
          <select name="industry" data-tags="true" class="select2 form-control" data-placeholder="Select Industry" required>
          <option></option>';
          while($row = mysqli_fetch_array($result)) {
              echo '<option value="'.$row['industry'].'">'.$row['industry']."</option>";
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

          <hr style="border-top: 1px dashed #8c8b8b;">
          <b>Education History</b>

          <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-education-history-modal">
          <i class="fa fa-plus-circle"></i>
          </button>

          <?php
          //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


          $sql_query1 =  mysqli_query($dbc,"SELECT * FROM education_history WHERE email ='".$_SESSION['email']."'");
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

          <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-education-history-modal">
          <i class="fa fa-plus-circle"></i> Add a short overview of your Education History</p>
          </button>

          <?php
          }
          ?>


          <!-- start add end product modal -->
          <div class="modal fade" id="add-education-history-modal" role="dialog">
          <div class="modal-dialog" role="document">
          <div class="modal-content">

          <div class="modal-header alert alert-success">

          <h5 class="modal-title">Adding Education History
          <span class="font-weight-bold"></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          <form id="add-education-history-form">

          <input type="hidden" name="add-education-history" value="add-education-history">
          <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

          <div class="row border-bottom mx-4">
          <div class="col-lg-4 col-xs-12 form-group">
          <label><span class="required">*</span>Institution</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="school_name">
          </div>
          <div class="col-lg-3 col-xs-12 form-group">
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
          <div class="col-lg-4 col-xs-12 form-group">
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

          <hr style="border-top: 1px dashed #8c8b8b;">
          <b>Job Skills</b>

          <form id="add-job-skills-form">

          <input type="hidden" name="add-job-skills-history" value="add-job-skills-history">
          <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>">
          <div class="row">
          <div class="col-md-4 col-xs-12 form-group">

          <select name="skill_name[]" data-tags="true"  class="select2 form-control" data-placeholder="Select Skills" >

                <?php

          $sql_query3 = mysqli_query($dbc,"SELECT * FROM job_skills ORDER BY skill_name ASC");

              while($row = mysqli_fetch_array($sql_query3))
              {
                ?>
                  <option value="<?php echo $row['skill_name'];?>"><?php echo $row['skill_name'];?></option>

                <?php
              }
             ?>
          </select>
          </div>
          <div class="col-md-8 col-xs-12 form-group">


                        <?php

                          $sql_query = mysqli_query($dbc,"SELECT * FROM selected_job_skills WHERE email ='".$_SESSION['email']."' ");

                          while($row = mysqli_fetch_array($sql_query))
                          {
                            $sql_staff_name = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE EmpNo='".$row['staff_id']."'"));
                            ?>
                            <?php echo $row['skill_name'];?>,

                            <?php
                          }

                         ?>

                    </div>
                    </div>




          <div class="row">
          <div class="col-md-12 text-center">
          <button type="submit" class="btn btn-success btn-block font-weight-bold submitting">SUBMIT Job Skills</button>
          </div>
          </div>

          </form>

          <hr style="border-top: 1px dashed #8c8b8b;">
          <b>Certificate and Awards</b>
          <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-awards-history-modal">
          <i class="fa fa-plus-circle"></i>
          </button>

          <?php
          //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


          $sql_query1 =  mysqli_query($dbc,"SELECT * FROM awards WHERE email ='".$_SESSION['email']."'");
          $number = 1;
          if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
          {?>

          <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
          <thead>
          <tr>
          <td>#</td>
          <td>Award Name</td>
          <td>Type</td>
          <td>Year Received</td>
          <td>Institution</td>
          <!--<td>Edit</td> -->

          </tr>
          </thead>
          <?php
          $no = 1;
          $sql2= mysqli_query($dbc,"SELECT * FROM awards ORDER BY year_received DESC ");
          while($awards = mysqli_fetch_array($sql2))
          {
          ?>
          <tr style="cursor: pointer;">
          <td width="40px"><?php echo $no++ ;?>.

          </td>

          <td><?php echo $awards['award_name'];?></td>
          <td><?php echo $awards['type'];?></td>

          <td><?php echo $awards['year_received'];?></td>
          <td><?php echo $awards['institution'];?></td>



          </td>

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
          data-toggle="modal" data-target="#add-awards-history-modal">
          <i class="fa fa-plus-circle"></i> Give overview of Certificates and Awards</p>
          </button>

          <?php
          }
          ?>


          <!-- start add end product modal -->
          <div class="modal fade" id="add-awards-history-modal" role="dialog">
          <div class="modal-dialog" role="document">
          <div class="modal-content">

          <div class="modal-header alert alert-success">

          <h5 class="modal-title">Adding Certificates And Awards
          <span class="font-weight-bold"></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          <form id="add-awards-history-form">

          <input type="hidden" name="add-awards-history" value="add-awards-history">
          <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

          <div class="row border-bottom mx-4">
          <div class="col-lg-5 col-xs-12 form-group">
          <label><span class="required">*</span>Institution</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="institution">
          </div>
          <div class="col-lg-5 col-xs-12 form-group">
          <label><span class="required">*</span>Award Name</label>
          <?php
          $result2 = mysqli_query($dbc, "SELECT * FROM award_type ORDER BY id ASC");
          echo '
          <select name="type" data-tags="true" class="select2 form-control" data-placeholder="Select Award Type" required>
          <option></option>';
          while($row = mysqli_fetch_array($result2)) {
              echo '<option value="'.$row['type'].'">'.$row['type']."</option>";
          }
          echo '</select>';
          ?>
          </div>
          <div class="col-lg-5 col-xs-12 form-group">
          <label><span class="required">*</span>Award Name</label>
            <input type="text" autocomplete="off" class="select2 form-control" name="award_name">
          </div>
          <div class="col-lg-5 col-xs-12 form-group">
          <label> <span class="required">*</span> Year Received</label>
          <div class="input-group mb-2 mr-sm-2">
          <div class="input-group-prepend">
            <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
          </div>
          <input type="text" class="form-control project_start_date" autocomplete="off" name="year_received" required>
          </div>
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

          </div>
          </div>





        </div>

      </div>

    </div>
  </div>
</div>


<?php
}
else
{
      ?>
    <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No Applicant For the Posted Job</strong>
</div>

  <?php
}
?>
