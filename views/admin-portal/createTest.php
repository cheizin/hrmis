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
          Aptitude test For selective Job Post
   </li>

      </ol>
  </nav>
        <button class="btn btn-link" style="float:right;"
                data-toggle="modal" data-target="#add-job-modal">
                <i class="fa fa-plus-circle"></i>
        </button>

        <!-- start add end product modal -->
        <div class="modal fade" id="add-job-modal" role="dialog">
        <div class="modal-dialog" role="document">
        <div class="modal-content">
        <div class="modal-header alert alert-success">

        <h5 class="modal-title">Adding Job Title
        <span class="font-weight-bold"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
        </button>
        </div>
        <div class="modal-body">
        <form id="add-job-title-form">

        <input type="hidden" name="add-job-title" value="add-job-title">


        <!-- start of row -->

           <div class="row">

                         <div class="col-lg-12 col-xs-12 form-group">
                             <label for="item_name"><span class="required">*</span>Job Title</label>

                                <input type="text" autocomplete="off" class="select2 form-control" name="job_title">

                         </div>

           </div>
           <div class="row text-center">
               <button type="submit" class="btn btn-success btn-block btn_submit_total submitting">SUBMIT</button>
           </div>
         </form>
        </div>
        <div class="modal-footer">
         <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
        </div>
        </div>
        </div>

<div class="row">
  <div class="col-lg-5 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        <?php
        //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM  job_titles ");
        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>


        <?php

        $row3 = mysqli_num_rows(mysqli_query($dbc,"SELECT * FROM job_titles"));



        ?>
      <strong>     <?php echo $row3; ?> Title(s)</strong>


      <table class="table table-striped table-bordered table-hover" id="invoice-received-table"  style="width:100%">

        <thead>
          <tr>
            <td>#</td>
            <td>Job Title</td>
            <td>Date recorded</td>

            <td>Test Information</td>

         <!--   <td>Status</td> -->
          </tr>
        </thead>
        <?php
        $no = 1;
        $sql= mysqli_query($dbc,"SELECT * FROM job_titles ");
        while($row = mysqli_fetch_array($sql))
        {


        ?>


        <tr style="cursor: pointer;">


          <td width="50px"> <?php echo $no++;?>.

          </td>

            <td onclick="viewTestDetails('<?php echo $row['id'];?>');" title="Click here to view test Details for<?php echo $row['title_name'];?> Job">
                  <span class="text-primary" style="cursor:pointer;"><?php echo $row['title_name'];?></span>
            </td>


          <td onclick="SelectProjectModule2('<?php echo $row['id'];?>')">
          <?php echo $row['time_recorded'];?></td>

          <td onclick="SelectProjectModule2('<?php echo $row['id'];?>')">
              <span class="text-primary" style="cursor:pointer;">  View Test Details</span>
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
