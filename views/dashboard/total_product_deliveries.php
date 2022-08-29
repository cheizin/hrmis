<?php
  session_start();
  include("../../controllers/setup/connect.php");

  if(!$_SERVER['REQUEST_METHOD'] == "POST")
  {
    exit();
  }

 ?>
 <table class="table table-striped table-bordered table-hover delivery-util-table" style="width:100%">
   <thead>
     <tr>
       <td>#</td>
       <td>Product Name</td>

       <td>Quantity Required</td>
       <td>Delivered Quantity</td>\
       <td>No of Deliveries</td>
       <td>Quantity Remaining</td>
       <td>Customer Name</td>

     </tr>
   </thead>
     </tbody>
   <?php
      $no = 1;
      $sql= mysqli_query($dbc,"SELECT * FROM customer_end_delivery GROUP BY end_product_ref");
      while($end_delivery = mysqli_fetch_array($sql))
      {
        ?>
        <tr style="cursor: pointer;">
          <td width="40px"><?php echo $no++ ;?>.

          </td>

          <td>

            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM end_product WHERE id ='".$end_delivery['end_product_ref']."'  ORDER BY id "  );
                 if(mysqli_num_rows($result))
                 {
                   while($project= mysqli_fetch_array($result))
                   {

                      echo $project['product_name'];

                   }
                 }
                 ?>
            </td>

          <td>
            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM end_product WHERE id ='".$end_delivery['end_product_ref']."'  ORDER BY id "  );
                 if(mysqli_num_rows($result))
                 {
                   while($project= mysqli_fetch_array($result))
                   {

                      echo $project['qtt'];

                   }
                 }
                 ?>
                  </td>

           <td>
             <?php
               $get_remaining = mysqli_fetch_array(mysqli_query($dbc,"SELECT sum(qtt) as qtt FROM customer_end_delivery WHERE end_product_ref ='".$end_delivery['end_product_ref']."'
                 ORDER BY id DESC LIMIT 1"));
               echo $get_remaining['qtt'];?>

                </td>

                <td>
                  <?php
                    $get_remaining = mysqli_fetch_array(mysqli_query($dbc,"SELECT count(*) AS  qtt FROM customer_end_delivery WHERE end_product_ref ='".$end_delivery['end_product_ref']."'
                    GROUP BY end_product_ref"));
                    echo $get_remaining['qtt'];?>

                     </td>

          <td><?php
            $get_remaining = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM customer_end_delivery WHERE end_product_ref ='".$end_delivery['end_product_ref']."'
              ORDER BY id DESC LIMIT 1"));
            echo $get_remaining['stock_remaining'];?>


          </td>

          <td>
            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM end_product WHERE id ='".$end_delivery['end_product_ref']."'  ORDER BY id "  );
                 if(mysqli_num_rows($result))
                 {
                   while($project= mysqli_fetch_array($result))
                   {

                     $get_customer = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM customer WHERE id='".$project['customer_id']."'
                       ORDER BY id DESC LIMIT 1"));
                     echo $get_customer['customer_name'];


                   }
                 }
                 ?>
                  </td>



        </tr>
        <?php
      }
    ?>
      </tbody>
    <tfoot style="background:silver;">
            <tr>
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
<script>
$("[data-toggle=popover]").popover();
</script>
