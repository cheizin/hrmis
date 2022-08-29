<?php
  session_start();
  include("../../controllers/setup/connect.php");

  if(!$_SERVER['REQUEST_METHOD'] == "POST")
  {
    exit();
  }
  $row1 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email='".$_SESSION['email']."'"));

//  $row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$row1['job_posting_id']."'"));
  $total_invoices_received = mysqli_num_rows(mysqli_query($dbc,"SELECT * FROM request_application WHERE reference_no ='".$row1['id']."' "));
 ?>

 <table class="table table-bordered table-striped table-hover" id="dashboard-active-stocks-table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Company </th>
      <th scope="col">Position Name</th>
      <th scope="col">Special Info</th>
      <th scope="col">Date Sent</th>
    </tr>
  </thead>
  <tbody>
    <?php
    $no = 1;
     $sql = mysqli_query($dbc,"SELECT * FROM request_application WHERE reference_no ='".$row1['id']."' ORDER BY id");
     while($row = mysqli_fetch_array($sql)){
     ?>
          <tr style="cursor: pointer;">
            <th scope="row"><?php echo $no++;?></th>

            <td><small>
            <div class="card-body box-profile">
              <div class="float-left">


                <b>
                             <strong>
     <?php echo $row['recorded_by']; ?>
                                </strong></b><br/>

                                <?php

                                     $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row['recorded_by']."' ORDER BY id "  );
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
           <?php echo $row['post_name']; ?>

                 </strong></b>


                                     </small>
            </td>
            <td><small>

              <strong>
           <?php echo $row['special_info']; ?>

                 </strong></b>


                                     </small>
            </td>

            <td><small>

              <strong>
           <?php echo $row['time_recorded']; ?>

                 </strong></b>


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
