<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/
?>

<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
       <li class="breadcrumb-item active" aria-current="page">Application Status For Applied Jobs</li>
     </ol>
</nav>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">

      <div class="card-body table-responsive">


        <?php

     $job_applied = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE applicant_email ='".$_SESSION['email']."' "));
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM job_posting  WHERE id ='".$job_applied['job_posting_id']."' ORDER BY id");

        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

       <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
         <thead>
           <tr>
             <td>#</td>
             <td>Company</td>
             <td>Job Details</td>
             <td>Job Status</td>
             <td>Closing Date</td>

          <!--   <td>Status</td> -->
           </tr>
         </thead>
         <?php
         $no = 1;
          $sql = mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE applicant_email ='".$_SESSION['email']."' ORDER BY id DESC");
          while($row = mysqli_fetch_array($sql)){
          ?>
         <tr style="cursor: pointer;">


           <td width="50px"> <?php echo $no++;?>.

           </td>
           <td>
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


                <td onclick="viewApplication('<?php echo $row['job_posting_id'];?>');" title="Click here to view application Details">
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


                                                            <span class="text-primary" style="cursor:pointer;">View More Details</span>

                                                    </td>

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

<?php
}
else
{
      ?>
    <br/>
<div class="alert alert-info">
<strong><i class="fa fa-info-circle"></i> No Job applied</strong>
</div>

  <?php
}
?>
