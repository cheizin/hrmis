<?php
  session_start();
  include("../../controllers/setup/connect.php");

  if(!$_SERVER['REQUEST_METHOD'] == "POST")
  {
    exit();
  }
  $job_applied = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE applicant_email ='".$_SESSION['email']."' "));
     $sql_query1 =  mysqli_query($dbc,"SELECT * FROM job_posting  WHERE id ='".$job_applied['job_posting_id']."' ORDER BY id");
 ?>


 <table class="table table-bordered table-striped table-hover" id="dashboard-active-stocks-table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Company </th>
      <th scope="col">Job Details</th>
      <th scope="col">job Status</th>
      <th scope="col">Closing Date</th>
    </tr>
  </thead>
  <tbody>
    <?php
    $no = 1;
     $sql = mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE applicant_email ='".$_SESSION['email']."' ORDER BY id");
     while($row = mysqli_fetch_array($sql)){
     ?>
          <tr style="cursor: pointer;">
            <th scope="row"><?php echo $no++;?></th>

            <td><small>
            <div class="card-body box-profile">
              <div class="float-left">


                <b>
                             <strong>
                             <?php
             $row6= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id  ='".$row['job_posting_id']."' "));
                     $row7 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id  ='".$row6['job_posting_id']."' "));
                                  $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row7['email']."' ORDER BY id "  );
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
                                </strong></b><br/>

                                <?php
                $row6= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id  ='".$row['job_posting_id']."' "));
                        $row7 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id  ='".$row6['job_posting_id']."' "));
                                     $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row7['email']."' ORDER BY id "  );
                                     if(mysqli_num_rows($result))
                                     {
                                       while($profile_pic = mysqli_fetch_array($result))
                                       {
                                         ?>
                                         <img class="profile-user-img img-fluid img-circle"
                                              src="assets/img/<?php echo $profile_pic['emp_photo']; ?>"
                                              alt="User profile picture">


                                      <?php

                                       }
                                     }
                                     ?>

              </div>
            </small>
              </td>

            <td><small>

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

                   <?php

                        $result = mysqli_query($dbc, "SELECT * FROM job_posting WHERE id ='".$row['job_posting_id']."' ORDER BY id "  );
                        if(mysqli_num_rows($result))
                        {
                          while($profile_pic = mysqli_fetch_array($result))
                          {
                            ?>
                            <?php echo $profile_pic['job_location']; ?>,

                         <?php

                          }
                        }
                        ?>
                        <?php

                             $result = mysqli_query($dbc, "SELECT * FROM job_posting WHERE id ='".$row['job_posting_id']."' ORDER BY id "  );
                             if(mysqli_num_rows($result))
                             {
                               while($profile_pic = mysqli_fetch_array($result))
                               {
                                 ?>
                                 <?php echo $profile_pic['country']; ?> <br/>

                              <?php

                               }
                             }
                             ?>
                             <?php

                                  $result = mysqli_query($dbc, "SELECT * FROM job_posting WHERE id ='".$row['job_posting_id']."' ORDER BY id "  );
                                  if(mysqli_num_rows($result))
                                  {
                                    while($profile_pic = mysqli_fetch_array($result))
                                    {
                                      ?>
                                      <?php echo $profile_pic['emp_type']; ?> ,<br/>

                                   <?php

                                    }
                                  }
                                  ?>

                                  <?php

                                       $result = mysqli_query($dbc, "SELECT * FROM job_posting WHERE id ='".$row['job_posting_id']."' ORDER BY id "  );
                                       if(mysqli_num_rows($result))
                                       {
                                         while($profile_pic = mysqli_fetch_array($result))
                                         {
                                           ?>
                                           <?php echo $profile_pic['exp_level']; ?>

                                        <?php

                                         }
                                       }
                                       ?>

                                     </small>
            </td>

                <td><small>


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


                             </small>
               </td>


                 <td><small>
                                     <?php
                                                       $result = mysqli_query($dbc, "SELECT * FROM job_posting WHERE id ='".$row['job_posting_id']."' ORDER BY id "  );
                                                       if(mysqli_num_rows($result))
                                                       {
                                                         while($profile_pic = mysqli_fetch_array($result))
                                                         {
                                                           ?>
                                                           <?php echo $profile_pic['deadline']; ?>, <br/> <br/> <br/>

                                                        <?php

                                                         }
                                                       }
                                                       ?>

                                                           </small>
                                                     </td>

          </tr>
          <?php
        }
     ?>
  </tbody>
</table>
<script>
$("[data-toggle=popover]").popover();
</script>
