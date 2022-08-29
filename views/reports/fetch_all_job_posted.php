<?php

session_start();
include("../../controllers/setup/connect.php");

if($_SERVER['REQUEST_METHOD'] == 'POST')
{

 if (!isset($_SESSION['email']))
 {
    exit("unauthenticated");
 }
  $product_start_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_start_date']));
  $product_end_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_end_date']));

    $sql = mysqli_query($dbc,
                            "SELECT * FROM job_posting WHERE email ='".$_SESSION['email']."' BETWEEN '".$product_start_date."' AND '".$product_end_date."'   ORDER BY id "
                            );

/*  }*/



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
                  <td>Company</td>
                  <td>Job Title</td>
                  <td>Experience Years</td>
                  <td>Employment Type</td>
                  <td>Education Level</td>
                    <td>Job Location</td>
                    <td>Job Location</td>
                      <td>Job Description</td>
                        <td>Responsibility</td>


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

                    $profile_pic = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$_SESSION['email']."'"));
                    ?>




                  </div>
                  </td>

                <td> <?php echo $row['job_title'] ;?>   </td>
                  <td>  <?php echo $row['expLength'] ;?></td>
                  <td>  <?php echo $row['emp_type'] ;?> </td>
                  <td>  <?php echo $row['rank_name'] ;?></td>
                    <td>  <?php echo $row['job_location'] ;?></td>
                      <td>  <?php echo $row['deadline'] ;?></td>
                        <td>  <?php echo $row['job_description'] ;?></td>
                        <td>  <?php echo $row['responsibility'] ;?></td>


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
