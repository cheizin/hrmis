
<?php
session_start();
include("../../controllers/setup/connect.php");
$name = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$_SESSION['email']."'"));

$courseApplied = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM training_course_details WHERE reference_no ='".$name['id']."'"));

$job_posted =  mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE id ='".$get_mail['job_posting_id']."'"));


$profile_pic= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id='".$_POST['id']."'"));

?>

<div class="col-lg-12 col-xs-12">
  <div class="card card-success card-outline">
    <div class="card-header">
  E-materials
      <button class="btn btn-link" style="float:right;"
              data-toggle="modal" data-target="#evidence-course-modal">
              <i class="fa fa-paperclip"></i> Attach Reading materials </strong>
      </button>
    </div>
    <div class="card-body table-responsive">

      <?php
    $sql_query1 =  mysqli_query($dbc,"SELECT * FROM course_materials WHERE reference_no ='".$courseApplied['id']."' ORDER BY id ");

    $number = 1;
    if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
    {?>
     <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
         <tr>
           <td>#</td>
           <td>Materials Name</td>
           <td>Course Name</td>

       </tr>
       </thead>
       <?php

         $sql = mysqli_query($dbc,"SELECT * FROM course_materials WHERE reference_no ='".$courseApplied['id']."'  ORDER BY id");
           while($invoice = mysqli_fetch_array($sql))

           {?>
             <tr style="cursor: pointer;">
               <td><?php echo $number++;?>. </td>
               <td>    <a href="views/training-management/documents/<?php echo $invoice['material_name'];?>" target="_blank">

                            <?php echo $invoice['material_name'];?>

                             </a>
                           </td>
                            <td>  <?php echo $invoice['course_name'] ;?>  </td>

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
<strong><i class="fa fa-info-circle"></i> No attached materials</strong>
</div>

       <?php
     }
     ?>



    </div>
  </div>
</div>
<!-- start evidence doc modal -->


<div class="modal fade" id="evidence-course-modal" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header alert alert-success">

        <h5 class="modal-title">Attaching Supporting Documents for <strong><?php echo $name['fName'];?></strong>

           <span class="font-weight-bold"></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form id="add-evidence-course-form" class="mt-4" enctype="multipart/form-data">

            <input type="hidden" name="reference_no" value="<?php echo $courseApplied['id'];?>">
          <input type="hidden" value="add-course-materials" name="add-course-materials">
            <input type="hidden" value="trainer" name="trainer">



          <input type="hidden" name="add-evidence-document" value="add-evidence-document">

          <div class="row border-bottom mx-2">

          <div class="col-lg-12 col-xs-12">
              <label>Evidence Document</label>
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-btn">
                    <span class="btn btn-primary btn-file project-file">
                        <i class="fal fa-file-alt"></i>  Browse &hellip; <input type="file" name="additional_file2" class="form-control purchase-order-document" single>
                    </span>
                </span>
              </div>
              <input type="text" class="form-control bg-white purchase-order-document-label" readonly>
            </div>
            <div class="row purchase-order-document-error"></div>

          </div>

          <div class="col-lg-12 col-xs-12 form-group">
          <label><span class="required">*</span>Link Course</label>
          <?php
          $result = mysqli_query($dbc, "SELECT * FROM training_course_details ORDER BY course_name ASC");
          echo '
          <select name="course_name" data-tags="true" class="select2 form-control" data-placeholder="Select Course Name" required>
          <option></option>';
          while($row = mysqli_fetch_array($result)) {
              echo '<option value="'.$row['course_name'].'">'.$row['course_name']."</option>";
          }
          echo '</select>';
          ?>
          </div>


              <div class="pull-left mt-4">
                <small class="text-muted">Recorded by:- <?php echo $_SESSION['fName'];?></small>
              </div>
                </div>



          <div class="row text-center">
              <button type="submit" class="btn btn-primary btn-block btn_submit_total submitting8">SUBMIT</button>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!-- end add project lesson learnt modal -->
