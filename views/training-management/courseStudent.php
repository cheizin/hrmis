<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");


$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM cal_events WHERE eid ='".$_POST['eid']."'"));

?>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        <button class="btn btn-link" style="float:right;"
                data-toggle="modal" data-target=".add-course-modal">
                <i class="fa fa-plus-circle"></i> Assign student to a course
        </button>

      </div>
      <div class="card-body table-responsive">

        <?php
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM course_student WHERE subject= '".$row['subject']."' ORDER BY id ");

        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

       <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
         <thead>
           <tr>
             <td>#</td>
             <td>Personal Details</td>
              <td>Email</td>
              <td>Contact</td>
             <td>Nationality</td>

           </tr>
         </thead>
         <?php
         $no = 1;
          $sql = mysqli_query($dbc,"SELECT * FROM course_student WHERE subject= '".$row['subject']."' ORDER BY id  DESC");
          while($row2 = mysqli_fetch_array($sql)){
          ?>
         <tr style="cursor: pointer;">
           <td width="50px"> <?php echo $no++;?>.

           </td>
           <td>
             <?php

                  $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['student_name']."'"  );
                  if(mysqli_num_rows($result))
                  {
                    while($project= mysqli_fetch_array($result))
                    {
                        echo $project['fName'];

                    }
                  }
                  ?>
              ,
                <?php

                     $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['student_name']."'"  );
                     if(mysqli_num_rows($result))
                     {
                       while($project= mysqli_fetch_array($result))
                       {
                           echo $project['lName'];

                       }
                     }
                     ?>


                   </br>
                   <?php

                        $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['student_name']."'"  );
                        if(mysqli_num_rows($result))
                        {
                          while($project= mysqli_fetch_array($result))
                          {
                              echo $project['gender'];

                          }
                        }
                        ?>
                      </br>
                      <?php

                           $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['student_name']."'"  );
                           if(mysqli_num_rows($result))
                           {
                             while($project= mysqli_fetch_array($result))
                             {
                                 echo $project['location'];

                             }
                           }
                           ?>
             </td>
             <td>
               <?php

                    $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['student_name']."'"  );
                    if(mysqli_num_rows($result))
                    {
                      while($project= mysqli_fetch_array($result))
                      {
                          echo $project['Email'];

                      }
                    }
                    ?>
               </td>
               <td>
                 <?php

                      $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['student_name']."'"  );
                      if(mysqli_num_rows($result))
                      {
                        while($project= mysqli_fetch_array($result))
                        {
                            echo $project['contact'];

                        }
                      }
                      ?>
                 </td>
                 <td>
                   <?php

                        $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['student_name']."'"  );
                        if(mysqli_num_rows($result))
                        {
                          while($project= mysqli_fetch_array($result))
                          {
                              echo $project['nationality'];

                          }
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
<strong><i class="fa fa-info-circle"></i> No Trainee for the selected course</strong>
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
     <div class="modal fade add-course-modal">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header alert alert-success">

           <h5 class="modal-title">Assigning student to course <strong>  <?php echo $row['subject'];?> </strong></h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
           <form id="course-trainers-form" class="mt-4" enctype="multipart/form-data">
             <input type="hidden" value="add-course-trainers" name="add-course-trainers">

             <input type="hidden" value="<?php echo $row['subject'] ;?>" name="subject">

   <div class="row border-bottom mx-3">


               <div class="col-lg-12 col-xs-12 form-group">
               <label><span class="required">*</span>Student Name </label>
               <?php
               $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE access_level = 'TRAINING_MANAGEMENT' || access_level = 'trainee' ");
               echo '
               <select name="fName" data-tags="true" class="select2 form-control" data-placeholder="Select Student Name" required>
               <option></option>';
               while($row = mysqli_fetch_array($result)) {
                   echo '<option value="'.$row['fName'].'">'.$row['fName']."</option>";
               }
               echo '</select>';
               ?>
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
                   <!-- end of add job seeker modal -->

                   <!-- add job seeker modal -->
                   <div class="modal fade add-trainer-moda">
                   <div class="modal-dialog" role="document">
                     <div class="modal-content">
                       <div class="modal-header alert alert-success">

                         <h5 class="modal-title">Assigning student to course <strong>  <?php echo $row['subject'];?> </strong></h5>
                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                         </button>
                       </div>
                       <div class="modal-body">
                         <form id="course-trainers-form" class="mt-4" enctype="multipart/form-data">
                           <input type="hidden" value="add-course-trainers" name="add-course-trainers">

                           <input type="hidden" value="<?php echo $row['subject'] ;?>" name="subject">

                 <div class="row border-bottom mx-3">


                             <div class="col-lg-12 col-xs-12 form-group">
                             <label><span class="required">*</span>Student Name </label>
                             <?php
                             $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE access_level = 'TRAINING_MANAGEMENT' || access_level = 'trainee' ");
                             echo '
                             <select name="fName" data-tags="true" class="select2 form-control" data-placeholder="Select Student Name" required>
                             <option></option>';
                             while($row = mysqli_fetch_array($result)) {
                                 echo '<option value="'.$row['fName'].'">'.$row['fName']."</option>";
                             }
                             echo '</select>';
                             ?>
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
                                 <!-- end of add job seeker modal -->




</div>
<!-- /.row (main row) -->

<script>
$('.confirm').on('keyup', function () {
if ($('.password').val() == $('.confirm').val()) {
$('.password_help').html(' Password Matched').css('color', 'blue');
} else
$('.password_help').html('Not Matching').css('color', 'red');
});

</script>
