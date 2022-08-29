<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");

if(!isset($_POST['id']))
{
  exit("Please select The application");
}


$project_module = $_POST['id'];

$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_titles WHERE id ='".$_POST['id']."'"));
//$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM applied_jobs WHERE job_posting_id ='".$_POST['id']."'"));
?>
<nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item active" aria-current="page">
         <b> Test Details for </b>  <?php echo $row['title_name'];?>
   </li>

      </ol>
  </nav>


<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        <?php
        //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM  job_test WHERE reference_no ='".$_POST['id']."' ");
        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>


        <?php

        $row3 = mysqli_num_rows(mysqli_query($dbc,"SELECT * FROM job_test WHERE reference_no ='".$_POST['id']."'"));

        ?>
      <strong>     <?php echo $row3; ?> Test(s)</strong>


      <table class="table table-striped table-bordered table-hover" id="invoice-received-table"  style="width:100%">

        <thead>
          <tr>
            <td>#</td>
            <td>Test Name</td>


         <!--   <td>Status</td> -->
          </tr>
        </thead>
        <?php
        $no = 1;
        $sql= mysqli_query($dbc,"SELECT * FROM job_test WHERE reference_no ='".$_POST['id']."'");
        while($row = mysqli_fetch_array($sql))
        {


        ?>


        <tr style="cursor: pointer;">


          <td width="50px"> <?php echo $no++;?>.

          </td>

          <td>
            <?php echo $row['test_name'];?></td>



        </tr>
        <?php
        }
        ?>
        </table>


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
<strong><i class="fa fa-info-circle"></i> No Test has been added</strong>
</div>

  <?php
}
?>
