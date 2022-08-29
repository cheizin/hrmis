<?php

session_start();
include("../../controllers/setup/connect.php");

if($_SERVER['REQUEST_METHOD'] == 'POST')
{

 if (!isset($_SESSION['email']))
 {
    exit("unauthenticated");
 }
  $status_name = mysqli_real_escape_string($dbc,strip_tags($_POST['status_name']));
//  $product_end_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_end_date']));

$job_applied = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM application_status_details WHERE status_name ='".$status_name."' "));

$users = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$job_applied['email']."' "));

//$job_applied2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE id ='".$job_applied['reference_no']."' "));


    $sql = mysqli_query($dbc,
                            "SELECT * FROM applied_jobs WHERE id ='".$job_applied['reference_no']."'  ORDER BY id "
                            );

//echo $job_applied['reference_no'];

  if($sql)
  {
    $total_rows = mysqli_num_rows($sql);
    if($total_rows > 0)
    {

    ?>
    <div class="card">

     <!-- /.card-header -->
     <div class="card-body">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover" id="job-post-table" style="width:100%">

              <thead>
                <tr>
                  <td>#</td>
                  <td>First Name</td>
                    <td>Last Name</td>
                  <td>Dob</td>
                  <td>Email</td>

                  <td>Contact</td>
                  <td>Nationality</td>
                <td>Highest Qualification</td>
                  <td>Current Position</td>
                  <td>Company Name</td>
                  <td>Job Details</td>
                  <td>Job Status</td>
                  <td>Closing Date</td>

               <!--   <td>Status</td> -->
                </tr>
              </thead>
            <?php
            $number = 1;
            while($row = mysqli_fetch_array($sql))
            {
              ?>
              <tr style="cursor: pointer;">
                <td width="50px"> <?php echo $number++;?>.

                </td>

                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['fName']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>
                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
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


                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['dob']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>

                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['Email']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>

                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['contact']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>
                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['nationality']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>

                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['highestQualification']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>
                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['currentPosition']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>
                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['applicant_email']."' ORDER BY id DESC LIMIT 1"  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['companyName']; ?>

                        <?php

                         }
                       }
                       ?>
                </td>


                <td>

                  <strong>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM job_posting WHERE id ='".$row['job_posting_id']."' ORDER BY id "  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['job_title']; ?>

                        <?php

                         }
                       }
                       ?>
                     </strong></b> <br/>


                </td>

                    <td onclick="viewResults('<?php echo $row['job_posting_id'];?>');" title="Click here to view Results for the <?php echo $profile_pic['status_name'];?>">


                     <?php


               $row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE id ='".$row['id']."'"));

                 $row6 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM application_status_details WHERE reference_no ='".$row4['id']."' ORDER BY id DESC LIMIT 1"));

               //  $row5 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$row4['job_posting_id']."'"));

               //  $row6 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM assigned_test WHERE posted_job='".$row5['job_title']."'"));

                 // echo $row6['status_name'];


                   $sql_query1 =  mysqli_query($dbc,"SELECT * FROM application_status_details WHERE reference_no ='".$row4['id']."' ORDER BY id DESC LIMIT 1");
                   $number = 1;
                   if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
                   {?>
                     <?php

                          $result = mysqli_query($dbc, "SELECT * FROM application_status_details WHERE reference_no ='".$row4['id']."'ORDER BY id DESC LIMIT 1"  );
                          if(mysqli_num_rows($result))
                          {
                            while($profile_pic = mysqli_fetch_array($result))
                            {
                              ?>





                                    <span class="text-primary" style="cursor:pointer;"><?php echo $profile_pic['status_name'];?></span>


                           <?php

                            }
                          }
                          ?>

                                   <?php
                                   }
                                   else
                                   {

                                     echo $row['job_status'];

                                   }
                                   ?>



                   </td>


                     <td>
                                         <?php
                                                           $result = mysqli_query($dbc, "SELECT * FROM job_posting WHERE id ='".$row['job_posting_id']."' ORDER BY id "  );
                                                           if(mysqli_num_rows($result))
                                                           {
                                                             while($profile_pic = mysqli_fetch_array($result))
                                                             {
                                                               ?>
                                                               <?php echo $profile_pic['deadline']; ?>

                                                            <?php

                                                             }
                                                           }
                                                           ?>



                                                         </td>




                </tr>
              <?php
            }
             ?>

          </table>
        </div>
     </div>
     <!-- /.card-body -->
     <div class="card-footer">

     </div>
     <!-- card-footer -->
   </div>
   <!-- /.card -->
     <?php
   } // end num row
   else  //no rows
   {
     ?>
     <div class="alert alert-danger alert-dismissible">
       <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
       <strong>No Records!<br/></strong> Sorry, no records found.
     </div>
     <?php
   }
  }
  else
  {
    exit(mysqli_error($dbc));
  }

}
else
{
  exit("NO data");
  ?>

 <?php
}
