<?php
session_start();
include("../../controllers/setup/connect.php");
if($_SERVER['REQUEST_METHOD'] == "POST")
{
  if(isset($_SESSION['email']))
  {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Select the appropriate report</li>
          </ol>
    </nav>
    <div class="row">
        <div class="col-md-12">
        <ul class="ml-4 report-menu nav nav-pills nav-sidebar flex-column nav-compact nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
           <li class="nav-item has-treeview border-top">
            <a href="#" class="nav-link text-info">

              <p>
                 1. Job Posting
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link text-primary" onclick="ReportType('job_posted');">
                  <p>(a) Job Posted</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link text-primary" onclick="ReportType('job_requested');">
                  <p>(b) Job Request Sent</p>
                </a>
              </li>

              <li class="nav-item">
                <a href="#" class="nav-link text-primary" onclick="ReportType('job_applied');">
                  <p>(c) Jobs Applied</p>
                </a>
              </li>


            </ul>
          </li>

          <li class="nav-item has-treeview border-top">
            <a href="#" class="nav-link text-info">

              <p>
                 2.  Job Tests:
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link text-primary" onclick="ReportType('assigned_test');">
                  <p>(a) Assigned Job Tests</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="#" class="nav-link text-primary" onclick="ReportType('responded_test');">
                  <p>(b) Responded Test</p>
                </a>
              </li>

            </ul>
          </li>

          <li class="nav-item has-treeview border-top">
            <a href="#" class="nav-link text-info">

              <p>
                 3.  Personal Details:
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="#" class="nav-link text-primary" onclick="ReportType('company_info');">
                  <p>(a) Company Information</p>
                </a>
              </li>

            </ul>
          </li>



                </ul>
        </div>
    </div>

    <?php
  }
  else
  {
    echo "unauthorised";
  }
}
else
{
  echo "form not submitted";
}


 ?>
