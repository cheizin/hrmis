<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}

if(!isset($_POST['id']))
{
  exit("Please select academic Details ");
}


session_start();
include("../../controllers/setup/connect.php");

$profile_pic= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id='".$_POST['id']."'"));
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/


?>
<div class="col-lg-12 col-xs-12">
  <div class="card card-success card-outline">
    <div class="card-header">

      <button class="btn btn-link" style="float:right;"
              data-toggle="modal" data-target="#add-certificate-details-modal">
             Add Certficates/awards/accolades
      </button>

    </div>
    <div class="card-body table-responsive">
      <?php
      //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


      $sql_query1 =  mysqli_query($dbc,"SELECT * FROM awards WHERE reference_no ='".$_POST['id']."'");
      $number = 1;
      if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
      {?>

      <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
      <thead>
      <tr>
      <td>#</td>
      <td>Award Name</td>
      <td>Type</td>
      <td>Year Received</td>
      <td>Institution</td>
      <!--<td>Edit</td> -->

      </tr>
      </thead>
      <?php
      $no = 1;
      $sql2= mysqli_query($dbc,"SELECT * FROM awards WHERE reference_no ='".$_POST['id']."' ORDER BY year_received DESC ");
      while($awards = mysqli_fetch_array($sql2))
      {
      ?>
      <tr style="cursor: pointer;">
      <td width="40px"><?php echo $no++ ;?>.

      </td>

      <td><?php echo $awards['award_name'];?></td>
      <td><?php echo $awards['type'];?></td>

      <td><?php echo $awards['year_received'];?></td>
      <td><?php echo $awards['institution'];?></td>



      </td>

      </tr>
      <?php
      }
      ?>
      </table>

      <?php
      }
      else
      {
           ?>
         <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No certificate Details Added</strong>
</div>

       <?php
     }
     ?>



    </div>
  </div>
</div>

<!-- start add end product modal -->
<div class="modal fade" id="add-certificate-details-modal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header alert alert-success">

        <h5 class="modal-title">Certificate details for <b><?php echo $profile_pic['fName'];?> </b></h5>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-certificate-details-form">
            <input type="hidden" name="add-certificate-details" value="add-certificate-details">
          <input type="hidden" name="reference_no" value="<?php echo $_POST['id'];?>">
            <input type="hidden" name="email" value="<?php echo $profile_pic['Email'];?>">

            <div class="row border-bottom mx-4">
            <div class="col-lg-5 col-xs-12 form-group">
            <label><span class="required">*</span>Institution</label>
              <input type="text" autocomplete="off" class="select2 form-control" name="institution">
            </div>
            <div class="col-lg-5 col-xs-12 form-group">
            <label><span class="required">*</span>Award Name</label>
            <?php
            $result2 = mysqli_query($dbc, "SELECT * FROM award_type ORDER BY id ASC");
            echo '
            <select name="type" data-tags="true" class="select2 form-control" data-placeholder="Select Award Type" required>
            <option></option>';
            while($row = mysqli_fetch_array($result2)) {
                echo '<option value="'.$row['type'].'">'.$row['type']."</option>";
            }
            echo '</select>';
            ?>
            </div>
            <div class="col-lg-5 col-xs-12 form-group">
            <label><span class="required">*</span>Award Name</label>
              <input type="text" autocomplete="off" class="select2 form-control" name="award_name">
            </div>
            <div class="col-lg-5 col-xs-12 form-group">
            <label> <span class="required">*</span> Year Received</label>
            <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
            </div>
            <input type="text" class="form-control project_start_date" autocomplete="off" name="year_received" required>
            </div>
            </div>


            </div>

                  <!-- start row button -->
            <div class="row">
              <div class="col-md-12 text-center">
                  <button type="submit" class="btn btn-success btn-block font-weight-bold submitting">SUBMIT</button>
              </div>
            </div>

            </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- end add end product -->
