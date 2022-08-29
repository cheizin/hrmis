<?php
  session_start();
  include("../../controllers/setup/connect.php");

  if(!$_SERVER['REQUEST_METHOD'] == "POST")
  {
    exit();
  }
  //$job_applied = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE email ='".$_SESSION['email']."' "));
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM job_posting WHERE email ='".$_SESSION['email']."' ORDER BY id");
 ?>


 <table class="table table-bordered table-striped table-hover" id="dashboard-active-stocks-table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Company </th>
      <th scope="col">Job Details</th>
      <th scope="col">Industry</th>
      <th scope="col">Closing Date</th>
    </tr>
  </thead>
  <tbody>
    <?php
    $no = 1;
     $sql = mysqli_query($dbc,"SELECT * FROM job_posting WHERE email ='".$_SESSION['email']."' ORDER BY id");
     while($row = mysqli_fetch_array($sql)){
     ?>
          <tr style="cursor: pointer;">
            <th scope="row"><?php echo $no++;?></th>

            <td><small>
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
            </small>
              </td>

            <td><small>

            <b><?php echo $row['job_title'] ;?></b> <br/>
                <?php echo $row['job_location'] ;?>,  <?php echo $row['country'] ;?> <br/>
                  <?php echo $row['emp_type'] ;?>,<br/>
                    <?php echo $row['exp_level'] ;?>


                                     </small>
            </td>

                <td><small>
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
                             </small>
               </td>


                 <td><small>
<?php echo $row['deadline'] ;?>
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
