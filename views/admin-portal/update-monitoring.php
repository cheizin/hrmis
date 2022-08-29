<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");
?>
<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
       <li class="breadcrumb-item active" aria-current="page">Update Monitoring</li>
     </ol>
</nav>

<div class="row">
<div class="col-sm-12">
  <div class="card">
    <div class="card-body">
      <?php
      if($_SESSION['access_level'] == 'superuser' || $_SESSION['access_level'] == 'admin')
      {
        ?>
        <ul class="nav nav-fill nav-pills mb-3" id="pills-tab" role="tablist">
          <li class="nav-item">
            <a class="nav-link active update-monitor-risks-tab" data-toggle="pill" href="#update-monitor-risks-tab" role="tab"  aria-selected="true">Risks Update Monitoring</a>
          </li>
          <li class="nav-item">
            <a class="nav-link strategies_that_did_not_work_tab" data-toggle="pill" href="#update-monitor-activity-tab" role="tab"  aria-selected="false">Activities Update Monitoring</a>
          </li>
        </ul>

        <div class="tab-content">
          <div id="update-monitor-risks-tab" class="tab-pane fade in show active" role="tabpanel">
            <div class="row">
              <div class="col-xs-12">
                <div class="box">
                  <div class="box-header">
                    <h3 class="box-title">Risks</h3>
                  </div>
                  <!-- /.box-header -->
                  <div class="box-body table-responsive no-padding">
                     <?php
                    $sql_query = mysqli_query($dbc,"SELECT * FROM departments
                                                    WHERE department_id!='SPU' && department_id!='SP' && department_id!='RF' ORDER BY department_id ASC"
                                                );

                    $number = 1;
                    if($total_rows = mysqli_num_rows($sql_query) > 0)
                    {?>
                    <table class="table table-hover table-striped" id="risks-update-monitoring-table">
                      <thead>
                        <tr>
                          <td>NO</td>
                          <td>Department Name</td>
                          <td class="total_risks_column">Total Risks</td>
                          <td class="total_risks_pending_update_column">Total Risks Pending Update</td>
                          <td>Update Status</td>
                          <td class="total_risks_pending_approval_column">Total Risks Pending Approval</td>
                          <td>View</td>
                        </tr>
                      </thead>
                      <?php
                      while($row = mysqli_fetch_array($sql_query))
                      {?>
                      <tr style="cursor: pointer;">
                        <td><?php echo $number++;?></td>
                        <td><?php echo $row['department_name'];?></td>
                        <td>
                            <?php
                            //START counting
                            $total_no = mysqli_num_rows(mysqli_query($dbc,"SELECT risk_reference FROM risk_management
                                                                             WHERE changed='no' && department_code='".$row['department_id']."'
                                                                             && risk_status='open'
                                                                             "));
                            echo $total_no; ?>
                        </td>
                        <td>
                          <?php
                        //updated risks for current quarter
                         $number_of_updated_risks =mysqli_num_rows(mysqli_query($dbc,"SELECT reference_no FROM update_risk_status
                                                            WHERE period_from='".$current_quarter_and_year['period']."'
                                                            && quarter = '".$current_quarter_and_year['quarter']."'
                                                            && dep_code='".$row['department_id']."'
                                                            && reference_no IN (SELECT risk_reference FROM risk_management
                                                                                  WHERE department_code='".$row['department_id']."'
                                                                                  && changed='no' && risk_status='open'
                                                                                )
                                                            && changed='no'"));

                        //updated and approved risks for current quarter
                        $number_of_updated_pending_approved_risks =mysqli_num_rows(mysqli_query($dbc,"SELECT reference_no FROM update_risk_status
                                                                                                WHERE period_from='".$current_quarter_and_year['period']."'
                                                                                                && quarter = '".$current_quarter_and_year['quarter']."'
                                                                                                && dep_code='".$row['department_id']."'
                                                                                                && status='pending approval'
                                                                                                && reference_no IN (SELECT risk_reference FROM risk_management
                                                                                                                      WHERE department_code='".$row['department_id']."'
                                                                                                                      && changed='no' && risk_status='open'
                                                                                                                    )
                                                                                                && changed='no'"));
                          $pending_update = $total_no - $number_of_updated_risks;
                          echo $pending_update;
                          ?>
                        </td>
                        <td>
                          <?php
                          if($total_no == $number_of_updated_risks && $total_no !=0 && $number_of_updated_risks !=0)
                          {
                            ?>
                            <span class="text-success"><strong>ALL RISKS UPDATED</strong></span>
                            <?php
                          }
                          else if($number_of_updated_risks == 0 && $total_no > 0)
                          {
                            ?>
                            <span class="text-danger"><strong>NO RISKS UPDATED</strong></span>
                            <?php
                          }
                          else if ($total_no == 0)
                          {
                            ?>
                            <span><strong>NO RISK AVAILABLE</strong></span>
                            <?php
                          }
                          else
                          {
                            ?>
                              <span class="text-warning"><strong>PARTIALLY UPDATED</strong></span>
                            <?php
                          }

                          ?>

                        </td>
                        <td><?php echo $number_of_updated_pending_approved_risks;?></td>
                        <td>
                            <button type="button" class="btn btn-link" data-toggle="modal"
                              data-target="#monitor-all-risk-approvals-modal-<?php echo $row['department_id'];?>">
                              <i class="fa fa-eye"></i>
                            </button>

                            <!-- Modal -->
                            <div id="monitor-all-risk-approvals-modal-<?php echo $row['department_id'];?>" class="modal fade" role="dialog">
                              <div class="modal-dialog modal-lg">

                                <!-- Modal content-->
                                <div class="modal-content">>
                                  <div class="modal-header">
                                    <h5 class="modal-title"><?php echo $row['department_name'];?> - Risks Approvals</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                      <span aria-hidden="true">&times;</span>
                                    </button>
                                  </div>
                                  <div class="modal-body">
                                    <nav>
                                      <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                        <a class="nav-item nav-link active" data-toggle="tab" href="#approved-new-edited-<?php echo $row['department_id'];?>" role="tab">Approved -New/Edited</a>
                                        <a class="nav-item nav-link" data-toggle="tab" href="#approved-quarterly-update-<?php echo $row['department_id'];?>" role="tab">Approved - Quarterly Update</a>
                                        <a class="nav-item nav-link" data-toggle="tab" href="#pending-approval-new-edited-tab-<?php echo $row['department_id'];?>" role="tab">Pending Approval -New/Edited</a>
                                        <a class="nav-item nav-link" data-toggle="tab" href="#pending-approval-quarterly-update-tab-<?php echo $row['department_id'];?>" role="tab">Pending Approval - Quarterly Update</a>
                                      </div>
                                    </nav>


                                    <div class="tab-content">
                                      <div id="approved-new-edited-<?php echo $row['department_id'];?>" class="tab-pane fade in show active">
                                        <div class="col-xs-12">
                                          <div class="box">
                                            <div class="box-body table-responsive no-padding">
                                               <?php

                                              $approval_sql_query = mysqli_query($dbc,"SELECT * FROM risk_management WHERE
                                                                                  department_code='".$row['department_id']."' &&
                                                                                  status='approved' && risk_status='open'
                                                                                  && changed='no' ORDER BY id DESC");
                                              $approval_number = 1;
                                              if($approval_total_rows = mysqli_num_rows($approval_sql_query) > 0)
                                              {?>
                                              <table class="table table-hover table-striped"  style="width:100%">
                                                <thead>
                                                  <tr>
                                                    <td>NO</td>
                                                    <td>Risk Description</td>
                                                    <td>Created By</td>
                                                    <td>Date Submitted</td>
                                                  </tr>
                                                </thead>
                                                <?php
                                                while($approval_row = mysqli_fetch_array($approval_sql_query))
                                                {?>
                                                <tr>
                                                  <td><?php echo $approval_number++;?></td>
                                                  <td><?php echo $approval_row['risk_description'];?></td>
                                                  <td><?php echo $approval_row['created_by'];?></td>
                                                  <td><?php echo $approval_row['date_recorded'];?> <br/> <?php echo $row['time_recorded'];?></td>
                                                  <td>
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
                                                <div class="alert alert-danger alert-dismissible">
                                                  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                  <i class="fa fa-info-circle"></i>  No New/Edited Risks Approved!
                                                </div>
                                                <?php
                                              }
                                              ?>
                                            </div>
                                            <!-- /.box-body -->
                                          </div>
                                          <!-- /.box -->
                                        </div>
                                      </div>
                                      <div id="approved-quarterly-update-<?php echo $row['department_id'];?>" class="tab-pane fade">
                                        <div class="col-xs-12">
                                          <div class="box">
                                            <div class="box-body table-responsive no-padding">
                                               <?php

                                              $approval_sql_query = mysqli_query($dbc,"SELECT * FROM update_risk_status WHERE
                                                                                  dep_code='".$row['department_id']."' &&
                                                                                  status='approved' &&
                                                                                  reference_no IN
                                                                                  (SELECT risk_reference FROM risk_management
                                                                                  WHERE changed='no' &&
                                                                                  department_code='".$row['department_id']."'
                                                                                  && risk_status='open')
                                                                                  && period_from='".$current_quarter_and_year['period']."'
                                                                                  && quarter = '".$current_quarter_and_year['quarter']."'
                                                                                  && changed='no' ORDER BY id DESC");
                                              $approval_number = 1;
                                              if($approval_total_rows = mysqli_num_rows($approval_sql_query) > 0)
                                              {?>
                                              <table class="table table-hover table-striped"  style="width:100%">
                                                <thead>
                                                  <tr>
                                                    <td>NO</td>
                                                    <td>Risk Description</td>
                                                    <td>Updated By</td>
                                                    <td>Date Submitted</td>
                                                  </tr>
                                                </thead>
                                                <?php
                                                while($approval_row = mysqli_fetch_array($approval_sql_query))
                                                {?>
                                                <tr>
                                                  <td><?php echo $approval_number++;?></td>
                                                  <td><?php echo $approval_row['risk_description'];?></td>
                                                  <td><?php echo $approval_row['updated_by'];?></td>
                                                  <td><?php echo $approval_row['date_updated'];?></td>
                                                  <td>
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
                                                <div class="alert alert-danger alert-dismissible">
                                                  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                  <i class="fa fa-info-circle"></i>  No Updated risks approved!
                                                </div>
                                                <?php
                                              }
                                              ?>
                                            </div>
                                            <!-- /.box-body -->
                                          </div>
                                          <!-- /.box -->
                                        </div>
                                      </div>
                                      <div id="pending-approval-new-edited-tab-<?php echo $row['department_id'];?>" class="tab-pane fade">
                                        <div class="col-xs-12">
                                          <div class="box">
                                            <div class="box-body table-responsive no-padding">
                                               <?php

                                              $approval_sql_query = mysqli_query($dbc,"SELECT * FROM risk_management WHERE
                                                                                  department_code='".$row['department_id']."' &&
                                                                                  status='pending approval' && risk_status='open'
                                                                                  && changed='no' ORDER BY id DESC");
                                              $approval_number = 1;
                                              if($approval_total_rows = mysqli_num_rows($approval_sql_query) > 0)
                                              {?>
                                              <table class="table table-hover table-striped"  style="width:100%">
                                                <thead>
                                                  <tr>
                                                    <td>NO</td>
                                                    <td>Risk Description</td>
                                                    <td>Created By</td>
                                                    <td>Date Submitted</td>
                                                  </tr>
                                                </thead>
                                                <?php
                                                while($approval_row = mysqli_fetch_array($approval_sql_query))
                                                {?>
                                                <tr>
                                                  <td><?php echo $approval_number++;?></td>
                                                  <td><?php echo $approval_row['risk_description'];?></td>
                                                  <td><?php echo $approval_row['created_by'];?></td>
                                                  <td><?php echo $approval_row['date_recorded'];?> <br/> <?php echo $row['time_recorded'];?></td>
                                                  <td>
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
                                                <div class="alert alert-danger alert-dismissible">
                                                  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                  <i class="fa fa-info-circle"></i>  No New/Edited risks pending approval!
                                                </div>
                                                <?php
                                              }
                                              ?>
                                            </div>
                                            <!-- /.box-body -->
                                          </div>
                                          <!-- /.box -->
                                        </div>
                                      </div>
                                      <div id="pending-approval-quarterly-update-tab-<?php echo $row['department_id'];?>" class="tab-pane fade">
                                        <div class="col-xs-12">
                                          <div class="box">
                                            <div class="box-body table-responsive no-padding">
                                               <?php

                                              $approval_sql_query = mysqli_query($dbc,"SELECT * FROM update_risk_status WHERE
                                                                                  dep_code='".$row['department_id']."' &&
                                                                                  status='pending approval'  &&
                                                                                  reference_no IN
                                                                                  (SELECT risk_reference FROM risk_management
                                                                                  WHERE changed='no' &&
                                                                                  department_code='".$row['department_id']."'
                                                                                  && risk_status='open')
                                                                                  && changed='no' ORDER BY id DESC");
                                              $approval_number = 1;
                                              if($approval_total_rows = mysqli_num_rows($approval_sql_query) > 0)
                                              {?>
                                              <table class="table table-hover table-striped" style="width:100%">
                                                <thead>
                                                  <tr>
                                                    <td>NO</td>
                                                    <td>Risk Description</td>
                                                    <td>Updated By</td>
                                                    <td>Date Submitted</td>
                                                  </tr>
                                                </thead>
                                                <?php
                                                while($approval_row = mysqli_fetch_array($approval_sql_query))
                                                {?>
                                                <tr>
                                                  <td><?php echo $approval_number++;?></td>
                                                  <td><?php echo $approval_row['risk_description'];?></td>
                                                  <td><?php echo $approval_row['updated_by'];?></td>
                                                  <td><?php echo $approval_row['date_updated'];?></td>
                                                  <td>
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
                                                <div class="alert alert-danger alert-dismissible">
                                                  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                  <i class="fa fa-info-circle"></i>  No Updated risks pending approval!
                                                </div>
                                                <?php
                                              }
                                              ?>
                                            </div>
                                            <!-- /.box-body -->
                                          </div>
                                          <!-- /.box -->
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                  <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                  </div>
                                </div>

                              </div>
                            </div>
                        </td>
                      </tr>
                      <?php
                      }
                      ?>
                      <tfoot style="background:silver;">
                          <tr>
                              <th></th>
                              <th></th>
                              <th></th>
                              <th></th>
                              <th></th>
                              <th></th>
                          </tr>
                      </tfoot>
                    </table>
                    <?php
                    }
                    ?>
                  </div>
                  <!-- /.box-body -->
                </div>
                <!-- /.box -->
              </div>

            </div>

          </div>
          <div id="update-monitor-activity-tab" class="tab-pane fade">
            <div class="row">
              <div class="col-xs-12">
                <div class="box">
                  <div class="box-header">
                    <h3 class="box-title">Activities</h3>
                  </div>
                  <!-- /.box-header -->
                  <div class="box-body table-responsive no-padding">
                     <?php
                    $sql_query = mysqli_query($dbc,"SELECT * FROM departments
                                                      WHERE
                                                      department_id!='SPU' && department_id!='SP' && department_id!='RF'
                                                       ORDER BY department_id ASC");

                    $number = 1;
                    if($total_rows = mysqli_num_rows($sql_query) > 0)
                    {?>
                    <table class="table table-hover" id="activities-update-monitoring-table" width="100%">
                      <thead>
                        <tr>
                          <td>NO</td>
                          <td>Department Name</td>
                          <td>Total Activities</td>
                          <td>Total Activities Pending Update</td>
                          <td>Update Status</td>
                        </tr>
                      </thead>
                      <?php
                      while($row = mysqli_fetch_array($sql_query))
                      {?>
                      <tr style="cursor: pointer;">
                        <td><?php echo $number++;?></td>
                        <td><?php echo $row['department_name'];?></td>
                        <td>
                            <?php
                            //START counting
                            $total_no = mysqli_num_rows(mysqli_query($dbc,"SELECT activity_id FROM perfomance_management
                                                                             WHERE department_id='".$row['department_id']."'
                                                                             && activity_status='open'
                                                                             &&
                                                                             activity_id IN
                                                                             (SELECT activity_id FROM activity_strategic_outcomes
                                                                             WHERE changed='no' &&
                                                                             year_id='".$current_quarter_and_year['period']."')
                                                                             "));
                            echo $total_no; ?>
                        </td>
                        <td>
                          <?php
                        //updated risks for current quarter
                         $number_of_updated_activites =mysqli_num_rows(mysqli_query($dbc,"SELECT activity_id FROM performance_update
                                                            WHERE year_id='".$current_quarter_and_year['period']."'
                                                            && quarter_id = '".$current_quarter_and_year['quarter']."'
                                                            && activity_id IN (SELECT activity_id FROM perfomance_management
                                                                                WHERE changed='no' && department_id='".$row['department_id']."'
                                                                                && activity_status='open')
                                                            && changed='no'"));

                          $pending_update = $total_no - $number_of_updated_activites;
                          echo $pending_update;
                          ?>
                        </td>
                        <td>
                          <?php
                          if($total_no == $number_of_updated_activites && $total_no !=0 && $number_of_updated_activites !=0)
                          {
                            ?>
                            <span class="text-success"><strong>ALL ACTIVITIES UPDATED</strong></span>
                            <?php
                          }
                          else if($number_of_updated_activites == 0 && $total_no > 0)
                          {
                            ?>
                            <span class="text-danger"><strong>NO ACTIVITIES UPDATED</strong></span>
                            <?php
                          }
                          else if ($total_no == 0)
                          {
                            ?>
                            <span><strong>NO ACTIVITIES AVAILABLE</strong></span>
                            <?php
                          }
                          else
                          {
                            ?>
                              <span class="text-warning"><strong>PARTIALLY UPDATED</strong></span>
                            <?php
                          }

                          ?>

                        </td>
                      </tr>
                      <?php
                      }
                      ?>
                      <tfoot style="background:silver;">
                          <tr>
                              <th></th>
                              <th></th>
                              <th></th>
                              <th></th>
                              <th></th>
                          </tr>
                      </tfoot>
                    </table>
                    <?php
                    }
                    ?>
                  </div>
                  <!-- /.box-body -->
                </div>
                <!-- /.box -->
              </div>

            </div>
          </div>
        </div>

        <?php
      }
      else
      {
        ?>
          NOT AUTHORISED TO VIEW THIS CONTENT
        <?php
      }

       ?>
    </div>
  </div>
</div>
</div>
