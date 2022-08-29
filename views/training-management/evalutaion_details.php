<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}

if(!isset($_POST['id']))
{
  exit("Please select Bank Details ");
}


session_start();
include("../../controllers/setup/connect.php");

$profile_pic= mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id='".$_POST['id']."'"));
/*
if($_SESSION['access_level']!='admin')
{
    exit("unauthorized");
}
*/

?>
<div class="col-lg-12 col-xs-12">
  <div class="card card-success card-outline">
    <div class="card-header">


    </div>
    <div class="card-body table-responsive">
             <?php
            $sql_query = mysqli_query($dbc,"SELECT * FROM course_student WHERE student_name ='".$profile_pic['fName']."'  ORDER BY id DESC");
            $number = 1;
            if($total_rows = mysqli_num_rows($sql_query) > 0)
            {?>
              <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">
              <thead>
                <tr>
                     <td>No</td>
                  <td  width"240">Course Name</td>
                  <td  width"240">Institution</td>
                  <td>Start Date</td>
                  <td>End Date</td>
                  <td>Budgeted Amount</td>

                </tr>
              </thead>
              <?php
              while($row = mysqli_fetch_array($sql_query))
              {?>
              <tr style="cursor: pointer;">
                <td><?php echo $number++;?></td>

                <td><?php echo $row['subject'];?></td>
                <td>
                             <?php

                                  $result = mysqli_query($dbc, "SELECT * FROM cal_events WHERE subject ='".$row['subject']."'"  );
                                  if(mysqli_num_rows($result))
                                  {
                                    while($project= mysqli_fetch_array($result))
                                    {
                                        echo $project['description'];

                                    }
                                  }
                                  ?>

                                </td>


                <td>
                                  <?php
                                    $result = mysqli_fetch_array(mysqli_query($dbc, "SELECT * FROM cal_events WHERE subject ='".$row['subject']."'"));

                                  $sql_risk_drivers = "SELECT *  FROM cal_occurrences WHERE eid='".$result['eid']."' ";
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
                                $result = mysqli_fetch_array(mysqli_query($dbc, "SELECT * FROM cal_events WHERE subject ='".$row['subject']."'"));
                                  $sql_risk_drivers = "SELECT *  FROM cal_occurrences WHERE eid='".$result['eid']."' ";
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
                                  <td>
                                  <?php
                                $result = mysqli_fetch_array(mysqli_query($dbc, "SELECT * FROM cal_events WHERE subject ='".$row['subject']."'"));
                                  $sql_risk_drivers = "SELECT *  FROM individual_budget WHERE trainee_name ='".$row['student_name']."'  ORDER BY id DESC limit 1 ";
                                  if($driver_query = mysqli_query($dbc,$sql_risk_drivers))
                                     {
                                      while($risk_driver_row = mysqli_fetch_array($driver_query))
                                      {
                                        ?>
                                         <?php echo number_format($risk_driver_row['allocated_amount'],2);?>

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
  <div class="alert alert-success">
    <strong><i class="fa fa-info-circle"></i> No course has been scheduled</strong>
  </div>

              <?php
            }
            ?>
          </div>
          <!-- /.box-body -->
