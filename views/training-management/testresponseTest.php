<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");


$project_module = $_POST['id'];


$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$_POST['id']."'"));

$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));


$row3 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level = 'trainee'  || access_level = 'trainer' "));


?>
<nav aria-label="breadcrumb">
Responses For Quizes Undertaken

</nav>

        <?php
        //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");

        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM answered_test2");
        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

<div class="row">
  <div class="col-lg-4 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">


        <div class="row border-bottom mx-4">

        </div>
        <?php

        $row3 = mysqli_num_rows(mysqli_query($dbc,"SELECT * FROM answered_test2"));



        ?>
      <strong>     <?php echo $row3; ?> Response(s)</strong>
      <table class="table table-striped table-bordered table-hover" id="invoice-received-table"  style="width:100%">

        <thead>
          <tr>
            <td>#</td>

            <td>Trainee Details</td>

         <!--   <td>Status</td> -->
          </tr>
        </thead>
        <?php
        $no = 1;
        $sql= mysqli_query($dbc,"SELECT * FROM answered_test2 ");
        while($row = mysqli_fetch_array($sql))
        {
                  $row4 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));

        ?>


        <tr style="cursor: pointer;">


          <td width="50px"> <?php echo $no++;?>.

          </td>




              <td  onclick="SelectResponse2('<?php echo $row['id'];?>')">

            <strong>
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
                 <?php

                      $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."'"  );
                      if(mysqli_num_rows($result))
                      {
                        while($project= mysqli_fetch_array($result))
                        {
                            echo $project['lName'];

                        }
                      }
                      ?>
                    </strong>
                      <br/>
            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."'"  );
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

                      $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."'"  );
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

                               $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."'"  );
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

                                     $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE Email ='".$row['email']."'"  );
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

  <div class="col-lg-8 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">

        <div class="card project-module-data d-none">

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
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No Response</strong>
</div>

  <?php
}
?>
