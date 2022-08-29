<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
?>
<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
       <li class="breadcrumb-item active" aria-current="page">Admin Portal : Users List</li>
     </ol>
</nav>

<ul class="nav nav-fill nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active database_users_tab" data-toggle="pill" href="#database_users_tab" role="tab"  aria-selected="true">User Management</a>
  </li>
  <li class="nav-item" style="cursor:pointer;">
    <a class="nav-link ldap_users_tab" data-toggle="pill" href="#ldap_users_tab" role="tab"  aria-selected="false">Company Management</a>
  </li>
</ul>

<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="database_users_tab" role="tabpanel">
    <div class="row">
        <div class="col-md-12">
            <div class="card">

                <div class="card-body table-responsive">
                                   <?php
                  $sql_query = mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level!='recruiter'  ORDER BY fName ASC");
                  $number = 1;
                  if($total_rows = mysqli_num_rows($sql_query) > 0)
                  {?>
                  <table class="table table-striped table-hover staff-users-table" >
                    <thead>
                      <tr>
                        <td>NO</td>
                        <td>Employee No</td>
                        <td>First Name</td>
                        <td>last Name</td>
                        <td>Email</td>
                        <td>Location</td>
                        <td>contact</td>
                        <td>Nationality</td>
                        <td>Qualification</td>
                        <td>Current Position</td>
                        <td>Company Name</td>
                        <td>Experience</td>
                        <td>Status</td>
                        <td>Access Level</td>
                      </tr>
                    </thead>
                    <?php
                    while($row = mysqli_fetch_array($sql_query))
                    {
                      if($row['status'] == 'deactivated')
                      {
                        $class_suspended = 'bg-danger';
                      }
                      else
                      {
                        $class_suspended ='';
                      }

                      ?>
                    <tr style="cursor: pointer;" class="<?php echo $class_suspended;?>">
                      <td><?php echo $number++;?></td>
                      <td>
                        <button type="button" class="btn btn-link"
                                data-toggle="modal"
                                data-target="#edit-user-modal-<?php echo $row['id'];?>">

                                <?php echo $row['id'];?>
                        </button>
                      </td>


                      <td><?php echo $row['fName'];?></td>
                      <td><?php echo $row['lName'];?></td>
                      <td><?php echo $row['Email'];?></td>
                      <td><?php echo $row['location'];?></td>
                      <td><?php echo $row['contact'];?></td>
                      <td><?php echo $row['nationality'];?></td>

                      <td><?php echo $row['highestQualification'];?></td>
                      <td><?php echo $row['currentPosition'];?></td>
                      <td><?php echo $row['companyName'];?></td>
                      <td><?php echo $row['experience'];?></td>
                      <td><?php echo $row['status'];?></td>
                      <td><?php echo $row['access_level'];?></td>


                        <div class="modal fade" id="edit-user-modal-<?php echo $row['id']; ?>" role="dialog" aria-hidden="true">
                          <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title">Edit User</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                              <form id="update-user-settings2-form-<?php echo $row['id'];?>">
                                 <div class="row">
                                    <div class="col-md-12 col-xs-12">
                                       <div class="row">
                                         <div class="col-lg-6 col-xs-12 form-group">
         <label for="emp_no">Employee No</label>
         <input type="text" class="form-control" name="id" id="id-<?php echo $row['id'];?>" value="<?php echo $row['id'];?>" readonly="true">
      </div>
                                          <div class="col-lg-6 col-xs-12 form-group">
                                             <label for="email">Email</label>
                                             <input type="text" class="form-control" name="email" id="email-<?php echo $row['id'];?>" value="<?php echo $row['Email'];?>" readonly="true">
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                                 <!-- /.end row programme status -->
                                 <!-- start row -->
                                 <div class="row">

                                    <div class="col-lg-6 col-xs-12 form-group">
                                       <label for="access_level">Access Level</label>
                                       <select class="select2 form-control" name="access_level" id="access_level-<?php echo $row['id'];?>">
                                          <option value="<?php echo $row['access_level'];?>" selected><?php echo $row['access_level'];?></option>
                                            <option value="admin">Admin</option>
                                          <option value="superuser">SUPERUSER</option>
                                          <option value="recruiter">recruiter</option>
                                          <option value="job-seeker">job-seeker</option>

                                       </select>
                                    </div>
                                    <div class="col-lg-6 col-xs-12 form-group">
                                       <label for="status">Status</label>
                                       <select class="select2 form-control" name="status" id="status-<?php echo $row['id'];?>">
                                          <option value="<?php echo $row['status'];?>" selected><?php echo $row['status'];?></option>
                                          <option value="active">Activate</option>
                                          <option value="deactivated">Deactivate</option>
                                       </select>
                                    </div>
                                 </div>
                                 <!-- end row  -->
                                 <!-- start row button -->
                                 <div class="row">
                                    <div class="col-md-12 text-center">
                                       <button type="submit" class="btn btn-primary btn-block" onclick="EditUser('<?php echo $row['id'];?>');">SUBMIT</button>
                                    </div>
                                 </div>
                                 <!-- end row button -->
                              </form>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                              </div>
                            </div>
                          </div>
                        </div>
                        <!-- end of edit user modal -->

                    </tr>
                    <?php
                    }
                    ?>

                  </table>
                  <?php
                  }
                  ?>
                </div>
            </div>
        </div>
    </div>
  </div>
<!--- company management databases -->
<div class="tab-pane fade" id="ldap_users_tab" role="tabpanel">
  <div class="row">
      <div class="col-md-12">
          <div class="card">

              <div class="card-body table-responsive">
                <?php
$sql_query = mysqli_query($dbc,"SELECT * FROM staff_users WHERE access_level='recruiter'  ORDER BY fName ASC");
$number = 1;
if($total_rows = mysqli_num_rows($sql_query) > 0)
{?>
<table class="table table-striped table-hover staff-users-table" >
 <thead>
   <tr>
     <td>NO</td>
     <td>Company No</td>
     <td>Company Name</td>
     <td>Industry</td>
     <td>Email</td>
     <td>Location</td>
     <td>Contact</td>
     <td>Nationality</td>
     <td>Company Size</td>
     <td>Company Type</td>
     <td>Company Name</td>
     <td>Website</td>
     <td>Status</td>
     <td>Access Level</td>
   </tr>
 </thead>
 <?php
 while($row = mysqli_fetch_array($sql_query))
 {
   if($row['status'] == 'deactivated')
   {
     $class_suspended = 'bg-danger';
   }
   else
   {
     $class_suspended ='';
   }

   ?>
 <tr style="cursor: pointer;" class="<?php echo $class_suspended;?>">
   <td><?php echo $number++;?></td>
   <td>
     <button type="button" class="btn btn-link"
             data-toggle="modal"
             data-target="#edit-user-modal-<?php echo $row['id'];?>">

             <?php echo $row['id'];?>
     </button>
   </td>


   <td><?php echo $row['fName'];?></td>
   <td><?php echo $row['lName'];?></td>
   <td><?php echo $row['Email'];?></td>
   <td><?php echo $row['location'];?></td>
   <td><?php echo $row['contact'];?></td>
   <td><?php echo $row['nationality'];?></td>

   <td><?php echo $row['highestQualification'];?></td>
   <td><?php echo $row['currentPosition'];?></td>
   <td><?php echo $row['companyName'];?></td>
   <td><?php echo $row['experience'];?></td>
   <td><?php echo $row['status'];?></td>
   <td><?php echo $row['access_level'];?></td>

   <div class="modal fade" id="edit-user-modal-<?php echo $row['id']; ?>" role="dialog" aria-hidden="true">
     <div class="modal-dialog modal-lg" role="document">
       <div class="modal-content">
         <div class="modal-header">
           <h5 class="modal-title">Edit User</h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
         <form id="update-user-settings2-form-<?php echo $row['id'];?>">
            <div class="row">
               <div class="col-md-12 col-xs-12">
                  <div class="row">
                    <div class="col-lg-6 col-xs-12 form-group">
<label for="emp_no">Employee No</label>
<input type="text" class="form-control" name="id" id="id-<?php echo $row['id'];?>" value="<?php echo $row['id'];?>" readonly="true">
</div>
                     <div class="col-lg-6 col-xs-12 form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" name="email" id="email-<?php echo $row['id'];?>" value="<?php echo $row['Email'];?>" readonly="true">
                     </div>
                  </div>
               </div>
            </div>
            <!-- /.end row programme status -->
            <!-- start row -->
            <div class="row">

               <div class="col-lg-6 col-xs-12 form-group">
                  <label for="access_level">Access Level</label>
                  <select class="select2 form-control" name="access_level" id="access_level-<?php echo $row['id'];?>">
                     <option value="<?php echo $row['access_level'];?>" selected><?php echo $row['access_level'];?></option>
                     <option value="superuser">SUPERUSER</option>
                     <option value="recruiter">recruiter</option>
                     <option value="job-seeker">job-seeker</option>

                  </select>
               </div>
               <div class="col-lg-6 col-xs-12 form-group">
                  <label for="status">Status</label>
                  <select class="select2 form-control" name="status" id="status-<?php echo $row['id'];?>">
                     <option value="<?php echo $row['status'];?>" selected><?php echo $row['status'];?></option>
                     <option value="active">active</option>
                     <option value="deactivated">deactivated</option>
                  </select>
               </div>
            </div>
            <!-- end row  -->
            <!-- start row button -->
            <div class="row">
               <div class="col-md-12 text-center">
                  <button type="submit" class="btn btn-primary btn-block" onclick="EditUser('<?php echo $row['id'];?>');">SUBMIT</button>
               </div>
            </div>
            <!-- end row button -->
         </form>
         </div>
         <div class="modal-footer">
           <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
         </div>
       </div>
     </div>
   </div>
   <!-- end of edit user modal -->

 </tr>
 <?php
 }
 ?>

</table>
                <?php
                }
                ?>
              </div>
          </div>
      </div>
  </div>
</div>
</div>
