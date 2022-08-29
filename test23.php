<?php
  session_start();
  include("../../controllers/setup/connect.php");

  if(!$_SERVER['REQUEST_METHOD'] == "POST")
  {
    exit();
  }

 ?>
 <div class="row">
 <table class="table table-striped table-bordered table-hover profit-loss-table" style="width:100%">
   <thead>
     <tr>
       <td>#</td>
       <td>Stock Name</td>

       <td>Unit Price</td>
       <td>Quantity Used</td>
       <td>Total</td>

     </tr>
   </thead>
     </tbody>
   <?php
      $no = 1;
      $sql= mysqli_query($dbc,"SELECT * FROM single_product GROUP BY end_product_ref");
      while($end_delivery = mysqli_fetch_array($sql))
      {
        ?>
        <tr style="cursor: pointer;">
          <td width="40px"><?php echo $no++ ;?>.

          </td>

          <td>

            <?php

                 $result = mysqli_query($dbc, "SELECT * FROM stock_item WHERE reference_no ='".$end_delivery['end_product_ref']."'  ORDER BY id "  );
                 if(mysqli_num_rows($result))
                 {
                   while($project= mysqli_fetch_array($result))
                   {

                      echo $project['item_name'];

                   }
                 }
                 ?>
            </td>
            <td>
                <?php echo $end_delivery['unit_price'] ;?>

                 </td>
           <td>
             <?php
               $get_remaining = mysqli_fetch_array(mysqli_query($dbc,"SELECT sum(qtt) as qtt FROM single_product WHERE end_product_ref ='".$end_delivery['end_product_ref']."'
                 ORDER BY id"));
               echo $get_remaining['qtt'];?>

                </td>
                <td>
                  <?php
                    $get_remaining = mysqli_fetch_array(mysqli_query($dbc,"SELECT sum(qtt) as qtt FROM single_product WHERE end_product_ref ='".$end_delivery['end_product_ref']."'
                      ORDER BY id"));

                    $Total123 = $get_remaining['qtt'] * $end_delivery['unit_price'] ;
                    echo $Total123

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



            </tr>
        </tfoot>
 </table>
 </div>
 <div class="row">
   <table class="table table-striped table-bordered table-hover profit-loss-table" style="width:100%">
     <thead>
       <tr>
         <td>#</td>
         <td>Product Name</td>

         <td>Unit Price</td>
         <td>Delivered Quantity</td>

         <td>Total Cost</td>


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
                  <?php echo $end_delivery['unit_price'] ;?>


                   </td>


             <td>
               <?php
                 $get_remaining = mysqli_fetch_array(mysqli_query($dbc,"SELECT sum(qtt) as qtt FROM customer_end_delivery WHERE end_product_ref ='".$end_delivery['end_product_ref']."'
                   ORDER BY id DESC LIMIT 1"));
                 echo $get_remaining['qtt'];?>

                  </td>
                  <td>
                    <?php
                    $get_remaining = mysqli_fetch_array(mysqli_query($dbc,"SELECT sum(qtt) as qtt FROM customer_end_delivery WHERE end_product_ref ='".$end_delivery['end_product_ref']."'
                      ORDER BY id DESC LIMIT 1"));

                      $Total123 = $get_remaining['qtt'] * $end_delivery['unit_price'] ;
                      echo $Total123

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



              </tr>
          </tfoot>
   </table>
 </div>
<script>
$("[data-toggle=popover]").popover();
</script>
