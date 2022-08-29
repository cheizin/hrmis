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
<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
       <li class="breadcrumb-item active" aria-current="page">Sell a Module</li>
     </ol>
</nav>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        Sell a Module
        <button class="btn btn-link" style="float:right;"
                data-toggle="modal" data-target="#sell-a-modal">
                <i class="fa fa-plus-circle"></i> Sell A module
        </button>
      </div>
      <div class="card-body table-responsive">




        <?php
      //  $sql_query1 =  mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level !='job-seeker' || !='recruiter' || !='admin'  ORDER BY id");
       $sql_query1 =  mysqli_query($dbc,"SELECT * FROM staff_users ORDER BY id");

        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

       <table class="table table-striped table-bordered table-hover" id="invoice-received-table"  style="width:100%">

         <thead>
           <tr>
             <td>#</td>
             <td>Company Logo</td>
             <td>Company Details</td>
             <td>Industry</td>
              <td>Email</td>
             <td>Module Name</td>
             <td>Date Sold</td>
             <td>Payment Gateway</td>

          <!--   <td>Status</td> -->
           </tr>
         </thead>
         <?php
         $no = 1;
          $sql = mysqli_query($dbc,"SELECT * FROM staff_users ORDER BY id DESC");
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
           <td>  <?php echo $row['lName'] ;?>

           </td>
           <td>  <?php echo $row['Email'] ;?>

           </td>
           <td>  <?php echo $row['access_level'] ;?>

           </td>
           <td>  <?php echo $row['date_recorded'] ;?>

           </td>
           <td>  Mpesa

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
</div>

<?php
}
else
{
      ?>
    <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No Module Sold</strong>
</div>

  <?php
}
?>


<!-- add sell module modal -->

<div class="modal fade" id="sell-a-modal">
<div class="modal-dialog modal-lg modal-dialog-scrollable" role="document">
  <div class="modal-content">
    <div class="modal-header alert alert-success">

      <h5 class="modal-title">Sell a Module To a Company</h5>
      <button type="button" class="close" data-dismiss="modal" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="modal-body">
      <form id="add-module-sell-form" class="mt-4" enctype="multipart/form-data">
        <input type="hidden" value="sell-a-module" name="sell-a-module">
          <input type="hidden" value="recruiter" name="recruiter">

      <!-- start of row -->
          <div class="row border-bottom mx-4">
      <div class="col-lg-12 col-xs-12 form-group">
      <label><span class="required">*</span>Select Module Name</label>
      <?php
      $result2 = mysqli_query($dbc, "SELECT * FROM sell_module ORDER BY id ASC");
      echo '
      <select name="module_name" data-tags="true" class="select2 form-control" data-placeholder="Select Module name" required>
      <option></option>';
      while($row = mysqli_fetch_array($result2)) {
          echo '<option value="'.$row['access_level'].'">'.$row['module_name']."</option>";
      }
      echo '</select>';
      ?>
      </div>
    </div>
                <div class="row border-bottom mx-4">
            <div class="col-lg-3 col-xs-12 form-group">
                <label><span class="required">*</span>Company Name</label>
                  <input type="text" autocomplete="off" class="select2 form-control" name="cName">
            </div>
            <div class="col-lg-3 col-xs-12 form-group">
            <label><span class="required">*</span>Industry</label>
            <?php
            $result2 = mysqli_query($dbc, "SELECT * FROM industry ORDER BY id ASC");
            echo '
            <select name="industry_name" data-tags="true" class="select2 form-control" data-placeholder="Select Industry" required>
            <option></option>';
            while($row = mysqli_fetch_array($result2)) {
                echo '<option value="'.$row['industry_name'].'">'.$row['industry_name']."</option>";
            }
            echo '</select>';
            ?>
            </div>

          <div class="col-lg-3 col-xs-12 form-group">
            <label> <span class="required">*</span> Date Of Registration</label>
            <div class="input-group mb-2 mr-sm-2">
              <div class="input-group-prepend">
                <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
              </div>
              <input type="text" class="form-control project_start_date" autocomplete="off" name="dob" required>
            </div>
          </div>
          <div class="col-lg-3 col-xs-12 form-group">
              <label><span class="required">*</span>Country</label>
                <input type="text" autocomplete="off" class="select2 form-control"  name="nationality">
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
            <label><span class="required">*</span>No Of Employees</label>
            <?php
            $result2 = mysqli_query($dbc, "SELECT * FROM employee_no ORDER BY id ASC");
            echo '
            <select name="emp_no" data-tags="true" class="select2 form-control" data-placeholder="Select No oF Employees" required>
            <option></option>';
            while($row = mysqli_fetch_array($result2)) {
                echo '<option value="'.$row['emp_no'].'">'.$row['emp_no']."</option>";
            }
            echo '</select>';
            ?>
            </div>

</div>
            <div class="row border-bottom mx-4">

              <div class="col-lg-3 col-xs-12 form-group">
              <label><span class="required">*</span>Type Of Employer</label>
              <?php
              $result2 = mysqli_query($dbc, "SELECT * FROM company_type ORDER BY id ASC");
              echo '
              <select name="emp_type" data-tags="true" class="select2 form-control" data-placeholder="Select Employer Type" required>
              <option></option>';
              while($row = mysqli_fetch_array($result2)) {
                  echo '<option value="'.$row['com_type'].'">'.$row['com_type']."</option>";
              }
              echo '</select>';
              ?>
              </div>
              <div class="col-lg-6 col-xs-12 form-group">
              <label><span class="required">*</span>Where did you hear about us</label>
              <?php
              $result2 = mysqli_query($dbc, "SELECT * FROM hear_about_us ORDER BY id ASC");
              echo '
              <select name="about_us_name" data-tags="true" class="select2 form-control" data-placeholder="Select Industry" required>
              <option></option>';
              while($row = mysqli_fetch_array($result2)) {
                  echo '<option value="'.$row['about_us_name'].'">'.$row['about_us_name']."</option>";
              }
              echo '</select>';
              ?>
              </div>
              <div class="col-lg-3 col-xs-12 form-group">
                  <label><span class="required">*</span>website URL</label>
                    <input type="text" autocomplete="off" class="select2 form-control"  name="web_url" placeholder="(start with https://)">
              </div>


</div>

<div class="row border-bottom mx-4">

<div class="col-lg-6 col-xs-12 form-group">
<label for="password">Default Password
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
<!-- end of recruiter modal -->
