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
                            "SELECT * FROM staff_users where email ='".$_SESSION['email']."'ORDER BY id "
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
                  <td>First Name</td>
                    <td>Last Name</td>
                  <td>Dob</td>
                  <td>Email</td>
                  <td>Location</td>
                  <td>Contact</td>
                    <td>Nationality</td>
                    <td>Highest Qualification</td>
                      <td>Current Position</td>
                        <td>Company Name</td>


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


                <td> <?php echo $row['fName'] ;?>   </td>
                  <td>  <?php echo $row['lName'] ;?></td>
                  <td>  <?php echo $row['dob'] ;?></td>
                  <td>  <?php echo $row['Email'] ;?> </td>
                  <td>  <?php echo $row['location'] ;?></td>
                  <td>  <?php echo $row['contact'] ;?></td>
                  <td>  <?php echo $row['nationality'] ;?></td>
                  <td>  <?php echo $row['highestQualification'] ;?></td>
                    <td>  <?php echo $row['currentPosition'] ;?></td>
                      <td>  <?php echo $row['companyName'] ;?></td>




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
