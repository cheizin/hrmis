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
            <li class="breadcrumb-item active" aria-current="page">Personell Mangement</li>
          </ol>
     </nav>

     <?php


     $personal_details = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level = 'employee' || access_level = 'PERSONELL_MANAGEMENT'  "));
       ?>

      <div class="row">
        <div class="col-lg-12 col-xs-12">
          <div class="card card-success card-outline">
            <div class="card-header">
              Personell List

              <button class="btn btn-link" style="float:right;"
                      data-toggle="modal" data-target="#add-employee-modal">
                      <i class="fa fa-plus-circle"></i> Add an Employee
              </button>
            </div>
            <div class="card-body table-responsive">

              <?php
              $sql_query1 =  mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level = 'employee' || access_level = 'PERSONELL_MANAGEMENT'   ORDER BY id ");

              $number = 1;
              if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
              {?>

             <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
               <thead>
                 <tr>
                   <td>#</td>
                   <td>Passport</td>
                   <td>Personal Details</td>
                   <td>Gender</td>
                    <td>Email</td>
                    <td>Contact</td>
                   <td>Empoyee No</td>
                     <td>Status</td>
                   <td>Action</td>

                 </tr>
               </thead>
               <?php
               $no = 1;
                $sql = mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level = 'employee' || access_level = 'PERSONELL_MANAGEMENT'   ORDER BY id DESC");
                while($row = mysqli_fetch_array($sql)){
                ?>
               <tr style="cursor: pointer;">
                 <td width="50px"> <?php echo $no++;?>.

                 </td>
                 <td>
                 <div class="card-body box-profile">
                   <div class="float-left">


                     <b>
                                    <?php
                                             echo $row['fName']; ?>
                                       </b><br/>

                              <img class="profile-user-img img-fluid img-circle"
                                   src="assets/img/<?php echo $row['emp_photo']; ?>"
                                   alt="User profile picture">




                   </div>
                   </td>

                 <td>
                   <?php echo $row['location'] ;?>,  <?php echo $row['country'] ;?> <br/>
                     <?php echo $row['highestQualification'] ;?>


                 </td>
                 <td>  <?php echo $row['gender'] ;?>

                 </td>
                 <td>  <?php echo $row['Email'] ;?>

                 </td>
                 <td>  <?php echo $row['contact'] ;?>

                 </td>
                 <td>  <?php echo $row['id'] ;?>

                 </td>

                 <td>
 <?php
  if($row['status'] == 'active')
  {
    ?>
    <span class="badge badge-success"  style="cursor: pointer;" title="User Is Active. Click to Deactivate"
          onclick="ChangeStatuss('<?php echo $row['id'];?>','deactivated');">active</span>
    <?php
  }
  else
  {
    ?>
    <span class="badge badge-danger"  style="cursor: pointer;"  title="User Is deactivated. Click to Activate"
          onclick="ChangeStatuss('<?php echo $row['id'];?>','active');">deactivated</span>
    <?php
  }

 ?>
 </td>

                            <td onclick="viewPersonellList('<?php echo $row['id'];?>');" title="Click here to view More Details">


                                                                        <span class="text-primary" style="cursor:pointer;">View More Details</span>

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
      <div class="alert alert-sucess">
      <strong><i class="fa fa-info-circle"></i> No Employee recorded</strong>
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
      <div class="modal fade" id="add-employee-modal">
      <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
        <div class="modal-content">
          <div class="modal-header alert alert-success">

            <h5 class="modal-title">Adding Personal Details for Employees </h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form id="personal-details-form" class="mt-4" enctype="multipart/form-data">
              <input type="hidden" value="add-personal-details" name="add-personal-details">
                <input type="hidden" value="employee" name="employee">
                   <input type="hidden" value="<?php echo $_SESSION['fName']; ?>" name="company_name">

            <!-- start of row -->

                      <div class="row border-bottom mx-4">
                  <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>Surname</label>
                        <input type="text" autocomplete="off" class="select2 form-control" name="fName">
                  </div>
                  <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>Other Names</label>
                        <input type="text" autocomplete="off" class="select2 form-control" name="lName">
                  </div>



                <div class="col-lg-3 col-xs-12 form-group">
                  <label> <span class="required">*</span> Date Of Birth</label>
                  <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                    </div>
                    <input type="text" class="form-control project_start_date" autocomplete="off" name="dob" required>
                  </div>
                </div>
                <div class="col-lg-3 col-xs-12 form-group">
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

                  <div class="row border-bottom mx-3">
                  <div class="col-lg-5 col-xs-12 form-group">
                      <label><span class="required">*</span>Email</label>
                        <input type="email" autocomplete="off" class="select2 form-control" name="Email">
                  </div>
                  <div class="col-lg-4 col-xs-12 form-group">
                      <label><span class="required">*</span>Location</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="location">
                  </div>
                  <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>Contact</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="contact">
                  </div>

                  </div>

                   <div class="row border-bottom mx-4">

                  <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>Nationality</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="nationality">
                  </div>
                  <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>County of Origin</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="county">
                  </div>
                  <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>Religion</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="religion">
                  </div>
                  <div class="col-lg-3 col-xs-12 form-group">
                      <label><span class="required">*</span>Ethic group</label>
                        <input type="text" autocomplete="off" class="select2 form-control"  name="ethnic">
                  </div>
                    </div>






      <div class="row border-bottom mx-4">

      <div class="col-lg-6 col-xs-12 form-group">
      <label for="password">Enter Password
      <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
      title="Your Password associated to your Windows account" id=""></i></label>
      <div class="input-group add-on">
      <input type="password" name="password" id="password" maxlength="40" class="form-control pwd"  required placeholder="input your password">

      </div>
      <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
      </div>
      <div class="col-lg-6 col-xs-12 form-group">
      <label for="password">Confirm Password
      <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
      title="Your Password associated to your Windows account" id="password_help"></i></label>
      <div class="input-group add-on">
      <input type="password" id="confirm" name="confirm" maxlength="40" class="form-control pwd"  required placeholder="Confirm Your password">

      </div>
      <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
      </div>

      </div>

                    <!-- start row button -->
              <div class="row">
                <div class="col-md-12 text-center">
                    <button type="submit" class="btn btn-primary btn-block font-weight-bold submitting">SUBMIT</button>
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
      </div><!-- /.container-fluid -->

      </section>
      <!-- /.content -->
      </div>
      <!-- /.content-wrapper -->


      <script>
      $('#confirm').on('keyup', function () {
      if ($('#password').val() == $('#confirm').val()) {
      $('#password_help').html(' Password Matched').css('color', 'blue');
      } else
      $('#password_help').html('Not Matching').css('color', 'red');
      });

      </script>

      </div>
     <?php
   }



   if($_SESSION['access_level'] == 'employee')
   {
        ?>
        <nav aria-label="breadcrumb">
             <ol class="breadcrumb">
               <li class="breadcrumb-item active" aria-current="page">Personell Details for <b><?php echo $_SESSION['fName']; ?>  </b></li>
             </ol>
        </nav>

       <?php


       $personal_details = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE fName ='".$_SESSION['fName']."'"));
         ?>

        <div class="row">
          <div class="col-lg-12 col-xs-12">
            <div class="card card-success card-outline">
              <div class="card-header">
                Personell List

              </div>
              <div class="card-body table-responsive">

                <?php
                $sql_query1 =  mysqli_query($dbc,"SELECT * FROM staff_users WHERE fName = '".$_SESSION['fName']."'  ORDER BY id ");

                $number = 1;
                if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
                {?>

               <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
                 <thead>
                   <tr>
                     <td>#</td>
                     <td>Passport</td>
                     <td>Personal Details</td>
                     <td>Gender</td>
                      <td>Email</td>
                      <td>Contact</td>

                     <td>Action</td>

                   </tr>
                 </thead>
                 <?php
                 $no = 1;
                  $sql = mysqli_query($dbc,"SELECT * FROM staff_users WHERE fName = '".$_SESSION['fName']."'   ORDER BY id DESC");
                  while($row = mysqli_fetch_array($sql)){
                  ?>
                 <tr style="cursor: pointer;">
                   <td width="50px"> <?php echo $no++;?>.

                   </td>
                   <td>
                   <div class="card-body box-profile">
                     <div class="float-left">


                       <b>
                                      <?php
                                               echo $row['fName']; ?>
                                         </b><br/>

                                <img class="profile-user-img img-fluid img-circle"
                                     src="assets/img/<?php echo $row['emp_photo']; ?>"
                                     alt="User profile picture">




                     </div>
                     </td>

                   <td>
                     <?php echo $row['location'] ;?>,  <?php echo $row['country'] ;?> <br/>
                       <?php echo $row['highestQualification'] ;?>


                   </td>
                   <td>  <?php echo $row['gender'] ;?>

                   </td>
                   <td>  <?php echo $row['Email'] ;?>

                   </td>
                   <td>  <?php echo $row['contact'] ;?>

                   </td>
                   <td>  <?php echo $row['id'] ;?>

                   </td>
                   <td>  <?php echo $row['status'] ;?>

                   </td>



                              <td onclick="viewPersonellList('<?php echo $row['id'];?>');" title="Click here to view More Details">


                                                                          <span class="text-primary" style="cursor:pointer;">View More Details</span>

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
        <div class="alert alert-info">
        <strong><i class="fa fa-info-circle"></i> No Employee recorded</strong>
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
        <div class="modal fade" id="add-employee-modal">
        <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
          <div class="modal-content">
            <div class="modal-header alert alert-success">

              <h5 class="modal-title">Personal Details for Employee </h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form id="personal-details-form" class="mt-4" enctype="multipart/form-data">
                <input type="hidden" value="add-personal-details" name="add-personal-details">
                  <input type="hidden" value="employee" name="employee">
                     <input type="hidden" value="<?php echo $_SESSION['fName']; ?>" name="company_name">

              <!-- start of row -->

                        <div class="row border-bottom mx-4">
                    <div class="col-lg-3 col-xs-12 form-group">
                        <label><span class="required">*</span>Surname</label>
                          <input type="text" autocomplete="off" class="select2 form-control" name="fName">
                    </div>
                    <div class="col-lg-3 col-xs-12 form-group">
                        <label><span class="required">*</span>Other Names</label>
                          <input type="text" autocomplete="off" class="select2 form-control" name="lName">
                    </div>



                  <div class="col-lg-3 col-xs-12 form-group">
                    <label> <span class="required">*</span> Date Of Birth</label>
                    <div class="input-group mb-2 mr-sm-2">
                      <div class="input-group-prepend">
                        <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                      </div>
                      <input type="text" class="form-control project_start_date" autocomplete="off" name="dob" required>
                    </div>
                  </div>
                  <div class="col-lg-3 col-xs-12 form-group">
                    <div class="row">
                      <label><span class="required">*</span>Gender  </label>
                        </div>
                      <div class="row">
                      <select name="gender" id="type">
                          <option selected="selected">Select type</option>

                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        </select>
                  </div>
                  </div>
                  </div>


                    <div class="row border-bottom mx-4">
                    <div class="col-lg-3 col-xs-12 form-group">
                        <label><span class="required">*</span>Email</label>
                          <input type="email" autocomplete="off" class="select2 form-control" name="Email">
                    </div>
                    <div class="col-lg-3 col-xs-12 form-group">
                        <label><span class="required">*</span>Location</label>
                          <input type="text" autocomplete="off" class="select2 form-control"  name="location">
                    </div>
                    <div class="col-lg-3 col-xs-12 form-group">
                        <label><span class="required">*</span>Contact</label>
                          <input type="text" autocomplete="off" class="select2 form-control"  name="contact">
                    </div>

                    <div class="col-lg-3 col-xs-12 form-group">
                        <label><span class="required">*</span>Nationality</label>
                          <input type="text" autocomplete="off" class="select2 form-control"  name="nationality">
                    </div>


        </div>



        <div class="row border-bottom mx-4">

        <div class="col-lg-6 col-xs-12 form-group">
        <label for="password">Enter Password
        <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
        title="Your Password associated to your Windows account" id=""></i></label>
        <div class="input-group add-on">
        <input type="password" name="password" id="password" maxlength="40" class="form-control pwd"  required placeholder="input your password">

        </div>
        <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
        </div>
        <div class="col-lg-6 col-xs-12 form-group">
        <label for="password">Confirm Password
        <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
        title="Your Password associated to your Windows account" id="password_help"></i></label>
        <div class="input-group add-on">
        <input type="password" id="confirm" name="confirm" maxlength="40" class="form-control pwd"  required placeholder="Confirm Your password">

        </div>
        <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
        </div>

        </div>

                      <!-- start row button -->
                <div class="row">
                  <div class="col-md-12 text-center">
                      <button type="submit" class="btn btn-primary btn-block font-weight-bold submitting">SUBMIT</button>
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
        </div><!-- /.container-fluid -->

        </section>
        <!-- /.content -->
        </div>
        <!-- /.content-wrapper -->


        <script>
        $('#confirm').on('keyup', function () {
        if ($('#password').val() == $('#confirm').val()) {
        $('#password_help').html(' Password Matched').css('color', 'blue');
        } else
        $('#password_help').html('Not Matching').css('color', 'red');
        });

        </script>

        </div>


<?php
      }
      ?>

        <?php

        if($_SESSION['access_level'] == 'PERSONELL_MANAGEMENT')
        {

     ?>
     <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Personell Mangement for company <b><?php echo $_SESSION['fName']; ?>  </b></li>
          </ol>
     </nav>

    <?php


    $personal_details = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE fName ='".$_SESSION['fName']."'"));
      ?>

     <div class="row">
       <div class="col-lg-12 col-xs-12">
         <div class="card card-success card-outline">
           <div class="card-header">
             Personal List

             <button class="btn btn-link" style="float:right;"
                     data-toggle="modal" data-target="#add-employee-modal">
                     <i class="fa fa-plus-circle"></i> Add an Employee
             </button>
           </div>
           <div class="card-body table-responsive">

             <?php
             $sql_query1 =  mysqli_query($dbc,"SELECT * FROM staff_users WHERE companyName = '".$_SESSION['fName']."'  ORDER BY id ");

             $number = 1;
             if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
             {?>

            <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
              <thead>
                <tr>
                  <td>#</td>
                  <td>Passport</td>
                  <td>Personal Details</td>
                  <td>Gender</td>
                   <td>Email</td>
                   <td>Contact</td>
                  <td>Empoyee No</td>
                    <td>Status</td>
                  <td>Action</td>

                </tr>
              </thead>
              <?php
              $no = 1;
               $sql = mysqli_query($dbc,"SELECT * FROM staff_users WHERE companyName='".$_SESSION['fName']."'   ORDER BY id DESC");
               while($row = mysqli_fetch_array($sql)){
               ?>
              <tr style="cursor: pointer;">
                <td width="50px"> <?php echo $no++;?>.

                </td>
                <td>
                <div class="card-body box-profile">
                  <div class="float-left">


                    <b>
                                   <?php
                                            echo $row['fName']; ?>
                                      </b><br/>

                             <img class="profile-user-img img-fluid img-circle"
                                  src="assets/img/<?php echo $row['emp_photo']; ?>"
                                  alt="User profile picture">




                  </div>
                  </td>

                <td>
                  <?php echo $row['location'] ;?>,  <?php echo $row['country'] ;?> <br/>
                    <?php echo $row['highestQualification'] ;?>


                </td>
                <td>  <?php echo $row['gender'] ;?>

                </td>
                <td>  <?php echo $row['Email'] ;?>

                </td>
                <td>  <?php echo $row['contact'] ;?>

                </td>
                <td>  <?php echo $row['id'] ;?>

                </td>

                <td>
<?php
 if($row['status'] == 'active')
 {
   ?>
   <span class="badge badge-success"  style="cursor: pointer;" title="User Is Active. Click to Deactivate"
         onclick="ChangeStatus('<?php echo $row['id'];?>','deactivated');">active</span>
   <?php
 }
 else
 {
   ?>
   <span class="badge badge-danger"  style="cursor: pointer;"  title="User Is deactivated. Click to Activate"
         onclick="ChangeStatus('<?php echo $row['id'];?>','active');">deactivated</span>
   <?php
 }

?>
</td>

                           <td onclick="viewPersonellList('<?php echo $row['id'];?>');" title="Click here to view More Details">


                                                                       <span class="text-primary" style="cursor:pointer;">View More Details</span>

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
     <div class="alert alert-info">
     <strong><i class="fa fa-info-circle"></i> No Employee recorded</strong>
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
     <div class="modal fade" id="add-employee-modal">
     <div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
       <div class="modal-content">
         <div class="modal-header alert alert-success">

           <h5 class="modal-title">Adding Personal Details for Employees </h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
           <form id="personal-details-form" class="mt-4" enctype="multipart/form-data">
             <input type="hidden" value="add-personal-details" name="add-personal-details">
               <input type="hidden" value="employee" name="employee">
                  <input type="hidden" value="<?php echo $_SESSION['fName']; ?>" name="company_name">

           <!-- start of row -->

                     <div class="row border-bottom mx-4">
                 <div class="col-lg-3 col-xs-12 form-group">
                     <label><span class="required">*</span>Surname</label>
                       <input type="text" autocomplete="off" class="select2 form-control" name="fName">
                 </div>
                 <div class="col-lg-3 col-xs-12 form-group">
                     <label><span class="required">*</span>Other Names</label>
                       <input type="text" autocomplete="off" class="select2 form-control" name="lName">
                 </div>



               <div class="col-lg-3 col-xs-12 form-group">
                 <label> <span class="required">*</span> Date Of Birth</label>
                 <div class="input-group mb-2 mr-sm-2">
                   <div class="input-group-prepend">
                     <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                   </div>
                   <input type="text" class="form-control project_start_date" autocomplete="off" name="dob" required>
                 </div>
               </div>
               <div class="col-lg-3 col-xs-12 form-group">
                 <div class="row">
                   <label><span class="required">*</span>Gender  </label>
                     </div>
                   <div class="row">
                   <select name="gender" id="type">
                       <option selected="selected">Select type</option>

                     <option value="Male">Male</option>
                     <option value="Female">Female</option>
                     </select>
               </div>
               </div>
               </div>


                 <div class="row border-bottom mx-3">
                 <div class="col-lg-5 col-xs-12 form-group">
                     <label><span class="required">*</span>Email</label>
                       <input type="email" autocomplete="off" class="select2 form-control" name="Email">
                 </div>
                 <div class="col-lg-4 col-xs-12 form-group">
                     <label><span class="required">*</span>Location</label>
                       <input type="text" autocomplete="off" class="select2 form-control"  name="location">
                 </div>
                 <div class="col-lg-3 col-xs-12 form-group">
                     <label><span class="required">*</span>Contact</label>
                       <input type="text" autocomplete="off" class="select2 form-control"  name="contact">
                 </div>

                 </div>

                  <div class="row border-bottom mx-4">

                 <div class="col-lg-3 col-xs-12 form-group">
                     <label><span class="required">*</span>Nationality</label>
                       <input type="text" autocomplete="off" class="select2 form-control"  name="nationality">
                 </div>
                 <div class="col-lg-3 col-xs-12 form-group">
                     <label><span class="required">*</span>County of Origin</label>
                       <input type="text" autocomplete="off" class="select2 form-control"  name="county">
                 </div>
                 <div class="col-lg-3 col-xs-12 form-group">
                     <label><span class="required">*</span>Religion</label>
                       <input type="text" autocomplete="off" class="select2 form-control"  name="religion">
                 </div>
                 <div class="col-lg-3 col-xs-12 form-group">
                     <label><span class="required">*</span>Ethic group</label>
                       <input type="text" autocomplete="off" class="select2 form-control"  name="ethnic">
                 </div>
                   </div>






     <div class="row border-bottom mx-4">

     <div class="col-lg-6 col-xs-12 form-group">
     <label for="password">Enter Password
     <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
     title="Your Password associated to your Windows account" id=""></i></label>
     <div class="input-group add-on">
     <input type="password" name="password" id="password" maxlength="40" class="form-control pwd"  required placeholder="input your password">

     </div>
     <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
     </div>
     <div class="col-lg-6 col-xs-12 form-group">
     <label for="password">Confirm Password
     <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
     title="Your Password associated to your Windows account" id="password_help"></i></label>
     <div class="input-group add-on">
     <input type="password" id="confirm" name="confirm" maxlength="40" class="form-control pwd"  required placeholder="Confirm Your password">

     </div>
     <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
     </div>

     </div>

                   <!-- start row button -->
             <div class="row">
               <div class="col-md-12 text-center">
                   <button type="submit" class="btn btn-primary btn-block font-weight-bold submitting">SUBMIT</button>
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
     </div><!-- /.container-fluid -->

     </section>
     <!-- /.content -->
     </div>
     <!-- /.content-wrapper -->


     <script>
     $('#confirm').on('keyup', function () {
     if ($('#password').val() == $('#confirm').val()) {
     $('#password_help').html(' Password Matched').css('color', 'blue');
     } else
     $('#password_help').html('Not Matching').css('color', 'red');
     });

     </script>

     </div>

     <?php
   }
   ?>
