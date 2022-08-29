<?php

session_start();
include("../../controllers/setup/connect.php");

if($_SERVER['REQUEST_METHOD'] == 'POST')
{

 if (!isset($_SESSION['email']))
 {
    exit("unauthenticated");
 }
  $row_start_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_start_date']));
  $row_end_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_end_date']));

    $sql = mysqli_query($dbc,
                            "SELECT * FROM request_application  ORDER BY id "
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
                <td>Requester Name</td>
                <td>Requested Name</td>
                <td>Position</td>
                <td>Special Information</td>


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
                <td> <b><?php echo $row['recorded_by'] ;?> </td>
                    <td>
                      <?php

                           $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE id ='".$row['reference_no']."'ORDER BY id "  );
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

                        <td> <b><?php echo $row['post_name'] ;?> </td>
                            <td> <b><?php echo $row['special_info'] ;?> </td>
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
       <strong>No Records!<br/></strong> Sorry, no records found for the selected combination.
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
