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
?>

<nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item active" aria-current="page">
        Quiz test For scheduled training
   </li>

      </ol>
  </nav>



<div class="row">
  <div class="col-lg-5 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        <?php
        //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM  cal_events ");
        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>


        <?php

        $row3 = mysqli_num_rows(mysqli_query($dbc,"SELECT * FROM cal_events"));



        ?>
      <strong>     <?php echo $row3; ?> Title(s)</strong>


      <table class="table table-striped table-bordered table-hover" id="invoice-received-table"  style="width:100%">

        <thead>
          <tr>
            <td>#</td>
            <td>Course Name</td>
            <td>Date recorded</td>

            <td>Quiz Information</td>

         <!--   <td>Status</td> -->
          </tr>
        </thead>
        <?php
        $no = 1;
        $sql= mysqli_query($dbc,"SELECT * FROM cal_events ");
        while($row = mysqli_fetch_array($sql))
        {


        ?>


        <tr style="cursor: pointer;">


          <td width="50px"> <?php echo $no++;?>.

          </td>

            <td onclick="viewTestDetails2('<?php echo $row['eid'];?>');" title="Click here to view quiz Details for<?php echo $row['subject'];?> Job">
                  <span class="text-primary" style="cursor:pointer;"><?php echo $row['subject'];?></span>
            </td>


          <td onclick="SelectProjectModule3('<?php echo $row['eid'];?>')">
          <?php echo $row['ctime'];?></td>

          <td onclick="SelectProjectModule3('<?php echo $row['eid'];?>')">
              <span class="text-primary" style="cursor:pointer;">  View Quiz Details</span>
        </td>

        </tr>
        <?php
        }
        ?>
        </table>




      </div>

    </div>
  </div>

  <div class="col-lg-7 col-xs-12">
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
<strong><i class="fa fa-info-circle"></i> No Job title has been added</strong>
</div>

  <?php
}
?>
