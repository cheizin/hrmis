<?php
  session_start();
  include("../../controllers/setup/connect.php");

  if(!$_SERVER['REQUEST_METHOD'] == "POST")
  {
    exit();
  }
  $row1 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE applicant_email ='".$_SESSION['email']."'"));

  $row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$row1['job_posting_id']."'"));


  $row3 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM assigned_test WHERE posted_job ='".$row4['job_title']."'"));

    $row9 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE job_title ='".$row3['posted_job']."'"));


    $row8 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$row9['email']."'"));




  $row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM answered_test WHERE reference_no ='".$row3['id']."'"));

  $row5 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM answered_response_test WHERE id ='".$row2['reference_no']."'"));

  //Job posted



  $row7 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_test WHERE reference_no ='".$row3['reference_no']."'"));

  $testLoop = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM application_status_details WHERE email ='".$_SESSION['email']."'"));

  $row6 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_test WHERE reference_no ='".$row4['reference_no']."' DESC LIMIT 1"));

 ?>

 <table class="table table-bordered table-striped table-hover" id="dashboard-active-stocks-table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Company </th>
      <th scope="col">Questions</th>
      <th scope="col">Applicant Response</th>
      <th scope="col">Reviewer Response</th>
      <th scope="col">Score</th>
    </tr>
  </thead>
  <tbody>
    <?php
    $no = 1;
     $sql = mysqli_query($dbc,"SELECT * FROM answered_response_test WHERE id ='".$row2['reference_no']."' ORDER BY id");
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

                                  $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row9['email']."' ORDER BY id "  );
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

                                     $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row9['email']."' ORDER BY id "  );
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


              <div class="card-body box-profile">
                <div class="float-left">

                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM job_test WHERE reference_no ='".$row3['reference_no']."'"  );
                       if(mysqli_num_rows($result))
                       {
                         while($project= mysqli_fetch_array($result))
                         {
                             ?>

                                                     <div class="row border-bottom mx-4">
                                                       <div class="col-lg-12 col-xs-12 form-group">
                                                           <label for="item_name"><?php echo $project['test_name']; ?></label>


                                                       </div>

                                                     </div>
                                     <?php

                         }
                       }
                       ?>

                </div>


                                     </small>
            </td>

                <td><small>

                  <b>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM answered_test WHERE reference_no ='".$row3['id']."' ORDER BY id "  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['answer_name']; ?>

                        <?php

                         }
                       }
                       ?>
     </b>
                             </small>
               </td>


                 <td><small>
<b> <?php echo $row['response_name'] ;?> </b>

   </small>
     </td>
     <td><small>
<b> <?php echo $row['marks'] ;?> </b>

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
