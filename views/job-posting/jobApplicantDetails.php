<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
if(!isset($_POST['id']))
{
  exit("Please select The Job Applied ");
}

$project_module = $_POST['id'];


$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$_POST['id']."'"));

$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));
?>
<nav aria-label="breadcrumb">

  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">
      Job Title: <strong>  <?php echo $row['job_title'];?> <br/> </strong>JOB Code: <strong> <?php echo $row['id'];?> </strong>  <br/>

      Status:  <strong>
  <?php echo $row['status'];?>
                          </strong>
                            <br/>
 Deadline: <strong> <?php echo $row['deadline'];?>  </strong><br/>
</li>

</ol>
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
      <strong>     <?php echo $row3; ?> Applicant(s)</strong>
      <table class="table table-striped table-bordered table-hover" id="invoice-received-table"  style="width:100%">

        <thead>
          <tr>
            <td>#</td>
            <td>Company Logo</td>
            <td>Applicant Details</td>

         <!--   <td>Status</td> -->
          </tr>
        </thead>
        <?php
        $no = 1;
        $sql= mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."' ");
        while($row = mysqli_fetch_array($sql))
        {
                  $row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));

        ?>


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



              <td  onclick="SelectProjectModule('<?php echo $row['id'];?>')">

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

        <div class="card project-module-data d-none">

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
