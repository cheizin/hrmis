<?php
session_start();
include("../../controllers/setup/connect.php");
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
   exit("Form not submitted");
}
else if (!isset($_SESSION['email']))
{
   exit("unauthenticated");
}
else if(!isset($_POST['report_type']))
{
  exit("Report Type not selected");
}
 ?>

 <?php
 if($_POST['report_type'] == 'all_job_post')
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching All Job Post</li>
          </ol>
    </nav>

    <div class="card card-body">
       <form id="all_jobs_form">
          <div class="row">

            <div class="col-lg-3 col-xs-12 form-group">
              <label> <span class="required">*</span> Start Date</label>
              <div class="input-group mb-2 mr-sm-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                </div>
                <input type="text" class="form-control project_start_date" autocomplete="off" name="product_start_date" required>
              </div>
            </div>
            <div class="col-lg-3 col-xs-12 form-group">
              <label> <span class="required">*</span> End Date</label>
              <div class="input-group mb-2 mr-sm-2">
                <div class="input-group-prepend">
                  <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
                </div>
                <input type="text" class="form-control project_end_date" autocomplete="off" name="product_end_date" required>
              </div>
            </div>
         <div class="col-lg-2 form-group text-center">
             <label></label><br/>
             <button class="btn btn-primary">Fetch</button>
          </div>
          </div>
       </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'all_requests' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching All Application Request Received</li>
          </ol>
    </nav>

    <div class="card card-body">
     <form id="all_application_request_form">
        <div class="row">

            <div class="col-lg-3 col-xs-12 form-group">
               <label></label><br/>
               <button class="btn btn-primary">Fetch</button>
            </div>
            </div>
         </form>
    </div>

    <?php
 }


  if($_POST['report_type'] == 'pending_test' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching All Pending Test</li>
          </ol>
    </nav>

    <div class="card card-body">
        <form id="all_pending_test_form">
            <div class="row">

            <div class="col-lg-3 col-xs-12 form-group">
               <label></label><br/>
               <button class="btn btn-primary">Fetch</button>
            </div>
         </form>
        </div>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'finished_test' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching all Finished Tests</li>
          </ol>
    </nav>

    <div class="card card-body">
        <form id="all_products_delivered_form">
        <div class="row">

        <div class="col-lg-3 col-xs-12 form-group">
           <label></label><br/>
           <button class="btn btn-primary">Fetch</button>
        </div>
     </form>
    </div>
    </div>
    <?php
 }

  if($_POST['report_type'] == 'personal_info' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching Personal Information</li>
          </ol>
    </nav>

    <div class="card card-body">
        <form id="personal_info_form">
            <div class="row">

                <div class="col-lg-3 col-xs-12 form-group">
                   <label></label><br/>
                   <button class="btn btn-primary">Fetch</button>
                </div>
                 </div>
             </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'job_posted' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching All Job Posted</li>
          </ol>
    </nav>

    <div class="card card-body">
     <form id="all_job_posted_form">
      <div class="row">

        <div class="col-lg-3 col-xs-12 form-group">
          <label> <span class="required">*</span> Start Date</label>
          <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
            </div>
            <input type="text" class="form-control project_start_date" autocomplete="off" name="product_start_date" required>
          </div>
        </div>
        <div class="col-lg-3 col-xs-12 form-group">
          <label> <span class="required">*</span> End Date</label>
          <div class="input-group mb-2 mr-sm-2">
            <div class="input-group-prepend">
              <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
            </div>
            <input type="text" class="form-control project_end_date" autocomplete="off" name="product_end_date" required>
          </div>
        </div>

     <div class="col-lg-3 col-xs-12 form-group">
        <label></label><br/>
        <button class="btn btn-primary">Fetch</button>
     </div>
      </div>
  </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'job_requested' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching All Application Requests Sent</li>
          </ol>
    </nav>

    <div class="card card-body">
        <form id="all_application_request_form">
            <div class="row">

            <div class="col-lg-3 col-xs-12 form-group">
               <label></label><br/>
               <button class="btn btn-primary">Fetch</button>
            </div>
             </div>
         </form>
    </div>
    <?php
 }

 if($_POST['report_type'] == 'job_applied' )
 {
   ?>
   <nav aria-label="breadcrumb">
         <ol class="breadcrumb">
           <li class="breadcrumb-item active" aria-current="page">Fetching All Jobs Applied</li>
         </ol>
   </nav>

   <div class="card card-body">
       <form id="all_jobs_posted_applied_form">
           <div class="row">
             <div class="col-lg-6 col-xs-12 form-group">
             <label><span class="required">*</span>Application Status</label>
             <?php
             $result2 = mysqli_query($dbc, "SELECT * FROM application_status ORDER BY id ASC");
             echo '
             <select name="status_name" data-tags="true" class="select2 form-control" data-placeholder="Select Application Status" required>
             <option></option>';
             while($row = mysqli_fetch_array($result2)) {
                 echo '<option value="'.$row['status_name'].'">'.$row['status_name']."</option>";
             }
             echo '</select>';
             ?>
             </div>
           <div class="col-lg-3 col-xs-12 form-group">
              <label></label><br/>
              <button class="btn btn-primary">Fetch</button>
           </div>
            </div>
        </form>
   </div>
   <?php
 }

  if($_POST['report_type'] == 'assigned_test' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching All assigned test</li>
          </ol>
    </nav>

    <div class="card card-body">
    <form id="all_profit_loss_form">
     <div class="row">

         <div class="col-lg-3 col-xs-12 form-group">
           <label> <span class="required">*</span> Start Date</label>
           <div class="input-group mb-2 mr-sm-2">
             <div class="input-group-prepend">
               <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
             </div>
             <input type="text" class="form-control project_start_date" autocomplete="off" name="product_start_date" required>
           </div>
         </div>
         <div class="col-lg-3 col-xs-12 form-group">
           <label> <span class="required">*</span> End Date</label>
           <div class="input-group mb-2 mr-sm-2">
             <div class="input-group-prepend">
               <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
             </div>
             <input type="text" class="form-control project_end_date" autocomplete="off" name="product_end_date" required>
           </div>
         </div>
       <div class="col-lg-1 col-xs-12 form-group">
          <label></label><br/>
          <button class="btn btn-primary">Fetch</button>
       </div>
        </div>
    </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'responded_test' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching all responded test</li>
          </ol>
    </nav>
    <div class="card card-body">
    <form id="all_profit_loss_form">
     <div class="row">

         <div class="col-lg-3 col-xs-12 form-group">
           <label> <span class="required">*</span> Start Date</label>
           <div class="input-group mb-2 mr-sm-2">
             <div class="input-group-prepend">
               <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
             </div>
             <input type="text" class="form-control project_start_date" autocomplete="off" name="product_start_date" required>
           </div>
         </div>
         <div class="col-lg-3 col-xs-12 form-group">
           <label> <span class="required">*</span> End Date</label>
           <div class="input-group mb-2 mr-sm-2">
             <div class="input-group-prepend">
               <div class="input-group-text"><i class="fal fa-calendar-day"></i></div>
             </div>
             <input type="text" class="form-control project_end_date" autocomplete="off" name="product_end_date" required>
           </div>
         </div>
       <div class="col-lg-1 col-xs-12 form-group">
          <label></label><br/>
          <button class="btn btn-primary">Fetch</button>
       </div>
        </div>
    </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'company_info' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching Company Information</li>
          </ol>
    </nav>
    <div class="card card-body">
    <form id="all_company_info_form">
     <div class="row">


       <div class="col-lg-1 col-xs-12 form-group">
          <label></label><br/>
          <button class="btn btn-primary">Fetch</button>
       </div>
        </div>
    </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'detailed_performance_and_risk_management_report' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching Departmental Performance Risk Report</li>
          </ol>
    </nav>

    <div class="card card-body">
     <form id="detailed_performance_and_risk_management_report_form">
      <div class="row">
       <div class="col-lg-3 col-xs-12 form-group">
          <label for="select_period"><span class="required">*</span> Period</label>
          <?php
             $result = mysqli_query($dbc, "SELECT * FROM years GROUP BY period");
                   echo '
                       <select name="select_period" class="form-control" required>
                             <option value="">Please select period</option>';
                               while($row = mysqli_fetch_array($result)) {
                            echo '<option value="'.$row['period'].'">'.$row['period']."</option>";
                                            }
                   echo '</select>';
             ?>
       </div>
       <div class="col-lg-3 col-xs-12 form-group">
          <label for="select_quarter"><span class="required">*</span>Quarter</label>
          <select class="form-control" name="select_quarter" required>
             <option value="">Please select quarter</option>
             <option value="July - September (Quarter 1)">July - September (Quarter 1)</option>
             <option value="October - December (Quarter 2)">October - December (Quarter 2)</option>
             <option value="January - March (Quarter 3)">January - March (Quarter 3)</option>
             <option value="April - June (Quarter 4)">April - June (Quarter 4)</option>
          </select>
       </div>
       <?php
          //for standard users
          if($_SESSION['access_level'] == 'standard')
          {
            ?>
       <input type="hidden" name="departments" value="<?php echo $_SESSION['department_code'];?>">
       <?php
          }
          else if($_SESSION['access_level'] == 'admin' || $_SESSION['access_level'] == 'superuser' || $_SESSION['access_level'] = 'director')
          {
            ?>
       <div class="col-lg-3 col-xs-12 form-group">
          <label for="departments"><span class="required">*</span>Departments</label>
          <?php
             $result = mysqli_query($dbc, "SELECT * FROM departments");
             echo '
             <select name="departments" id="departments" class="select2 form-control" required>
             <option value="">search and select...</option>';
             while($row = mysqli_fetch_array($result)) {
                 echo '<option value="'.$row['department_id'].'">'.$row['department_name']."</option>";
             }
             echo '</select>';
             ?>
       </div>
       <?php
          }
          ?>
       <div class="col-lg-3 col-xs-12 form-group">
          <label></label><br/>
          <button class="btn btn-primary">Fetch</button>
       </div>
        </div>
    </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'detailed_corporate_performance_and_risk_management_report' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching Corporate Performance Risk Report</li>
          </ol>
    </nav>

    <div class="card card-body">
     <form id="detailed_corporate_performance_and_risk_management_report_form">
           <div class="row">
        <div class="col-lg-3 col-xs-12 form-group">
           <label for="select_period"><span class="required">*</span> Period</label>
           <?php
              $result = mysqli_query($dbc, "SELECT * FROM years GROUP BY period");
                    echo '
                        <select name="select_period" class="form-control" required>
                              <option value="">Please select period</option>';
                                while($row = mysqli_fetch_array($result)) {
                             echo '<option value="'.$row['period'].'">'.$row['period']."</option>";
                                             }
                    echo '</select>';
              ?>
        </div>
        <div class="col-lg-3 col-xs-12 form-group">
           <label for="select_quarter"><span class="required">*</span>Quarter</label>
           <select class="form-control" name="select_quarter" required>
              <option value="">Please select quarter</option>
              <option value="July - September (Quarter 1)">July - September (Quarter 1)</option>
              <option value="October - December (Quarter 2)">October - December (Quarter 2)</option>
              <option value="January - March (Quarter 3)">January - March (Quarter 3)</option>
              <option value="April - June (Quarter 4)">April - June (Quarter 4)</option>
           </select>
        </div>
        <div class="col-lg-3 col-xs-12 form-group">
           <label for="directorates"><span class="required">*</span>directorates</label>
           <?php
              $result = mysqli_query($dbc, "SELECT * FROM directorates");
              echo '
              <select name="directorates" id="directorates" class="form-control" required>
              <option value="all">All Directorates</option>';
              while($row = mysqli_fetch_array($result)) {
                  echo '<option value="'.$row['directorate_id'].'">'.$row['directorate_name']."</option>";
              }
              echo '</select>';
              ?>
        </div>
        <div class="col-lg-3 col-xs-12 form-group">
           <label></label><br/>
           <button class="btn btn-primary">Fetch</button>
        </div>
        </div>
     </form>
    </div>

    <?php
 }

  if($_POST['report_type'] == 'detailed_activities_related_risks_directorate' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Creating Directorate Report</li>
          </ol>
    </nav>

    <div class="card card-body">
     <form id="detailed_activities_with_risks_per_directorate_form">
      <div class="row">
        <div class="col-lg-3 col-xs-12 form-group">
           <label for="select_period"><span class="required">*</span> Period</label>
           <?php
              $result = mysqli_query($dbc, "SELECT * FROM years GROUP BY period");
                    echo '
                        <select name="select_period" class="form-control" id="select_period" required>
                              <option value="">Please select period</option>';
                                while($row = mysqli_fetch_array($result)) {
                             echo '<option value="'.$row['period'].'">'.$row['period']."</option>";
                                             }
                    echo '</select>';
              ?>
        </div>
        <div class="col-lg-3 col-xs-12 form-group">
           <label for="select_quarter"><span class="required">*</span>Quarter</label>
           <select class="form-control" name="select_quarter" id="select_quarter" required>
              <option value="">Please select quarter</option>
              <option value="July - September (Quarter 1)">July - September (Quarter 1)</option>
              <option value="October - December (Quarter 2)">October - December (Quarter 2)</option>
              <option value="January - March (Quarter 3)">January - March (Quarter 3)</option>
              <option value="April - June (Quarter 4)">April - June (Quarter 4)</option>
           </select>
        </div>
        <!--  <div class="col-lg-2 col-xs-12 form-group">
           <label for="select_quarter"><span class="required">*</span>Activity type</label>
           <select class="form-control" name="activity_type" required>
                 <option value="">Select Activity Types</option>
                 <option value="all">All activity types</option>
                 <option value="sp">SP</option>
                 <option value="pc">PC</option>
                 <option value="sp & pc">SP & PC</option>
                 <option value="operational">Operational</option>
                 <option value="corporate">Corporate</option>
           </select>
           </div>
           -->
        <input type="hidden" name="activity_type" value="all">
        <div class="col-lg-3 col-xs-12 form-group">
           <label for="directorates"><span class="required">*</span>directorates</label>
           <?php
              $result = mysqli_query($dbc, "SELECT * FROM directorates");
              echo '
              <select name="directorates" id="directorates" class="select2 form-control" required>
              <option value="">search and select...</option>';
              while($row = mysqli_fetch_array($result)) {
                  echo '<option value="'.$row['directorate_id'].'">'.$row['directorate_name']."</option>";
              }
              echo '</select>';
              ?>
        </div>
        <div class="col-lg-2 col-xs-12 form-group">
           <label></label><br/>
           <button class="btn btn-primary">Fetch</button>
        </div>
         </div>
     </form>
    </div>



<div class="row d-none" id="directorate_tab">
  <div class="col-sm-12">
    <nav>
      <div class="nav nav-tabs" id="nav-tab" role="tablist">
        <a class="nav-item nav-link active directorate_activities_without_directorate_risks_tab"
          title="Activities sent to Step 2 are automatically removed from this list"
          data-toggle="tab"
          href="#detailed_activities_per_directorate_tab"
          role="tab" aria-selected="true">Step 1: Select Activities tied to Risks
        </a>

        <a class="nav-item nav-link directorate_risks_tab"
          title="Create a Cumulative Risk & Activity from Step 1"
          data-toggle="tab"
          href="#directorate_risks_tab"
          role="tab" aria-selected="false">Step 2: Create Cumulative Risk
        </a>

        <a class="nav-item nav-link detailed_activities_with_cumulative_risks_tab"
          title="This is a list of all activities tied to cumulative risks"
          data-toggle="tab"
          href="#detailed_activities_with_cumulative_risks_tab"
          role="tab" aria-selected="false">Step 3: Activities tied to Cumulative
        </a>

        <a class="nav-item nav-link cumulative_risks_tab"
          title="This is a list of the Cumulative Risks created on Step 2"
          data-toggle="tab"
          href="#cumulative_risks_tab"
          role="tab" aria-selected="false">Step 4: View Cumulative Risks
        </a>

      </div>
    </nav>

    <div class="tab-content">
      <div id="detailed_activities_per_directorate_tab" class="tab-pane fade in show active">
        <div id="detailed_activities_with_risks_per_directorate_generated">

        </div>
      </div>
      <div id="directorate_risks_tab" class="tab-pane fade">
        <div id="directorate_risks_with_activities_generated">

        </div>
      </div>
      <div id="detailed_activities_with_cumulative_risks_tab" class="tab-pane fade">
        <div id="detailed_activities_with_cumulative_risks_generated">

        </div>
      </div>
      <div id="cumulative_risks_tab" class="tab-pane fade">
        <div id="cumulative_risks_tab_generated">

        </div>
      </div>
    </div>
  </div>
</div>


    <?php
 }

  if($_POST['report_type'] == 'detailed_activities_with_directorate_risks' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Fetching Directorate(Consolidated) Report</li>
          </ol>
    </nav>

    <div class="card card-body">
     <form id="detailed_corporate_performance_and_risk_management_report_directorate_form">
      <div class="row">
       <div class="col-lg-3 col-xs-12 form-group">
          <label for="select_period"><span class="required">*</span> Period</label>
          <?php
             $result = mysqli_query($dbc, "SELECT * FROM years GROUP BY period");
                   echo '
                       <select name="select_period" class="form-control" required>
                             <option value="">Please select period</option>';
                               while($row = mysqli_fetch_array($result)) {
                            echo '<option value="'.$row['period'].'">'.$row['period']."</option>";
                                            }
                   echo '</select>';
             ?>
       </div>
       <div class="col-lg-3 col-xs-12 form-group">
          <label for="select_quarter"><span class="required">*</span>Quarter</label>
          <select class="form-control" name="select_quarter" required>
             <option value="">Please select quarter</option>
             <option value="July - September (Quarter 1)">July - September (Quarter 1)</option>
             <option value="October - December (Quarter 2)">October - December (Quarter 2)</option>
             <option value="January - March (Quarter 3)">January - March (Quarter 3)</option>
             <option value="April - June (Quarter 4)">April - June (Quarter 4)</option>
          </select>
       </div>
       <div class="col-lg-3 col-xs-12 form-group">
          <label for="directorates"><span class="required">*</span>directorates</label>
          <?php
             $result = mysqli_query($dbc, "SELECT * FROM directorates");
             echo '
             <select name="directorates" id="directorates" class="form-control" required>
             <option value="all">All Directorates</option>';
             while($row = mysqli_fetch_array($result)) {
                 echo '<option value="'.$row['directorate_id'].'">'.$row['directorate_name']."</option>";
             }
             echo '</select>';
             ?>
       </div>
       <div class="col-lg-3 col-xs-12 form-group">
          <label></label><br/>
          <button class="btn btn-primary">Fetch</button>
       </div>
        </div>
    </form>

    </div>

    <?php
 }

  if($_POST['report_type'] == 'pc_report' )
 {
    ?>
    <nav aria-label="breadcrumb">
          <ol class="breadcrumb">
            <li class="breadcrumb-item active" aria-current="page">Generating PC Report</li>
          </ol>
    </nav>

    <div class="card card-body">
     <form id="pc_report_form">
      <div class="row">
       <?php
          if($_SESSION['access_level'] == "superuser" || $_SESSION['access_level'] == "admin")
          {
            ?>
       <div class="col-lg-2 col-xs-12 form-group">
          <label for="select_period"><span class="required">*</span> Activity Type</label>
          <select name="activity_type" class="form-control">
             <option value="SP-PC & SP" selected>SP-PC & SP</option>
             <option value="all" selected>Entire Report</option>
          </select>
       </div>
       <?php
          }

          ?>
       <div class="col-lg-2 col-xs-12 form-group">
          <label for="select_period"><span class="required">*</span> Period</label>
          <?php
             $result = mysqli_query($dbc, "SELECT * FROM years GROUP BY period");
                   echo '
                       <select name="select_period" class="form-control" required>
                             <option value="">Select Period</option>';
                               while($row = mysqli_fetch_array($result)) {
                            echo '<option value="'.$row['period'].'">'.$row['period']."</option>";
                                            }
                   echo '</select>';
             ?>
       </div>
       <div class="col-lg-2 col-xs-12 form-group">
          <label for="select_quarter"><span class="required">*</span>Timeline</label>
          <select class="form-control" name="pc_filter_type" id="pc-filter-type" onchange="pcTimelineType();"required>
             <option value="">Select Timeline</option>
             <option value="monthly">Monthly</option>
             <option value="quarterly">Quarterly</option>
          </select>
       </div>
       <div class="col-md-3 d-none" id="pc-month-picker">
          <label><span class="required">*</span> Month</label>
          <div class="input-append date inner-addon left-addon dpMonths" data-date="" data-date-format="mm/yyyy" data-date-viewmode="years" data-date-minviewmode="months">
             <input class="span2 form-control"  type="text" name="month-and-year" id="month-and-year-<?php echo $row['activity_id'];?>" readonly="" style="background:white;">
             <span class="add-on"></span>
          </div>
       </div>
       <div class="col-lg-3 d-none" id="pc-quarter-picker">
          <label for="quarter"><span class="required">*</span>Quarter</label>
          <select class="form-control" name="select_quarter">
             <option value="" disabled>Please select quarter</option>
             <option value="July - September (Quarter 1)">July - September (Quarter 1)</option>
             <option value="October - December (Quarter 2)">October - December (Quarter 2)</option>
             <option value="January - March (Quarter 3)">January - March (Quarter 3)</option>
             <option value="April - June (Quarter 4)">April - June (Quarter 4)</option>
          </select>
       </div>
       <?php
          //for standard users
          if($_SESSION['access_level'] == 'standard')
          {
            ?>
       <input type="hidden" name="departments" value="<?php echo $_SESSION['department_code'];?>">
       <?php
          }
          else if($_SESSION['access_level'] == 'admin' || $_SESSION['access_level'] == 'superuser' || $_SESSION['access_level'] = 'director')
          {
            ?>
       <div class="col-lg-3 col-xs-12 form-group">
          <label for="departments"><span class="required">*</span>Departments</label>
          <?php
             $result = mysqli_query($dbc, "SELECT * FROM departments");
             echo '
             <select name="departments" id="departments" class="select2 form-control" required>
             <option value="">search and select...</option>
             <option value="all">All Departments</option>';
             while($row = mysqli_fetch_array($result)) {
                 echo '<option value="'.$row['department_id'].'">'.$row['department_name']."</option>";
             }
             echo '</select>';
             ?>
       </div>
       <?php
          }
          ?>
       <div class="col-lg-1 col-xs-12 form-group">
          <label></label><br/>
          <button class="btn btn-primary">Fetch</button>
       </div>
        </div>
    </form>
    </div>

    <?php
 }

 ?>

 <div id="generated-report-data"></div>
