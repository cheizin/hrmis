<?php
session_start();
include("../../controllers/setup/connect.php");
 //$reference_row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM phpc_dstvpay ORDER BY id DESC limit 1"));


?>

<nav aria-label="breadcrumb">
     <ol class="breadcrumb">
   <li class="breadcrumb-item active" aria-current="page"> <b>   <strong>Budget for the scheduled Course List</strong></li></b>
     </ol>
</nav>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
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

             <td onclick="SelectBudgetList('<?php echo $row['eid'];?>');" title="Click here to view Budgetry <?php echo $row['subject'];?> Job">
                   <span class="text-primary" style="cursor:pointer;"><?php echo $row['subject'];?></span>
             </td>

                  <td><?php echo $row['description'];?></td>



                  <td>

                    <?php

$debit_amt = mysqli_query($dbc,"SELECT * FROM whole_budget WHERE subject ='".$row['subject']."' ORDER BY id");
if(mysqli_num_rows($debit_amt) > 0)
{


                         $result = mysqli_query($dbc, "SELECT * FROM whole_budget WHERE subject ='".$row['subject']."' ORDER BY id DESC LIMIT 1"  );
                         if(mysqli_num_rows($result))
                         {
                           while($project= mysqli_fetch_array($result))
                           {
                               echo number_format($project['budget_amount'],2);

                           }
                         }
                       }
                                     else {
                                       ?>
<span class="text-primary" style="cursor:pointer;">0.00</span>
                                       <?php
                                     }
                         ?>

                                    </td>

                                    <td>

                                      <?php
                                           $result = mysqli_query($dbc, "SELECT sum(allocated_amount) as tot FROM individual_budget WHERE subject ='".$row['subject']."' ORDER BY id"  );

                                           if(mysqli_num_rows($result))
                                           {
                                             while($project= mysqli_fetch_array($result))
                                             {
                                                 echo number_format($project['tot'],2);

                                             }
                                           }
                                           ?>
                                        </td>
                                    <td>

                                      <?php

                  $debit_amt = mysqli_query($dbc,"SELECT * FROM individual_budget WHERE subject ='".$row['subject']."' ORDER BY id");
                  if(mysqli_num_rows($debit_amt) > 0)
                  {

                                           $result = mysqli_query($dbc, "SELECT * FROM individual_budget WHERE subject ='".$row['subject']."' ORDER BY id DESC LIMIT 1"  );
                                           if(mysqli_num_rows($result))
                                           {
                                             while($project= mysqli_fetch_array($result))
                                             {
                                                 echo number_format($project['remaining_amount'],2);

                                             }
                                           }
                                                }
                                           else {
                                             ?>
      <span class="text-primary" style="cursor:pointer;">0.00</span>
                                             <?php
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
