<?php
session_start();
include("../../controllers/setup/connect.php");
 $reference_row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM phpc_dstvpay ORDER BY id DESC limit 1"));
?>

<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
   <li class="breadcrumb-item active" aria-current="page"> <b>   <strong>Scheduled Course List</strong></li></b>
     </ol>
</nav>
<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">
        CourseList

      </div>
      <div class="card-body table-responsive">
               <?php
              $sql_query = mysqli_query($dbc,"SELECT * FROM cal_events  ORDER BY eid DESC");
              $number = 1;
              if($total_rows = mysqli_num_rows($sql_query) > 0)
              {?>
                <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
                <thead>
                  <tr>
                    <td>No</td>
                 <td >Course Name</td>
                 <td >Institution</td>
                 <td >Total Budget</td>
                 <td >Utilised Budget</td>
                 <td>Remaining Amount</td>

                  </tr>
                </thead>
                <?php
                while($row = mysqli_fetch_array($sql_query))
                {?>
                <tr style="cursor: pointer;">
                  <td><?php echo $number++;?></td>


             <td onclick="SelectCourseList('<?php echo $row['eid'];?>');" title="Click here to view Students list for <?php echo $row['subject'];?> Job">
                   <span class="text-primary" style="cursor:pointer;"><?php echo $row['subject'];?></span>
             </td>


                  <td><?php echo $row['description'];?></td>


                  <td>
                                    <?php
                                    $sql_risk_drivers = "SELECT *  FROM cal_occurrences WHERE eid='".$row['eid']."' ";
                                    if($driver_query = mysqli_query($dbc,$sql_risk_drivers))
                                       {
                                        while($risk_driver_row = mysqli_fetch_array($driver_query))
                                        {
                                          ?>
                                           <?php echo $risk_driver_row['start_ts'];?>

                                          <?php
                                        }
                                       }

                                    ?>
                                    </td>


                                    <td>
                                    <?php
                                    $sql_risk_drivers = "SELECT *  FROM cal_occurrences WHERE eid='".$row['eid']."' ";
                                    if($driver_query = mysqli_query($dbc,$sql_risk_drivers))
                                       {
                                        while($risk_driver_row = mysqli_fetch_array($driver_query))
                                        {
                                          ?>
                                           <?php echo $risk_driver_row['end_ts'];?>

                                          <?php
                                        }
                                       }

                                    ?>
                                    </td>

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
    <div class="alert alert-info">
      <strong><i class="fa fa-info-circle"></i> No course has been scheduled</strong>
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
      <!-- /.end row programme information -->
