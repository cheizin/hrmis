<?php
session_start();
include("controllers/setup/connect.php");
require_once("assets/libs/BrowserDetection/lib/BrowserDetection.php");

require_once("controllers/auth/auth.php");

$about_me =  mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email']."'"));

$emp_details = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM employment_history WHERE email ='".$_SESSION['email']."'"));

//get browser  type, exit if internet explore
$http_origin = "https://www.hrmis.wisegeneration.co.ke/";
/*
if ($http_origin == "https://Pan.cma.or.ke" || $http_origin == "https://va.tawk.to" || $http_origin == "http://tawk.link/")
{
    header("Access-Control-Allow-Origin: $http_origin");
}
*/
$browser = new Wolfcast\BrowserDetection();
$browser_name = $browser->getName();
if($browser_name == "Internet Explorer")
{
  $message = '<blockquote class="blockquote">
                <h4></h4>
                Please re-start the application using
                <strong><i class="fab fa-firefox-browser"></i> Mozilla Firefox </strong> or
                <strong><i class="fab fa-chrome"></i> Google Chrome </strong>
                for maximum experience and system compatibilty.
              </blockquote>';

  exit($message);
}

 ?>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title id="current-title">HRMIS SYSTEM </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="assets/fonts/fontawesome-pro-5.12.0/css/all.min.css">
  <link rel="stylesheet" href="assets/css/font-awesome-animation.css">
  <!-- Ionicons 2.0.1-->
  <link rel="stylesheet" href="assets/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- sweetalert -->
  <link rel="stylesheet" href="assets/css/sweetalert2@9.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="assets/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="assets/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="assets/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="assets/plugins/summernote/summernote-bs4.css">
  <!-- Datatables-->
  <link rel="stylesheet" type="text/css" href="assets/libs/datatables/datatables.min.css"/>
  <!-- Hover-->
  <link rel="stylesheet"  href="assets/css/hover.css"/>
    <!-- Animate-->
  <link rel="stylesheet"  href="assets/css/animate.css"/>
  <!--placeholder-->
  <link rel="stylesheet" href="assets/libs/placeholder/placeholder-loading.min.css">

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700">
  <!--Jquery UI -->
  <link href="assets/css/jquery-ui.css" rel="Stylesheet"type="text/css"/>
  <!-- Date Picker -->
  <link rel="stylesheet" href="assets/css/datepicker.min.css">
<!-- News like simpleticker -->
  <link rel="stylesheet" href="assets/libs/jquery.simpleTicker/jquery.simpleTicker.css">

  <!--roadmap -->
  <link rel="stylesheet" href="assets/libs/roadmap/dist/jquery.roadmap.min.css">

  <!-- gantt -->
  <link rel="stylesheet" href="assets/libs/gantt/css/style.css">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-material-ui@3.2.0/material-ui.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>

  <!-- CSS -->
  <link href="assets/libs/smartwizard/smart_wizard_all.css" rel="stylesheet" type="text/css" />

  <!-- select2 css ver @4.0.12 -->
  <link href="assets/css/select2.min.css" rel="stylesheet" />
  <!-- select2-bootstrap4-theme -->
<link href="assets/css/select2-bootstrap4.css" rel="stylesheet">
<!--chart -->
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/morris.js/0.5.1/morris.css">

<link rel="stylesheet" href="assets/libs/animated-event-calendar/dist/simple-calendar.css">
  <!-- custom css -->
  <link rel="stylesheet" href="assets/css/custom.css?v=9">

  <!-- Andoird css -->
  <link rel="stylesheet" href="assets/css/android.css">
  <!-- title icon -->
  <link rel="icon" href="assets/img/logo2.png" type="image/x-icon" />
</head>
<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
<div class="wrapper" style="border:0; padding:0;">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light" style="background-color: rgb(67,148,67);">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link text-light" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
      </li>
      <li class="nav-item d-none d-sm-inline-block">
        <a href="#" onclick="location.reload();" class="nav-link text-light"><i class="fas fa-house"></i> Home</a>
      </li>

      <li class="nav-item d-none d-sm-inline-block">
        <input type="hidden" id="days_remaining" value="<?php echo $deadline_message;?>">
        <a href="#" class="nav-link days_remaining" style="color: white;font-weight:bold;"></a>
      </li>
    </ul>
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto" id="dynamic-navbar"></ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#"  style="background-color: rgb(67,148,67);" class="brand-link" data-toggle="tooltip" data-placement="bottom" title="HRMIS System System">
      <img src="assets/img/logo2.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-weight-light"><b>HRMIS System</b></span>
    </a>

    <!-- Sidebar -->
    <!-- IF USER IS NOT LOGGED IN, DISPLAY LOGIN SIDEBAR, ELSE, DISPLAY FULL SIDEBAR -->
    <?php
    if(!isset($_SESSION['email']))
    {
      ?>
      <div class="sidebar">



        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column nav-compact" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->
            <li class="nav-item has-treeview menu-open">
              <li class="nav-item">
                <a href="#" class="nav-link" onclick="location.reload();">
                  <i class="nav-icon far fa-sign-in"></i>
                  <p>Login</p>
                </a>
              </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column nav-compact" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
                 with font-awesome or any other icon font library -->
            <li class="nav-item has-treeview menu-open">
              <li class="nav-item">
                <a href="#" class="nav-link user-selection-link">
                  <i class="nav-icon far fa-sign-in"></i>
                  <p>Sign Up</p>
                </a>
              </li>
          </ul>
        </nav>
      </div>
      <!-- /.sidebar -->
      <?php
    }
    else
    {
    ?>
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
        <div class="image">
          <?php
          $profile_pic = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$_SESSION['email']."'"));
          if(isset($_SESSION['profile_picture']))
          {
            ?>
          <img src="data:image/jpeg;base64,<?php echo base64_encode($_SESSION['profile_picture']); ?>" class="img-circle elevation-2" alt="User Image">
            <?php
          }
          else
          {
            ?>
            <img src="assets/img/<?php echo $profile_pic['emp_photo']; ?>" class="img-circle elevation-2" alt="User Image">
            <?php
          }


           ?>

        </div>
        <div class="info">
          <a href="#" class="d-block user-profile-link"><?php echo $_SESSION['fName'] ;?> <?php echo $profile_pic['lName']; ?> </br>
          <b>     <?php echo $profile_pic['access_level'];?> Level</b>  </br>
             <?php echo $profile_pic['highestQualification'];?>  </br><?php echo $profile_pic['companyName'];?></a>

        </div>
      </div>

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column nav-compact nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item has-treeview menu-open">
            <li class="nav-item mb-1">
              <a href="#" class="nav-link active" onclick="location.reload();">
                <i class="nav-icon fal fa-house"></i>
                <p>
                  HOME
                </p>
              </a>
            </li>

            <?php
            if($_SESSION['access_level'] == 'employee'  || $_SESSION['access_level'] == 'PERSONELL_MANAGEMENT' || $_SESSION['access_level'] == 'admin'  )
            {
             ?>
             <li class="nav-item personell-management-navbar d-none">
               <a href="#" class="nav-link personell-link">
                 <i class="nav-icon fas fa-tachometer-alt-fast text-success"></i>
                 <p>
                  Personell List
                 </p>
               </a>
             </li>
             <?php
            }
            if($_SESSION['access_level'] == 'employee'  || $_SESSION['access_level'] == 'RECRUITMENT_MANAGEMENT' || $_SESSION['access_level'] == 'admin'  )
            {

            ?>
            <li class="nav-item rec-management-navbar d-none">
              <a href="#" class="nav-link rec-link">
                <i class="nav-icon fas fa-tachometer-alt-fast text-success"></i>
                <p>
                 Applicant List
                </p>
              </a>
            </li>
            <?php
              }
            if($_SESSION['access_level'] == 'trainee'  || $_SESSION['access_level'] == 'TRAINING_MANAGEMENT' || $_SESSION['access_level'] == 'admin')
            {
             ?>
             <li class="nav-item training-management-navbar d-none">
               <a href="#" class="nav-link training-link">
                 <i class="nav-icon fa fa-graduation-cap text-success"></i>
                 <p>
                  Trainee List
                 </p>
               </a>
             </li>

             <li class="nav-item training-management-navbar d-none" data-toggle="tooltip" title="Click To view End Product List">
              <a href="#" class="nav-link">
                <i class="nav-icon fa fa-shopping-basket text-success"></i>
                <p>
                   Scheduler
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item training-management-navbar d-none">
                   <a href="schedule/index.php" target="_blank" class="nav-link">
                    <i class="fas fa-angle-double-right"></i>
                    <p>Schedule Training</p>
                  </a>
                </li>
                <li class="nav-item training-management-navbar d-none">
                  <a href="#" class="nav-link assigned-stud-link">
                    <i class="fas fa-angle-double-right"></i>
                    <p>Assign Training</p>
                  </a>
                </li>

              </ul>
            </li>
            <li class="nav-item training-management-navbar d-none" data-toggle="tooltip" title="Click To view Budget List">
             <a href="#" class="nav-link">
                 <i class="nav-icon fa fa-credit-card text-success"></i>
                 <p>
                Budget

                  <i class="right fas fa-angle-left"></i>
                 </p>
               </a>

               <ul class="nav nav-treeview">
                 <li class="nav-item training-management-navbar d-none">
                  <a href="#" class="nav-link whole-bud-link">
                     <i class="fas fa-angle-double-right"></i>
                     <p>Course Budgetry</p>
                   </a>
                 </li>

               </ul>
             </li>


             <li class="nav-item training-management-navbar d-none" data-toggle="tooltip" title="Click To view Budget List">
              <a href="#" class="nav-link">
                  <i class="nav-icon fad fa-comment-alt-edit text-success"></i>
                  <p>
              Training Session

                   <i class="right fas fa-angle-left"></i>
                  </p>
                </a>

                <ul class="nav nav-treeview">
                  <li class="nav-item training-management-navbar d-none">
                   <a href="#" class="nav-link create-test-link2">
                      <i class="fas fa-angle-double-right"></i>
                      <p>Create Quiz</p>
                    </a>
                  </li>
                  <li class="nav-item training-management-navbar d-none">
                   <a href="#" class="nav-link response-test-link2">
                      <i class="fas fa-angle-double-right"></i>
                      <p>View Response</p>
                    </a>
                  </li>

                  <li class="nav-item training-management-navbar d-none">
                   <a href="#" class="nav-link whole-bud-link">
                      <i class="fas fa-angle-double-right"></i>
                      <p>Feedback Form</p>
                    </a>
                  </li>

                </ul>
              </li>
             <?php
            }


            ?>

            <?php
            if($_SESSION['access_level'] == 'leave'  || $_SESSION['access_level'] == 'TRAINING_MANAGEMENT' || $_SESSION['access_level'] == 'admin')
            {
             ?>
             <li class="nav-item leave-management-navbar d-none">
               <a href="#" class="nav-link leave-link">
                 <i class="nav-icon fa fa-graduation-cap text-success"></i>
                 <p>
                  Leave List
                 </p>
               </a>
             </li>

             <li class="nav-item leave-management-navbar d-none" data-toggle="tooltip" title="Click To view End Product List">
              <a href="#" class="nav-link">
                <i class="nav-icon fa fa-shopping-basket text-success"></i>
                <p>
                   Leave Scheduler
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item leave-management-navbar d-none">
                   <a href="leaveSchedule/index.php" target="_blank" class="nav-link">
                    <i class="fas fa-angle-double-right"></i>
                    <p>Leave Plan</p>
                  </a>
                </li>
                <li class="nav-item leave-management-navbar d-none">
                  <a href="#" class="nav-link assigned-stud-link">
                    <i class="fas fa-angle-double-right"></i>
                    <p>Leave Applied</p>
                  </a>
                </li>

              </ul>
            </li>
            <!--
            <li class="nav-item leave-management-navbar d-none" data-toggle="tooltip" title="Click To view Budget List">
             <a href="#" class="nav-link">
                 <i class="nav-icon fa fa-credit-card text-success"></i>
                 <p>
                Leave Allowance

                  <i class="right fas fa-angle-left"></i>
                 </p>
               </a>

               <ul class="nav nav-treeview">
                 <li class="nav-item leave-management-navbar d-none">
                  <a href="#" class="nav-link whole-bud-link">
                     <i class="fas fa-angle-double-right"></i>
                     <p>Leave Payment</p>
                   </a>
                 </li>

               </ul>
             </li>
           -->

             <li class="nav-item leave-management-navbar d-none" data-toggle="tooltip" title="Click To view Budget List">
              <a href="#" class="nav-link">
                  <i class="nav-icon fa fa-credit-card text-success"></i>
                  <p>
                 Leave Approvals

                   <i class="right fas fa-angle-left"></i>
                  </p>
                </a>

                <ul class="nav nav-treeview">
                  <li class="nav-item leave-management-navbar d-none">
                   <a href="#" class="nav-link leave-link2">
                      <i class="fas fa-angle-double-right"></i>
                      <p>Pending Approval</p>
                    </a>
                  </li>

                </ul>
              </li>

              <li class="nav-item leave-management-navbar d-none" data-toggle="tooltip" title="Click To view Budget List">
               <a href="#" class="nav-link">
                   <i class="nav-icon fas fa-users-cog text-success"></i>
                   <p>
                  Leave Settings

                    <i class="right fas fa-angle-left"></i>
                   </p>
                 </a>

                 <ul class="nav nav-treeview">
                   <li class="nav-item leave-management-navbar d-none">
                    <a href="#" class="nav-link leave-settings">
                       <i class="fas fa-angle-double-right"></i>
                       <p>Management Settings</p>
                     </a>
                   </li>

                 </ul>
               </li>


             <?php
            }


            ?>


            <?php
            if($_SESSION['access_level'] == 'job-seeker')
            {
             ?>
               <li class="nav-item">
                 <a href="#" class="nav-link job-seeker-dashboard-link">
                   <i class="nav-icon fas fa-tachometer-alt-fast text-success"></i>
                   <p>
                     Dashboard
                   </p>
                 </a>
               </li>

               <li class="nav-item">
                 <a href="#" class="nav-link job-seeker-profile-link">
                   <i class="nav-icon fas fa-tachometer-alt-fast text-success"></i>
                   <p>
                    My Profile
                   </p>
                 </a>
               </li>



              <li class="nav-item" data-toggle="tooltip" title="Click To view End Product List">
               <a href="#" class="nav-link">
                 <i class="nav-icon fa fa-shopping-basket text-success"></i>
                 <p>
                    Job Application
                   <i class="right fas fa-angle-left"></i>
                 </p>
               </a>
               <ul class="nav nav-treeview">
                 <li class="nav-item">
                   <a href="#" class="nav-link post-vaccancy-link">
                     <i class="fas fa-angle-double-right"></i>
                     <p>Vaccancies Available</p>
                   </a>
                 </li>
                 <li class="nav-item">
                   <a href="#" class="nav-link jobs-applied-link">
                     <i class="fas fa-angle-double-right"></i>
                     <p>Jobs Applied</p>
                   </a>
                 </li>

               </ul>
             </li>


              <li class="nav-item" data-toggle="tooltip" title="Click To view End Product List">
               <a href="#" class="nav-link">
                 <i class="nav-icon fa fa-shopping-basket text-success"></i>
                 <p>
                     Supporting Documents
                   <i class="right fas fa-angle-left"></i>
                 </p>
               </a>
               <ul class="nav nav-treeview">
                 <li class="nav-item">
                   <a href="#" class="nav-link academic-docs-link">
                     <i class="fas fa-angle-double-right"></i>
                     <p>Academic Documents</p>
                   </a>
                 </li>


               </ul>
             </li>


          <li class="nav-item">
            <a href="#" class="nav-link reports-link">
              <i class="nav-icon fas fa-file-chart-line text-success"></i>
              <p>
                Reports
              </p>
            </a>
          </li>


                     <?php
                    }


                    ?>


                                <?php
                                if($_SESSION['access_level'] == 'recruiter')
                                {
                                 ?>
                                   <li class="nav-item">
                                     <a href="#" class="nav-link recruiter-dashboard-link">
                                       <i class="nav-icon fas fa-tachometer-alt-fast text-success"></i>
                                       <p>
                                         Dashboard
                                       </p>
                                     </a>
                                   </li>


                                   <li class="nav-item has-treeview border-top" data-toggle="tooltip" title="Click To add, view and update Stock Item">
                                    <a href="#" class="nav-link">
                                      <i class="nav-icon fas fa-database text-success"></i>

                                      <p>
                                        Job Posting
                                        <i class="right fas fa-angle-left"></i>
                                      </p>
                                    </a>
                                    <ul class="nav nav-treeview">
                                      <li class="nav-item">
                                        <a href="#" class="nav-link all-post-vaccancy-link">
                                          <i class="fas fa-angle-double-right"></i>
                                          <p>My Job Post</p>
                                        </a>
                                      </li>

                                      <li class="nav-item">
                                        <a href="#" class="nav-link all-saved-candidates-link">
                                          <i class="fas fa-angle-double-right"></i>
                                          <p>View All Candidates</p>
                                        </a>
                                      </li>
                                    </ul>
                                  </li>

                                  <li class="nav-item" data-toggle="tooltip" title="Click To view End Product List">
                                   <a href="#" class="nav-link">
                                     <i class="nav-icon fa fa-shopping-basket text-success"></i>
                                     <p>
                                         Supporting Documents
                                       <i class="right fas fa-angle-left"></i>
                                     </p>
                                   </a>
                                   <ul class="nav nav-treeview">
                                     <li class="nav-item">
                                       <a href="#" class="nav-link academic-docs-link">
                                         <i class="fas fa-angle-double-right"></i>
                                         <p>Academic Documents</p>
                                       </a>
                                     </li>


                                   </ul>
                                 </li>


                              <li class="nav-item">
                                <a href="#" class="nav-link recruiter-reports-link">
                                  <i class="nav-icon fas fa-file-chart-line text-success"></i>
                                  <p>
                                    Reports
                                  </p>
                                </a>
                              </li>


                                         <?php
                                        }


                                        ?>



          <?php
          if($_SESSION['access_level'] == 'admin')
          {
           ?>
           <li class="nav-item has-treeview border-top">
                      <a href="#" class="nav-link">
                        <i class="nav-icon fad fa-user-shield text-success"></i>
                        <p>
                          Admin Portal
                          <i class="right fas fa-angle-left"></i>
                        </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
  <a href="#" class="nav-link admin-user-management-link">
    <i class="nav-icon fad fa-users-cog"></i>
    <p>User Management</p>
  </a>
</li>
                        <li class="nav-item">
                          <a href="#" class="nav-link create-test-link">
                            <i class="nav-icon fad fa-users-cog"></i>
                            <p>Create Test</p>
                          </a>
                        </li>

                        <li class="nav-item">
                          <a href="#" class="nav-link response-test-link">
                            <i class="nav-icon fad fa-users-cog"></i>
                            <p>View Test Response</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link all-saved-candidates-link">
                            <i class="nav-icon fad fa-comment-alt-edit"></i>
                            <p>Create Application Request</p>
                          </a>
                        </li>

                        <li class="nav-item">
                          <a href="#" class="nav-link sell-module-link">
                            <i class="nav-icon fad fa-comment-alt-edit"></i>
                            <p>Sell a Module</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link admin-logs-link">
                            <i class="nav-icon fal fa-history"></i>
                            <p>Logs</p>
                          </a>
                        </li>

                        <li class="nav-item">
                          <a href="#" class="nav-link user-feedback-link">
                            <i class="nav-icon fad fa-comment-alt-edit"></i>
                            <p>User Feedback</p>
                          </a>
                        </li>
                        <li class="nav-item">
                          <a href="#" class="nav-link system-info-link">
                            <i class="nav-icon fab fa-windows"></i>
                            <p>System Information</p>
                          </a>
                        </li>
            </ul>
          </li>

           <?php
          }


          ?>


        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
    <?php
    }
   ?>
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" style="background-image: url('assets/img/logo.png');   background-repeat: no-repeat;
background-size: 100% 100%;" style="min-width:1100px">
    <!-- Content Header (Page header) -->
    <div class="content-header" style="padding:12px">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-12">

          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
          <div id="response-data" style="width:100%">

            <?php
            if(isset($_SESSION['email']))
            {
              ?>

              <?php
                   if($_SESSION['access_level'] == 'job-seeker')
                   {
                     ?>

              <body onload="loadProfile()">
                <?php
              }

               if($_SESSION['access_level'] == 'recruiter')
              {
                   ?>
                   <nav aria-label="breadcrumb">
                         <ol class="breadcrumb">
                           <li class="breadcrumb-item active" aria-current="page">
                               <i class="far fa-user-plus"></i> <b>Welcome Company <?php echo $_SESSION['fName']; ?></b>
                      </li>

                         </ol>
                     </nav>
                   <!-- Profile Image -->
                   <div class="card card-primary card-outline col-md-12 mr-12 ml-8">
                     <div class="card-body box-profile">
                       <div class="float-left">
                         <?php

                         $profile_pic = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$_SESSION['email']."'"));
                         ?>

                           <img class="profile-user-img img-fluid img-circle"
                                src="assets/img/<?php echo $profile_pic['emp_photo']; ?>"
                                alt="User profile picture">


                       </div>




                   <div class="row border-bottom mx-5">
                   <div class="col-lg-2 col-xs-8 form-group">
                   Company Name: <input type="text" class="form-control" name="Name" value="<?php echo $profile_pic['fName'];?>" readonly="readonly">

                   </div>
                   <div class="col-lg-2 col-xs-8 form-group">
                   Industry: <input type="text" class="form-control" name="Name" value="<?php echo $profile_pic['lName'];?>" readonly="readonly">

                   </div>

                   <div class="col-lg-2 col-xs-8 form-group">
                   Contact: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['contact'];?>" readonly="readonly">

                   </div>
                   <div class="col-lg-2 col-xs-8 form-group">
                   Location: <input type="text" class="form-control" name="staff_users_id" value="<?php echo $profile_pic['location'];?>" readonly="readonly">

                   </div>

                   <div class="col-lg-3 col-xs-8 form-group">
                   Date of Registration: <input type="text" class="form-control" name="end_ts" value="<?php echo $profile_pic['dob'];?>" readonly="readonly">

                   </div>
                   <div class="col-lg-2 col-xs-8 form-group">
                   Country <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['nationality'];?>" readonly="readonly">

                   </div>
                   <div class="col-lg-3 col-xs-8 form-group">
                   Email: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['Email'];?>" readonly="readonly">

                   </div>
                   <div class="col-lg-2 col-xs-8 form-group">
                   No Of Employees: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['highestQualification'];?>" readonly="readonly">

                   </div>

                   <div class="col-lg-3 col-xs-8 form-group">
                   Web url: <input type="text" class="form-control" name="start_ts" value="<?php echo $profile_pic['experience'];?>" readonly="readonly">

                   </div>


                   </div>
                   <hr style="border-top: 1px dashed #8c8b8b;">
                   <b>About Company</b>

                   <?php
                   //$sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email'].");


                   $sql_query1 =  mysqli_query($dbc,"SELECT * FROM about_me WHERE email ='".$_SESSION['email']."'");
                   $number = 1;
                   if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
                   {?>

                   <br/>

                   <?php echo $about_me['about_me'];?>

                   <?php
                   }
                   else
                   {
                   ?>

                   <button class="btn btn-link" style="float:right;"
                   data-toggle="modal" data-target="#add-about-me-modal">
                   <i class="fa fa-plus-"></i> Add More Information About the company
                   </button>

                   <?php
                   }
                   ?>


                   <!-- start add end product modal -->
                   <div class="modal fade" id="add-about-me-modal" role="dialog">
                   <div class="modal-dialog" role="document">
                   <div class="modal-content">
                   <div class="modal-header alert alert-success">

                   <h5 class="modal-title">Adding Information About the company
                   <span class="font-weight-bold"></h5>
                   <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                   <span aria-hidden="true">&times;</span>
                   </button>
                   </div>
                   <div class="modal-body">
                   <form id="add-about-me">

                   <input type="hidden" name="add-about-me" value="add-about-me">
                    <input type="hidden" name="email" value ="<?php echo $_SESSION['email'];?>" >

                   <!-- start of row -->

                      <div class="row">

                                    <div class="col-lg-12 col-xs-12 form-group">
                                        <label for="item_name"><span class="required">*</span>About Me</label>

                                          <textarea name="about_me" class="form-control" required></textarea>

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



                   </div>
                   </div>




                       <!--<a href="#" class="btn btn-primary btn-block"><b>Follow</b></a>-->
                     </div>
                     <!-- /.card-body -->
                   </div>
                   <!-- /.card -->

                <?php
              }
              ?>


                                 <div class="row module-panel">
                                     <!-- /.col -->
                                     <?php

                                    if($_SESSION['access_level'] == 'admin' || $_SESSION['access_level'] == 'RECRUITMENT_MANAGEMENT' )
                                     {
                                          ?>
                                          <div class="col-md-4 col-xs-12 recruitment-management-module admin-recruitment-link">
                                            <div class="card text-center card-success card-outline">
                                                <div class="card-header">
                                                <b>  Recruitment MANAGEMENT <img src="assets/img/project3.jpg" alt="" width="25" height="25"> </b>
                                                </div>
                                                <div class="card-body">
                                                  <a href="#" class="btn btn-success btn-lg btn-block">Manage Recruitment</a>
                                                </div>
                                              </div>
                                           </div>
                                      <?php
                                    }
                                    ?>

                                       <?php

                                     if($_SESSION['access_level'] == 'admin' || $_SESSION['access_level'] == 'PERSONELL_MANAGEMENT' || $_SESSION['access_level'] == 'employee'   )
                                      {
                                     ?>
                                     <div class="col-md-4 col-xs-12 personell-management-module">
                                       <div class="card text-center card-success card-outline">
                                           <div class="card-header">
                                           <b> Personell MANAGEMENT <img src="assets/img/performance.png" alt="" width="25" height="25"> </b>
                                           </div>
                                           <div class="card-body">
                                             <a href="#" class="btn btn-success btn-lg btn-block">Manage Personell</a>
                                           </div>
                                         </div>
                                      </div>
                                     <?php
                                     }
                                    if($_SESSION['access_level'] == 'admin' || $_SESSION['access_level'] == 'TRAINING_MANAGEMENT' || $_SESSION['access_level'] == 'trainee' || $_SESSION['access_level'] == 'trainer'  )
                                     {
                                          ?>
                                       <div class="col-md-4 col-xs-12 training-management-module">
                                         <div class="card text-center card-success card-outline">
                                             <div class="card-header">
                                             <b>  Training MANAGEMENT <img src="assets/img/performance.png" alt="" width="25" height="25"> </b>
                                             </div>
                                             <div class="card-body">
                                               <a href="#" class="btn btn-success btn-lg btn-block">Manage Training</a>
                                             </div>
                                           </div>
                                        </div>

                                        <?php
                                      }
                                      ?>

                                      <?php

                                     if($_SESSION['access_level'] == 'admin' || $_SESSION['access_level'] == 'LEAVE_MANAGEMENT' )
                                      {
                                           ?>
                                        <div class="col-md-4 col-xs-12 leave-management-module">
                                          <div class="card text-center card-success card-outline">
                                              <div class="card-header">
                                              <b>  Leave MANAGEMENT <img src="assets/img/performance.png" alt="" width="25" height="25"> </b>
                                              </div>
                                              <div class="card-body">
                                                <a href="#" class="btn btn-success btn-lg btn-block">Manage Leave</a>
                                              </div>
                                            </div>
                                         </div>

                                         <?php
                                       }
                                       ?>

                                        <?php

                                       if($_SESSION['access_level'] == 'admin' || $_SESSION['access_level'] == 'PAYROLL_MANAGEMENT' )
                                        {
                                             ?>

                                          <div class="col-md-4 col-xs-12 asset-management-module">
                                            <div class="card text-center card-success card-outline">
                                                <div class="card-header">
                                                <b>  Payroll MANAGEMENT <img src="assets/img/performance.png" alt="" width="25" height="25"> </b>
                                                </div>
                                                <div class="card-body">
                                                  <a href="#" class="btn btn-success btn-lg btn-block">MANAGE Payroll</a>
                                                </div>
                                              </div>
                                           </div>

                                           <?php
                                         }
                                         ?>

                                 </div>

                  <!-- /.col -->



              <?php
            }

            else
            {
             ?>
             <div class="row">
               <div class="col-md-4 offset-md-4">

                 <div class="card animated slideInLeft">

                   <form id="test-login-form">

                       <div class="card-header bg-light">
                        HRMIS System Log in
                       </div>


                       <div class="card-body">

                         <input type="text" autocomplete="on" id="email" name="email" class="form-control" maxlength="70" required placeholder="Enter Email">
                         <div class="row">
                           <br/>
                         </div>
                         <!--<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>-->

                           <div class="input-group add-on">
                             <input type="password" name="password" id="password" maxlength="40" class="form-control pwd"  required placeholder="Enter password">
                             <span class="input-group-btn">
                               <button class="btn btn-default reveal" type="button"><i class="fa fa-eye"></i></button>
                             </span>
                           </div>
                           <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>

                          <div class="card-footer text-right">
                            <button type="submit" class="btn btn-success btn-block"> Log in  </button>
                          </div>
                            <div class="or-seperator"><i>or</i></div>
                          <div class="text-center social-btn">
     <a class="btn btn-danger btn-block" href="<?php echo $_SESSION['authetication_url'];?>">Sign in with <i class="fab fa-google"></i>oogle </a>
     </div>
                     </form>
                     <div class="clearfix">
    <label class="pull-left checkbox-inline"><input type="checkbox"> Remember me</label>
    <button class="btn btn-link" style="float:right;"
    data-toggle="modal" data-target="#add-about-me-modal2">
   Forgot Password?
    </button>
</div>

<div class="hint-text small">Don't have an account? <a href="#" class="user-selection-link text-success">Register Now!</a></div>

<div class="text-center social-btn">
<a class="btn btn-success btn-block" href="assets/android/HRMIS.apk" target="_blank">
<small> Download <i class="fab fa-android fa-2x" aria-hidden="true"> </i>Android version 1.0</small></a>
</div>


</div>
    </div> <!-- form-group// -->
                 </div>
               </div>
                <div class="row activity-ticker rounded-pill" style="background:#343a40;">
                  <div class="text-light pl-2 font-weight-bold"> TODAY : </div>
                  <ul class="ml-5 list-unstyled pl-3">
                    <?php
                       //select todays activity logs
                        $today = date('Y/m/d');
                        $sql_today = mysqli_query($dbc,"SELECT * FROM activity_logs
                                                  WHERE (SUBSTRING(time_recorded,1,10) = '".$today."')
                                                  && Email!='Automated Script' ORDER BY id DESC ");
                        while($todays_logs = mysqli_fetch_array($sql_today))
                        {
                          $name = mysqli_fetch_array(mysqli_query($dbc,"SELECT fName FROM staff_users WHERE Email='".$todays_logs['email']."'"))
                          ?>
                            <li class="text-light">
                              <small><?php echo $name['fName'];?>
                              <?php echo $todays_logs['action_reference'];?>
                               (<i class="<?php echo $todays_logs['action_icon'] ;?>"></i>)
                             </small>
                             </li>
                          <?php
                        }
                     ?>
                   </ul>
                </div>
             <?php
            }
            ?>

          </div>
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <div class="modal fade" id="add-about-me-modal2" role="dialog">
  <div class="modal-dialog" role="document">
  <div class="modal-content">
  <div class="modal-header alert alert-success">

  <h5 class="modal-title">Change Password Form
  <span class="font-weight-bold"></h5>
  <button type="button" class="close" data-dismiss="modal" aria-label="Close">
  <span aria-hidden="true">&times;</span>
  </button>
  </div>
  <div class="modal-body">
    <form id="inventory-signup-form">
        <div class="card-header bg-light">
          HRMIS Change Password
        </div>
        <div class="card-body">
          <label for="email">Enter Your official Email address
             <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
             title="Your Name associated to your Windows account, i.e MUser" id="name_help"></i></label>
          <input type="text" autocomplete="on" id="email" name="email" class="form-control" maxlength="70" required placeholder="input your registered Email">
          <div class="row">
            <br/>
          </div>
          <!--<input type="password" id="password" name="password" class="form-control" placeholder="Password" required>-->
            <label for="password">Enter Password
              <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
              title="Your Password associated to your Windows account" id=""></i></label>
            <div class="input-group add-on">
              <input type="password" name="password" id="password" maxlength="40" class="form-control pwd"  required placeholder="input your password">

            </div>
            <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>
            <div class="row">

            </div>
            <label for="password">Confirm Password
              <i class="glyphicon glyphicon-info-sign" data-toggle="tooltip" data-placement="right"
              title="Your Password associated to your Windows account" id="password_help"></i></label>
            <div class="input-group add-on">
              <input type="password" id="confirm" name="confirm" maxlength="40" class="form-control pwd"  required placeholder="Confirm Your password">

            </div>
            <span class="text-info invisible" id="caps-lock">CAPS LOCK IS ON!</span>

           </div> <!-- form-group// -->
           <div class="card-footer text-right">
             <button type="submit" class="btn btn-primary btn-block submitting"> Change Password </button>
           </div>
      </form>
  </div>
  <div class="modal-footer">
   <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
  </div>
  </div>
  </div>
  </div>


  <footer class="main-footer">
    <strong>Copyright &copy; <?php echo date("Y");?> <a href="https://risksys.co.ke/" target="_blank"></a>.</strong>
    All rights reserved.

    <div class="float-right d-none d-sm-inline-block">
      <button type="button" class="btn btn-link" data-toggle="modal" data-target="#submit-feedback-modal">
        <i class="fas fa-comment-alt-edit"></i> Submit Feedback
      </button>

      <!-- User Feeback Modal -->
    <div class="modal fade" id="submit-feedback-modal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title">Please Let us know how you feel about the system</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <small class="text-muted mb-3">Your feedback will help us improve the system and serve you better</small><br/>
            <small class="text-muted mb-4"><i class="fad fa-user-secret"></i> (Your feedback will be anonymous)</small>
            <form id="user-feedback-form" class="mt-4">
              <div class="row">
                <div class="col-sm-12">
                    <textarea maxlength="1000" required class="form-control" name="user_feedback_message" placeholder="enter your feedback here"></textarea>
                </div>
              </div>
              <br/><br/>
              <div class="row">
                    <div class="col-sm-12 text-center">
                        <button type="submit" class="btn btn-primary btn-block" id="user-feedback-button">SUBMIT</button>
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

      <b>Version</b> 1.0
    </div>
  </footer>

</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="assets/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="assets/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="assets/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="assets/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="assets/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="assets/plugins/moment/moment.min.js"></script>
<script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="assets/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="assets/js/adminlte.js"></script>
<script src="assets/js/pace.min.js"></script>

<!--blockui ver 2.70-->
<script src="assets/js/jquery.blockUI.js"></script>
<!--sweetalert-->
<script src="assets/js/sweetalert2@9.js"></script>


<!--select2  ver @4.0.12-->
<script src="assets/js/select2.min.js"></script>

<!-- select2 bootstrap theme -->
<script src="assets/js/select2-bootstrap4-theme.js"></script>
<!--jquery autosize-->
<script src="assets/js/jquery.autosize.js"></script>
<!-- Datatables -->
<script type="text/javascript" src="assets/libs/datatables/pdfmake.min.js"></script>
<script type="text/javascript" src="assets/libs/datatables/vfs_fonts.js"></script>
<script type="text/javascript" src="assets/libs/datatables/datatables.min.js"></script>
<!-- datepicker -->
<script src="assets/js/bootstrap-datepicker.min.js"></script>
<!-- maxlength -->
<script src="assets/js/bootstrap-maxlength.js"></script>

<!--highcharts -->
<script src="assets/js/highcharts.js"></script>
<script src="assets/js/exporting.js"></script>
<script src="assets/js/offline-exporting.js"></script>


<!-- autosave forms sisyphus -->
<script src="assets/js/sisyphus.min.js"></script>

<!--Typed js -->
<script src="assets/js/typed.js"></script>
<script src="assets/js/jq-ajax-progress.js"></script>

<!-- shimmer js -->
<script src="assets/libs/shimmerjs/shimmer.js"></script>

<!-- simpleticker  js -->
<script src="assets/libs/vticker/jquery.vticker-min.js"></script>

<!-- pace min js -->
<script data-pace-options='{ "ajax": true }' src='assets/js/pace.min.js'></script>

<!-- animated event calendar  js -->
<script src="assets/libs/animated-event-calendar/src/jquery.simple-calendar.js"></script>

<!-- roadmap -->
<script src="assets/libs/roadmap/dist/jquery.roadmap.min.js"></script>

<!-- gantt -->
<script src="assets/libs/gantt/js/jquery.fn.gantt.js"></script>

<!-- color schemes for the charts -->
<script src="assets/js/chartjs-plugin-colorschemes.min.js"></script>

<script src="assets/libs/smartwizard/jquery.smartWizard.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.2/jquery.validate.min.js"></script>

<script src="assets/js/jquery.lettering.js"></script>
<script src="assets/js/jquery.textillate.js"></script>


<!-- routes -->
<script src="controllers/routes.js?v41"></script>

<!-- custom -->
<script src="controllers/custom.js?v=55"></script>

<!-- skeleton -->
<script src="controllers/skeletons.js?v=22"></script>

<!-- validators -->
<script src="controllers/validators.js"></script>

<!-- forms -->
<script src="controllers/forms.js?v=69"></script>

<script type="text/javascript"> window.$crisp=[];window.CRISP_WEBSITE_ID="fd25f24e-2c7d-4a3e-8307-766c1a69a4ec";(function(){ d=document;s=d.createElement("script"); s.src="https://client.crisp.chat/l.js"; s.async=1;d.getElementsByTagName("head")[0].appendChild(s);})(); </script>

<script>
$crisp.push(["set", "user:nickname", ["<?php echo $_SESSION['fName']; ?>"]]);
</script>
<!--Start of Tawk.to Script-->
<!--Start of Tawk.to Script
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/5ed8c6274a7c62581799e672/default';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
<!--End of Tawk.to Script-->


</body>
</html>
