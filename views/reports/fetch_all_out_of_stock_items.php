<?php

session_start();
include("../../controllers/setup/connect.php");

if($_SERVER['REQUEST_METHOD'] == 'POST')
{

 if (!isset($_SESSION['email']))
 {
    exit("unauthenticated");
 }
  $row_start_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_start_date']));
  $row_end_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_end_date']));

    $sql = mysqli_query($dbc,
                            "SELECT * FROM single_product WHERE date_recorded BETWEEN '".$row_start_date."' AND '".$row_end_date."' GROUP BY end_product_ref "
                            );

/*  }*/

  if($sql)
  {
    $total_rows = mysqli_num_rows($sql);
    if($total_rows > 0)
    {

    ?>
    <div class="card">

     <!-- /.card-header -->
     <div class="card-body">
        <div class="table-responsive">
          <table class="table table-striped table-bordered table-hover" id="zero-stocks-in-production-report" style="width:100%">
            <thead>
              <tr>
                <td>#</td>
                <td>Stock Name</td>
                <td>Stock Price</td>
                <td>Quantity Used</td>
                <td>Re order Level</td>
                <td>Quantity Remaining</td>
                <td>Total</td>
                <td>Requested By</td>
                <td>Date requested</td>
                <td>Project Name</td>
              </tr>
            </thead>
            <?php
            $number = 1;
            while($row = mysqli_fetch_array($sql))
            {

                      $single_product = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM single_product WHERE end_product_ref ='".$row['end_product_ref']."' ORDER BY id DESC LIMIT 1"));
              $single_product23 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM invoice_received WHERE reference_no ='".$row['end_product_ref']."' ORDER BY id"));
              $single_product234 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM stock_item WHERE reference_no ='".$row['end_product_ref']."' ORDER BY id"));

              $bal234 = $single_product['stock_remaining'] - $single_product23['stock_order_level'];

$bal234 = $single_product['stock_remaining'] - $single_product23['stock_order_level'];
if($bal234 < 0)
{
?>
              <tr style="cursor: pointer;">
                <td width="50px"> <?php echo $number++;?>.

                </td>
                <td>
                  <?php
                  echo $single_product234['item_name'];
                       ?>


                 </td>
                 <td>
                   <?php
                   echo number_format($single_product23['unit_price'],2) ;

                        ?>
                  </td>

                <td><?php echo $single_product['qtt'];?></td>
                  <td><?php echo $single_product23['stock_order_level'];?></td>
                <td><?php echo $single_product['stock_remaining'];?></td>

                <td><?php echo number_format($single_product['total'],2) ;?></td>
                <td><?php echo $single_product['recorded_by'];?></td>
                <td><?php echo $single_product['time_recorded'];?></td>

                   <td>

                     <?php

                          $result = mysqli_query($dbc, "SELECT * FROM end_product WHERE id ='".$single_product['product_name']."'  "  );
                          if(mysqli_num_rows($result))
                          {
                            while($row_name = mysqli_fetch_array($result))
                            {

                               $result = mysqli_query($dbc, "SELECT * FROM customer WHERE id ='".$row_name['customer_id']."' "  );
                               if(mysqli_num_rows($result))
                               {
                                 while($project= mysqli_fetch_array($result))
                                 {

                                    echo $project['customer_name'];

                                 }
                               }

                            }
                          }
                          ?>


                      </td>
                </tr>
                <?php
                      }

                    ?>

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

                               </tr>
                           </tfoot>
          </table>
        </div>
     </div>
     <!-- /.card-body -->
     <div class="card-footer">

     </div>
     <!-- card-footer -->
   </div>
   <!-- /.card -->
     <?php
   } // end num row
   else  //no rows
   {
     ?>
     <div class="alert alert-danger alert-dismissible">
       <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
       <strong>No Records!<br/></strong> Sorry, no records found for the selected combination.
     </div>
     <?php
   }
  }
  else
  {
    exit(mysqli_error($dbc));
  }

}
else
{
  exit("NO data");
  ?>

 <?php
}
