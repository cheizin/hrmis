<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}

if(!isset($_POST['id']))
{
  exit("Please select Bank Details ");
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
              data-toggle="modal" data-target="#add-bank-details-modal">
             Add statutory Details
      </button>

    </div>
    <div class="card-body table-responsive">

      <?php
   $sql_query1 =  mysqli_query($dbc,"SELECT * FROM statutory_details WHERE reference_no ='".$_POST['id']."' ORDER BY id DESC limit 1");

   $number = 1;
   if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
   {?>
     <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
       <thead>
         <tr>
           <td>#</td>
           <td>ID NUmber</td>
           <td>KRA PIN Number</td>
           <td>NSSF Number</td>
           <td>NHIF Number</td>

         </tr>
       </thead>
       <?php
          $no = 1;
          $sql= mysqli_query($dbc,"SELECT * FROM statutory_details WHERE reference_no ='".$_POST['id']."' ORDER BY id DESC limit 1");
          while($product = mysqli_fetch_array($sql))
          {
            ?>
            <tr style="cursor: pointer;">
              <td width="40px"><?php echo $no++ ;?>.

              </td>

              <td><?php echo $product['id_number'];?></td>
              <td><?php echo $product['pin_number'];?></td>

              <td><?php echo $product['nhif_number'];?></td>
              <td><?php echo $product['nssf_number'];?></td>

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
<strong><i class="fa fa-info-circle"></i> No Statutory Details Added</strong>
</div>

       <?php
     }
     ?>



    </div>
  </div>
</div>

<!-- start add end product modal -->
<div class="modal fade" id="add-bank-details-modal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header alert alert-success">

        <h5 class="modal-title">Statutory details for <b><?php echo $profile_pic['fName'];?> </b></h5>

        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-statutory-details-form">
          <input type="hidden" name="reference_no" value="<?php echo $_POST['id'];?>">

          <input type="hidden" name="add-statutory-details" value="add-statutory-details">
          <div class="row border-bottom mx-3">

              <div class="col-lg-12 col-xs-12 form-group">
                  <label for="item_name"><span class="required">*</span>ID Number</label>

                    <input type="text" autocomplete="off" class="select2 form-control" name="id_number">

              </div>
              <div class="col-lg-12 col-xs-12 form-group">
                  <label for="item_name"><span class="required">*</span>KRA Pin Number</label>

                    <input type="text" autocomplete="off" class="select2 form-control" name="pin_number">

              </div>
              <div class="col-lg-12 col-xs-12 form-group">
                  <label for="item_name"><span class="required">*</span>NSSF Number</label>

                    <input type="text" autocomplete="off" class="select2 form-control" name="nssf_number">

              </div>
              <div class="col-lg-12 col-xs-12 form-group">
                  <label for="item_name"><span class="required">*</span>NHIF Number</label>

                    <input type="text" autocomplete="off" class="select2 form-control" name="nhif_number">

              </div>

                  </div>


              <div class="row">

                <div class="pull-left mt-4">
                  <small class="text-muted">Recorded by:-<?php echo $_SESSION['fName'];?></small>
                </div>
                </div>


          <div class="row text-center">
              <button type="submit" class="btn btn-primary btn-block font-weight-bold submitting">SUBMIT</button>
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
