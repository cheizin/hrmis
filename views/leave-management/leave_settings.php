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

<?php

if($_SESSION['access_level'] == 'admin')
{
     ?>
     <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Leave Management Settings</li>
          </ol>
     </nav>

     <div class="row">
       <div class="col-lg-12 col-xs-12">
         <div class="card card-success card-outline">
           <div class="card-header">
            Leave Management List

             <button class="btn btn-link" style="float:right;"
                     data-toggle="modal" data-target="#add-leave-class-modal">
                     <i class="fa fa-plus-circle"></i> Create Leave Classess
             </button>
           </div>
           <div class="card-body table-responsive">

             <?php
             $sql_query1 =  mysqli_query($dbc,"SELECT * FROM leave_details ORDER BY id ");

             $number = 1;
             if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
             {?>

            <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
              <thead>
                <tr>
                  <td>#</td>
                  <td>Leave class</td>
                    <td>Entitled Days</td>
                  <td>Gender</td>
                    <td>Status</td>
                </tr>
              </thead>
              <?php
              $no = 1;
               $sql = mysqli_query($dbc,"SELECT * FROM leave_type ORDER BY id DESC");
               while($row = mysqli_fetch_array($sql)){
               ?>
              <tr style="cursor: pointer;">
                <td width="50px"> <?php echo $no++;?>.

                </td>

                <td>  <?php echo $row['leave_name'] ;?>

                </td>
                <td>  <?php echo $row['entitled_days'] ;?>

                </td>
                <td>  <?php echo $row['gender'] ;?>

                </td>
<td>
                <?php
                 if($row['status'] == 'Active')
                 {
                   ?>
                   <span class="badge badge-success"  style="cursor: pointer;" title="Leave is Approved"
                         onclick="ChangeStatusss('<?php echo $row['id'];?>','deactivated');">Active</span>
                   <?php
                 }
                 else
                 {
                   ?>
                   <span class="badge badge-danger"  style="cursor: pointer;"  title="Leave Pending Approval"
                         onclick="ChangeStatusss('<?php echo $row['id'];?>','active');">Deactivatedl</span>
                   <?php
                 }

                ?>
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

     <?php
     }
     else
     {
           ?>
         <br/>
     <div class="alert alert-success">
     <strong><i class="fa fa-info-circle"></i> No leave Class recorded</strong>
     </div>

       <?php
     }
     ?>

     <?php
     //fetch last reference number from database and auto increment it
     $reference_row = mysqli_fetch_array(mysqli_query($dbc,"SELECT MAX(reference_no) AS ref_no FROM stock_item "));
     //auto increment the fetched record
     $reference_row = $reference_row['ref_no'];
     //add programm name prefix, plus the auto incremented value
     $reference_row = $reference_row+1;
     ?>

     <!-- add sell module modal -->

          <!-- add job seeker modal -->
          <div class="modal fade" id="add-leave-class-modal" role="dialog">

              <div class="modal-dialog" role="document">
                <div class="modal-content">
                  <div class="modal-header alert alert-success">

                    <h5 class="modal-title">Leave Class Management</b></h5>

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                      <span aria-hidden="true">&times;</span>
                    </button>
                  </div>
                  <div class="modal-body">
                    <form id="add-leave-class-details-form">

                      <input type="hidden" name="add-leave-class-details" value="add-leave-class-details">
                      <div class="row border-bottom mx-3">

                        <div class="col-lg-12 col-xs-12 form-group">
                            <label for="item_name"><span class="required">*</span>Leave Class Name</label>

                              <input type="text" autocomplete="off" class="select2 form-control" name="leave_name">

                        </div>
                        <div class="col-lg-6 col-xs-12 form-group">
                            <label for="item_name"><span class="required">*</span>Entitled Days</label>

                              <input type="text" autocomplete="off" class="select2 form-control" name="entitled_days">

                        </div>
                        <div class="col-lg-6 col-xs-12 form-group">
                        <label><span class="required">*</span>Gender</label>
                        <?php
                        $result = mysqli_query($dbc, "SELECT * FROM gender ORDER BY gender_name ASC");
                        echo '
                        <select name="gender" data-tags="true" class="select2 form-control" data-placeholder="Select Gender" required>
                        <option></option>';
                        while($row = mysqli_fetch_array($result)) {
                            echo '<option value="'.$row['gender_name'].'">'.$row['gender_name']."</option>";
                        }
                        echo '</select>';
                        ?>
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
                        <!-- end of add job seeker modal -->


     </div>
     <!-- /.row (main row) -->
     </div><!-- /.container-fluid -->

     </section>
     <!-- /.content -->
     </div>
     <!-- /.content-wrapper -->


     <script>
     $('.confirm').on('keyup', function () {
     if ($('.password').val() == $('.confirm').val()) {
     $('.password_help').html(' Password Matched').css('color', 'blue');
     } else
     $('.password_help').html('Not Matching').css('color', 'red');
     });

     </script>

     </div>

     <?php
   }
