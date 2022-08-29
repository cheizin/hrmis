<?php
if(!$_SERVER['REQUEST_METHOD'] == "POST")
{
  exit();
}
session_start();
include("../../controllers/setup/connect.php");


$row = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM cal_events WHERE eid ='".$_POST['eid']."'"));

$row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM whole_budget WHERE subject ='".$row['subject']."' ORDER BY id DESC LIMIT 1"));

$row3 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM individual_budget WHERE subject ='".$row['subject']."' ORDER BY id DESC LIMIT 1"));

?>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">
      <div class="card-header">

       <?php
$sql_query1 =  mysqli_query($dbc,"SELECT * FROM whole_budget WHERE subject ='".$row['subject']."'  ORDER BY id DESC LIMIT 1 ");

$number = 1;
if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
{?>
<div class="card-header">



  <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-budget-modal">


          <?php
   $sql_query1 =  mysqli_query($dbc,"SELECT * FROM individual_budget WHERE subject ='".$row['subject']."'  ORDER BY id DESC LIMIT 1 ");

   $number = 1;
   if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
   {?>
     <button style="float:right;"
             data-toggle="modal" data-target="#add-budget-modall">  Remaining Budget  <?php echo number_format($row3['remaining_amount'],2) ;?>
               </button>
                            <?php
        }

                  else {
                    ?>
                    <button class="btn btn-link" style="float:right;"
                            data-toggle="modal" data-target="#add-budget-modal">  Total Budgeted <?php echo number_format($row2['budget_amount'],2) ;?>
                             </button></br>
                    <?php
                          }
                              ?>

  <button class="btn btn-link" style="float:left;"
          data-toggle="modal" data-target="#add-individual-budget-modal">
          <i class="fa fa-plus-circle"></i> Allocate Funds for a Trainee
  </button>
</div>
<?php
}

else {
  ?>

  <button class="btn btn-link" style="float:right;"
          data-toggle="modal" data-target="#add-budget-modal">
          <i class="fa fa-plus-circle"></i> Add Total Budget Amount for <?php echo $row['subject'] ;?>
  </button>
  <?php
}
?>

      </div>
      <div class="card-body table-responsive">

        <?php
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM individual_budget WHERE subject= '".$row['subject']."' ORDER BY id ");

        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

       <table class="table table-striped table-bordered table-hover" id="invoice-received-table" style="width:100%">
         <thead>
           <tr>
             <td>#</td>
             <td>Personal Details</td>
              <td>Subject</td>
              <td>Allocated Amount</td>


           </tr>
         </thead>
         <?php
         $no = 1;
          $sql = mysqli_query($dbc,"SELECT * FROM individual_budget WHERE subject= '".$row['subject']."' ORDER BY id  DESC");
          while($row2 = mysqli_fetch_array($sql)){
          ?>
         <tr style="cursor: pointer;">
           <td width="50px"> <?php echo $no++;?>.

           </td>
           <td>
             <?php

                  $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['trainee_name']."'"  );
                  if(mysqli_num_rows($result))
                  {
                    while($project= mysqli_fetch_array($result))
                    {
                        echo $project['fName'];

                    }
                  }
                  ?>
              ,
                <?php

                     $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['trainee_name']."'"  );
                     if(mysqli_num_rows($result))
                     {
                       while($project= mysqli_fetch_array($result))
                       {
                           echo $project['lName'];

                       }
                     }
                     ?>


                   </br>
                   <?php

                        $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['trainee_name']."'"  );
                        if(mysqli_num_rows($result))
                        {
                          while($project= mysqli_fetch_array($result))
                          {
                              echo $project['gender'];

                          }
                        }
                        ?>
                      </br>
                      <?php

                           $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE fName ='".$row2['trainee_name']."'"  );
                           if(mysqli_num_rows($result))
                           {
                             while($project= mysqli_fetch_array($result))
                             {
                                 echo $project['location'];

                             }
                           }
                           ?>
             </td>
             <td>
               <?php  echo $row2['subject'];  ?>
               </td>
               <td>
                 <?php  echo number_format($row2['allocated_amount'],2); ?>

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
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No Budget has been added</strong>
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
     <div class="modal fade" id="add-budget-modal">
     <div class="modal-dialog" role="document">
       <div class="modal-content">
         <div class="modal-header alert alert-success">

           <h5 class="modal-title">Adding budget amount for course <strong><?php echo $row['subject'] ;?></strong></h5>
           <button type="button" class="close" data-dismiss="modal" aria-label="Close">
             <span aria-hidden="true">&times;</span>
           </button>
         </div>
         <div class="modal-body">
           <form id="whole-budget-form" class="mt-4" enctype="multipart/form-data">
             <input type="hidden" value="add-whole-budget" name="add-whole-budget">

             <input type="hidden" value="<?php echo $row['subject'] ;?>" name="subject">

   <div class="row border-bottom mx-3">

     <div class="col-lg-12 col-xs-12 form-group">
         <label><span class="required">*</span>Budget Amount</label>
           <input type="text" autocomplete="off" class="select2 form-control" name="budget_amount">
     </div>
               </div>



                                 <!-- start row button -->
                           <div class="row">
                             <div class="col-md-12 text-center">
                                 <button type="submit" class="btn btn-success btn-block font-weight-bold submitting">SUBMIT</button>
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

                   <!-- start add end product modal -->
                           <div class="modal fade" id="add-individual-budget-modal">
                        <div class="modal-dialog" role="document">
                               <div class="modal-content">
                                   <div class="modal-header alert alert-success">
                                   <h5 class="modal-title" id="exampleModalLongTitle">Individual Budgeting for the course <strong><?php echo $row['subject'] ;?></strong>:


                                       <div class="row">
                                           <div class="col-lg-6 col-xs-12 form-group">
                                             <label> Total Budget</label>


                                             <?php
                                      $sql_query1 =  mysqli_query($dbc,"SELECT * FROM individual_budget WHERE subject ='".$row['subject']."'  ORDER BY id DESC LIMIT 1 ");

                                      $number = 1;
                                      if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
                                      {?>
                    <input type="text"  class="select2 form-control budget_amount"  value ="<?php echo $row3['remaining_amount'];?>" name="budget_amount" readonly>
                                      <?php
                                      }

                                      else {
                                        ?>

          <input type="text"  class="select2 form-control budget_amount"  value ="<?php echo $row2['budget_amount'];?>" name="budget_amount" readonly>
                                        <?php
                                      }
                                      ?>



                                             </div>
                                             <div class="col-lg-6 col-xs-12 form-group">
                                               <label>New Budget Amount</label>
                                                 <input type="text"  class="select2 form-control new_budget_amount" name="remaining_amount" readonly>

                                               </div>


                                       </div>
                                         </div>
                           <!--  modal for stock update     -->
                                             <div class="modal-body">

                                               <form id="individual-budget-list-form">

                                               <!--  <input type="hidden" name="unique_reference_no" id="unique_reference_no" class="form-control" value="<?php echo $reference_row;?>" readonly="readonly">
                                               -->
                                             <!--  <input type="hidden"  class="select2 form-control new_stock_remaining" name="new_stock_remaining">
                                               -->

                                                            <input type="hidden" value="<?php echo $row['subject'] ;?>" name="subject">

                                                             <input type="hidden"  class="select2 form-control new_budget_amount" name="remaining_amount" readonly>


                                                                                                          <?php
                                                                                                   $sql_query1 =  mysqli_query($dbc,"SELECT * FROM individual_budget WHERE subject ='".$row['subject']."'  ORDER BY id DESC LIMIT 1 ");

                                                                                                   $number = 1;
                                                                                                   if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
                                                                                                   {?>
                                                                                 <input type="hidden"  class="select2 form-control budget_amount"  value ="<?php echo $row3['budget_amount'];?>" name="budget_amount" readonly>
                                                                                                   <?php
                                                                                                   }

                                                                                                   else {
                                                                                                     ?>

                                                                       <input type="hidden"  class="select2 form-control budget_amount"  value ="<?php echo $row2['budget_amount'];?>" name="budget_amount" readonly>
                                                                                                     <?php
                                                                                                   }
                                                                                                   ?>


                                                 <input type="hidden" name="budget-list" value="budget-list">

                                           <div class="row border-bottom mx-3">

                                             <div class="col-lg-6 col-xs-12 form-group">

                                                 <label for="qtt"><span class="required">*</span>Allocated Amount</label><br/>
                                               <input type="number" autocomplete="off" class="select2 form-control allocated_amt" name="allocated_amount" required>
                                             </div>

                                             <div class="col-lg-6 col-xs-12 form-group">
                                             <label><span class="required">*</span>Trainee Name</label>
                                             <?php
                                             $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE access_level = 'TRAINING_MANAGEMENT' || access_level = 'trainee' ");
                                             echo '
                                             <select name="trainee_name" data-tags="true" class="select2 form-control" data-placeholder="Select Student Name" required>
                                             <option></option>';
                                             while($row = mysqli_fetch_array($result)) {
                                                 echo '<option value="'.$row['fName'].'">'.$row['fName']."</option>";
                                             }
                                             echo '</select>';
                                             ?>
                                             </div>

                                             </div>

                                                 <div class="pull-left mt-4">
                                                   <small class="text-muted">Recorded by:- <?php echo $_SESSION['fName'];?></small>
                                                 </div>



                                       <!-- end row project timelines -->

                                             <!-- start row button -->
                                       <div class="row">
                                         <div class="col-md-12 text-center">
                                             <button type="submit" class="btn btn-primary btn-block font-weight-bold submitting2">SUBMIT</button>
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
                                       <!-- end update stock modal -->
