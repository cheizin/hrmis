<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/
?>
<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
       <li class="breadcrumb-item active" aria-current="page">Job posting</li>
     </ol>
</nav>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        Job Post
        <button class="btn btn-link" style="float:right;"
                data-toggle="modal" data-target="#post-job-modal">
                <i class="fa fa-plus-circle"></i> Add New JOb Post
        </button>
      </div>
      <div class="card-body table-responsive">




        <?php
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM job_posting WHERE email ='".$_SESSION['email']."' ORDER BY id");

        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

       <table class="table table-striped table-bordered table-hover" id="invoice-received-table"  style="width:100%">

         <thead>
           <tr>
             <td>#</td>
             <td>Company Logo</td>
             <td>Job Details</td>
             <td>Industry</td>
             <td>Closing Date</td>
             <td>Action</td>

          <!--   <td>Status</td> -->
           </tr>
         </thead>
         <?php
         $no = 1;
          $sql = mysqli_query($dbc,"SELECT * FROM job_posting WHERE email ='".$_SESSION['email']."' ORDER BY id DESC");
          while($row = mysqli_fetch_array($sql)){
          ?>
         <tr style="cursor: pointer;">
           <td width="50px"> <?php echo $no++;?>.

           </td>
           <td>
           <div class="card-body box-profile">
             <div class="float-left">


               <b>
                              <?php

                                   $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."'"  );
                                   if(mysqli_num_rows($result))
                                   {
                                     while($project= mysqli_fetch_array($result))
                                     {
                                       echo $project['fName'];


                                     }
                                   }
                                   ?>
                                 </b><br/>
               <?php

                    $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."'"  );
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

               <?php

               $profile_pic = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$_SESSION['email']."'"));
               ?>



             </div>
             </td>

           <td> <b><?php echo $row['job_title'] ;?></b> <br/>
             <?php echo $row['job_location'] ;?>,  <?php echo $row['country'] ;?> <br/>
               <?php echo $row['emp_type'] ;?>,<br/>
                 <?php echo $row['exp_level'] ;?>

           </td>
            <td>
              <?php

                   $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."' ORDER BY id DESC LIMIT 1"  );
                   if(mysqli_num_rows($result))
                   {
                     while($profile_pic = mysqli_fetch_array($result))
                     {
                       ?>
                       <?php echo $profile_pic['lName']; ?>

                    <?php

                     }
                   }
                   ?>
            </td>
                  <td><?php echo $row['deadline'] ;?></td>


             <td onclick="viewJobApplicants('<?php echo $row['id'];?>');" title="Click here to view applicants for <?php echo $row['job_title'];?> Job">
                   <span class="text-primary" style="cursor:pointer;">View Applicants</span>
             </td>
           </td>

         </tr>
         <?php
            }
          ?>

       </table>
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
<strong><i class="fa fa-info-circle"></i> No Job Posted</strong>
</div>

  <?php
}
?>


<!-- add stock modal -->

<div class="modal fade" id="post-job-modal">
<div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
  <div class="modal-content">
  <div class="modal-header alert alert-success">

      <h5 class="modal-title">Posting A new Job Vaccancy </h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <form id="add-job-vaccancy-form" class="mt-4" enctype="multipart/form-data">
        <input type="hidden" value="post-job" name="post-job">
         <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

        <div class="row border-bottom mx-3">

            <div class="col-lg-4 col-xs-12 form-group">
                <label for="item_name"><span class="required">*</span>Job Title</label>

                  <input type="text" autocomplete="off" class="select2 form-control" name="job_title">

            </div>

            <div class="col-lg-4 col-xs-12 form-group">
                <label><span class="required">*</span>Company Type</label>
                <?php
                $result = mysqli_query($dbc, "SELECT * FROM company_type ORDER BY com_type ASC");
                echo '
                <select name="com_type" data-tags="true" class="select2 form-control" data-placeholder="Select Company Type" required>
                <option></option>';
                while($row = mysqli_fetch_array($result)) {
                    echo '<option value="'.$row['com_type'].'">'.$row['com_type']."</option>";
                }
                echo '</select>';
                ?>
            </div>
            <div class="col-lg-4 col-xs-12 form-group">
                <label for="item_name"><span class="required">*</span>Experience Length</label>

                  <input type="text" autocomplete="off" class="select2 form-control" name="expLength">

            </div>


              </div>

              <div class="row border-bottom mx-3">
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
                              <label><span class="required">*</span>Minimum Qualification</label>
                                <?php
                                $result = mysqli_query($dbc, "SELECT * FROM qualification ORDER BY rank_name ASC");
                                echo '
                                <select name="rank_name" data-tags="true" class="select2 form-control" data-placeholder="Select Min Qualification" required>
                                <option></option>';
                                while($row = mysqli_fetch_array($result)) {
                                    echo '<option value="'.$row['rank_name'].'">'.$row['rank_name']."</option>";
                                }
                                echo '</select>';
                                ?>
                            </div>
                            <div class="col-lg-4 col-xs-12 form-group">
                                <label><span class="required">*</span>Experience Level</label>
                                <?php
                                $result = mysqli_query($dbc, "SELECT * FROM experience_level ORDER BY exp_level ASC");
                                echo '
                                <select name="exp_level" data-tags="true" class="select2 form-control" data-placeholder="Select Experience Level" required>
                                <option></option>';
                                while($row = mysqli_fetch_array($result)) {
                                    echo '<option value="'.$row['exp_level'].'">'.$row['exp_level']."</option>";
                                }
                                echo '</select>';
                                ?>
                            </div>
                              </div>

                              <div class="row border-bottom mx-3">


                              <div class="col-lg-4 col-xs-12 form-group">
                                  <label for="item_description"><span class="required">*</span>Job Location</label>

                                    <input type="text" autocomplete="off" class="select2 form-control" name="job_location">
                              </div>
                              <div class="col-lg-4 col-xs-12 form-group">
                                  <label for="item_description"><span class="required">*</span>Country</label>

                                    <input type="text" autocomplete="off" class="select2 form-control" name="country">
                              </div>



                              <div class="col-lg-4 col-xs-12 form-group">
                                <label> <span class="required">*</span> Deadline</label>
                                <div class="input-group mb-2 mr-sm-2">
                                  <div class="input-group-prepend">
                                    <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                                  </div>
                                  <input type="text" class="form-control project_start_date" autocomplete="off" name="deadline" required>
                                </div>
                              </div>
                              </div>




                <div class="row border-bottom mx-3">
                  <div class="col-lg-6 col-xs-12 form-group">
                      <label for="item_name"><span class="required">*</span>job Description</label>

                        <textarea name="job_description" class="form-control" required></textarea>

                  </div>

            <div class="col-lg-6 col-xs-12 form-group">
                <label for="item_name"><span class="required">*</span>Responsibilities and Duties</label>

                  <textarea name="responsibility" class="form-control" required></textarea>

            </div>
            </div>



        <!-- start row project timelines -->

              <div class="row border-bottom mx-2">


                  <div class="pull-left mt-4">
                    <small class="text-muted">Recorded by:- <?php echo $_SESSION['fName'];?></small>
                  </div>
                    </div>


        <!-- end row project timelines -->


              <!-- start row button -->
        <div class="row">
          <div class="col-md-12 text-center">
              <button type="submit" class="btn btn-primary btn-block font-weight-bold submitting">SUBMIT</button>
          </div>
        </div>

              <!-- end row button -->
      </form>
    </div>

    <div class="modal-footer">
      <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    </div>
  </div>
  </div>
        </div>
<!-- end of add project modal -->
