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

$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$_POST['id']."'"));

$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['job_posting_id']."'"));
?>
<nav aria-label="breadcrumb">
     Job Title <strong>  <?php echo $row['job_title'];?> <br/> </strong>JOB Code: <strong> <?php echo $row['id'];?> </strong>  <br/>

     Status:  <strong>
 <?php echo $row['status'];?>
                         </strong>
                           <br/>
Deadline: <strong> <?php echo $row['deadline'];?>  </strong><br/>

</nav>

<div class="row">

  <div class="col-lg-5 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        <div class="card-body table-responsive">




          <?php
          $sql_query1 =  mysqli_query($dbc,"SELECT * FROM applied_jobs ORDER BY id");

          $number = 1;
          if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
          {?>

         <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
           <thead>
             <tr>
               <td>#</td>
               <td>Company Logo</td>
               <td>Job Details</td>


            <!--   <td>Status</td> -->
             </tr>
           </thead>
           <?php
           $no = 1;
            $sql = mysqli_query($dbc,"SELECT * FROM applied_jobs ORDER BY id DESC");
            while($row = mysqli_fetch_array($sql)){
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

                 <?php

                 $profile_pic = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$_SESSION['email']."'"));
                 ?>

               </div>
               </td>


             <td>
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

    </div>
  </div>
  <div class="col-lg-7 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">


      </div>

    </div>
  </div>


</div>
