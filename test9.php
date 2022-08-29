<?php
session_start();
include("../../controllers/setup/connect.php");
?>

    <!-- Content Header (Page header) -->
      <section class="content-header">

        <div class="modal fade"  role="dialog" id="add-ps1-modal" aria-hidden="true">
    <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Add Payment for DSTV <strong>7017086069</strong> Ref DSPAY /</h5>
        <div class="col-lg-4 col-xs-12 form-group">
              <!--<label for="reference_no">Risk Reference No</label>-->
              <?php
              //fetch last reference number from database and auto increment it
              $reference_row = mysqli_fetch_array(mysqli_query($dbc,"SELECT MAX(id) AS ref_no FROM phpc_dstvpay"));

              $reference_row = $reference_row['ref_no'];
              //add programm name prefix, plus the auto incremented value
              $reference_row = $reference_row+1;

              ?>
            <input type="text" name="reference_no" id="reference_no" class="form-control" value="<?php echo $reference_row;?>" readonly="readonly">
        </div>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">

        <form id="add-ds-payment"  enctype="multipart/form-data">

                <!-- start row Dstv payment information -->
                <div class="row">
                  <div class="col-lg-12 col-xs-12">
                             <div class="row">

                                       <div class="row">
                              <div class="col-lg-12 col-xs-8" id="loader">
                              </div>
                              <div id="feedback_message">

                              </div>
                            </div>

                            <div class="col-lg-3 col-xs-8 form-group">
                   <label for="trans_code">Subscription Amount</label>

                      <select name="sub_amount" id="sub_amount" class="select form-control"  readonly>


                          </select>
                  </div>


                            <div class="col-lg-3 col-xs-8 form-group">


                   <label for="trans_code">Account No</label>


                      <select name="no_device" id="account" class="select form-control"  readonly>


                          </select>
                  </div>


                         </div>

                     <div class="row">
                          <div class="col-lg-3 col-xs-12 form-group">

                   <!-- Loader and error info row -->

                              <label for="subscription_type"><span class="required">*</span>Subscription Type</label>
                              <?php
                              $result = mysqli_query($dbc, "SELECT * FROM phpc_dstv_subscription ORDER BY id ASC");
                              echo '
                              <select name="subscription_type" class="select form-control"  id="subscription_type" onChange="getDsAmount();"  required>
                              <option value="">Please select subscription...</option>';
                              while($row = mysqli_fetch_array($result)) {
                                  echo '<option value="'.$row['id'].'">'.$row['subscription_type']."</option>";
                              }
                              echo '</select>';
                              ?>
                          </div>

                                                <div class="col-lg-3 col-xs-8 form-group">
                              <label for="gateway"><span class="required">*</span>Payment Gateway</label>
                              <?php
                              $result = mysqli_query($dbc, "SELECT * FROM phpc_gateway ORDER BY id ASC");
                              echo '
                              <select name="gateway" class="select form-control" id="gateway" onChange="getAccount();" required>
                              <option value="">Please select payment option...</option>';
                              while($row = mysqli_fetch_array($result)) {
                                  echo '<option value="'.$row['id'].'">'.$row['gateway']."</option>";
                              }
                              echo '</select>';
                              ?>

                          </div>


                    <div class="col-lg-3 col-xs-12 form-group">
                      <label for="trans_code"><span class="required">*</span>Transaction Code</label>
                      <input type="text" class="form-control" name="trans_Code" required>
                  </div>


                   </div>

                   <div class="row">
                          <div class="col-lg-3 col-xs-12 form-group">
                              <label for="Sub_date"><span class="required">*</span>Subscription Start Date</label>
                              <div class="input-group date">
                                  <div class="input-group-addon">
                                      <i class="fa fa-calendar"></i>
                                  </div>


                                  <input id="from"  autocomplete="off" class="form-control pull-right datepicker" name="Sub_date"   required>
                              </div>
                          </div>
                          <div class="col-lg-3 col-xs-12 form-group">
                              <label for="due_date"><span class="required">*</span>Subscription Due Date</label>
                              <div class="input-group date">
                                  <div class="input-group-addon">
                                      <i class="fa fa-calendar"></i>
                                  </div>
                                  <input id="to"  autocomplete="off" class="form-control pull-right datepicker" name="due_date"  required>
                              </div>
                          </div>

                          <div class="col-lg-3 col-xs-12 form-group">
                      <label for="View_Days">Viewing Days</label>
                      <input type="text"  autocomplete="off" class="form-control" name="View_Days"  id = "view_days">
                      <div id="finalDagen" class="data1"></div>
                  </div>

                                  <div class="row">

                      <div class="col-md-12 text-center">
                          <button type="submit" class="btn btn-primary">Add Payment</button>
                      </div>

                </div>
                <!-- end row button -->
              </div>
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

        <div class="row">
          <div class="col-xs-12">
                <h3 class="box-title"> Click on the ref no to view utilization</h3>

            <h3> </h3><button class="btn btn-link" style="float:center;" data-toggle="modal" data-target="#add-ps1-modal"><i class="fa fa-plus-circle"></i> Click here to Add Dstv Payment</button> </h3>

            </div>
            </div>


                             <?php
                               /*
                               $sql_query = mysqli_query($dbc,"SELECT * FROM phpc_dstvpay ORDER BY id DESC");



                               while($row = mysqli_fetch_array($sql_query))
                               {

                           $results2 = mysqli_query($dbc,"SELECT sum(amount) from phpc_dstv_subscription where id = '".$row['subscription_id']."'");


                           $rows2 = mysqli_fetch_assoc($results2);
                            echo $row2['amount'];
                              if(mysqli_num_rows($results2) > 0)
                              {
                                while ($fetch_description1 = mysqli_fetch_array($results2))
                                {
                              echo $fetch_description1['amount'];

                                }
                              }
                            }
                            */
                        ?>


                      <div class="row">
                    <div class="col-xs-12">
                      <div class="box">
                        <div class="box-header">

                        </div>


           <div class="box-body table-responsive no-padding">
               <?php

              $sql_query = mysqli_query($dbc,"SELECT * FROM phpc_dstvpay ORDER BY id DESC");
              $number = 1;
              if($total_rows = mysqli_num_rows($sql_query) > 0)
              {?>

              <table id="dstv_payment_table" class="table table-hover table-bordered table-striped">

                <thead>
                  <tr>
                    <td>ID</td>
                    <td>ref_no</td>
                    <td>subscription type</td>

                    <td>sub date</td>
                    <td>due date</td>
                    <td>view days</td>
                    <td>Payment Type</td>
                    <td>Account</td>
                    <td>Amount</td>

                    <td>transaction id</td>

                  </tr>
                </thead>
                <?php
                while($row = mysqli_fetch_array($sql_query))
                {?>
                <tr style="cursor: pointer;">
                  <td><?php echo $number++;?></td>


                    <td onclick="SelectReference('<?php echo $row['ref_no'];?>');">
                   <a href="#">

                  <button type="submit" name="submit" class="btn btn-info">   <?php echo $row['ref_no'];?>  </button>
                   </a>
                 </td>

                   <td>

                           <?php
                         $results = mysqli_query($dbc,"SELECT * from phpc_dstv_subscription where id = '".$row['subscription_id']."'");

                            if(mysqli_num_rows($results) > 0)
                            {
                              while ($fetch_description = mysqli_fetch_array($results))
                              {
                              echo $fetch_description['subscription_type'];
                              }
                            }
                      ?>

                  </td>
                  <td><?php echo $row['sub_date'];?></td>
                  <td><?php echo $row['due_date'];?></td>
                  <td><?php echo $row['view_days'];?></td>
                  <td>

                           <?php
                         $results = mysqli_query($dbc,"SELECT * from phpc_gateway where id = '".$row['payment_id']."'");

                            if(mysqli_num_rows($results) > 0)
                            {
                              while ($fetch_description = mysqli_fetch_array($results))
                              {
                              echo $fetch_description['gateway'];
                              }
                            }
                      ?>
                   </td>
                    <td>

                           <?php
                         $results = mysqli_query($dbc,"SELECT * from phpc_gateway where id = '".$row['payment_id']."'");

                            if(mysqli_num_rows($results) > 0)
                            {
                              while ($fetch_description = mysqli_fetch_array($results))
                              {
                              echo $fetch_description['account_no'];
                              }
                            }
                      ?>
                   </td>


                     <td>

                           <?php
                         $results = mysqli_query($dbc,"SELECT * from phpc_dstv_subscription where id = '".$row['subscription_id']."'");

                            if(mysqli_num_rows($results) > 0)
                            {
                              while ($fetch_description = mysqli_fetch_array($results))
                              {
                              echo $fetch_description['amount'];
                              }
                            }
                      ?>

                  </td>
                  <td><?php echo $row['trans_code'];?></td>


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
                               <th></th>
                              <th></th>
                              <th></th>
                              <th></th>

                          </tr>
                      </tfoot>

              </table>
              <?php
              }
              else
              {
                        ?>
                  <br/>
    <div class="alert alert-info">
      <strong><i class="fa fa-info-circle"></i> No payment has been made</strong>
    </div>

                <?php
              }
              ?>
            </div>
             </div>
              </div>
               </div>

            <!-- start row button -->

    </section>
    <!-- /.content -->
  </div>


<script>
jQuery(function ($) {
    var $from = $("#from"),
        $to = $("#to");

    $from.datepicker({
        numberOfMonths: 1,
        minDate: 0,
        dateFormat: 'dd-mm-yy',
        onClose: function (selectedDate) {
            $to.datepicker("option", "minDate", selectedDate);
        }
    });

    $to.datepicker({
        defaultDate: "+1w",
        numberOfMonths: 1,
        minDate: 0,
        dateFormat: 'dd-mm-yy',
        onClose: function (selectedDate) {
            $from.datepicker("option", "maxDate", selectedDate);
        }
    });
    $from.add($to).change(function () {
        var dayFrom = $from.datepicker('getDate');
        var dayTo = $to.datepicker('getDate');
        if (dayFrom && dayTo) {
            var days = calcDaysBetween(dayFrom, dayTo);

            $('#finalDagen').html(days);
        }
    });

    function calcDaysBetween(startDate, endDate) {
        return (endDate - startDate) / (1000 * 60 * 60 * 24);
    }
});
</script>
<script src="controllers/custom.js"></script>

<script>


    //Date picker
    $('.datepicker').datepicker({
      autoclose: true

    });

    //select 2
    $('.select2').select2({
      tags: true

    });

    //color selector
    $('#colorselector').colorselector();


</script>

<script>
    var address = $("#finalDagen").text();
$("#View_Days").val(View_Days);


    alert(view_days);

</script>
</body>
</html>
