<?php
  session_start();
  include("../../controllers/setup/connect.php");

  if(!$_SERVER['REQUEST_METHOD'] == "POST")
  {
    exit();
  }

 ?>

 <table class="table table-bordered table-striped table-hover" id="dashboard-invoice-payments-table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Invoice Number</th>
      <th scope="col">Supplier Name</th>
      <th scope="col">Total Credit</th>
      <th scope="col">Total Debit</th>
      <th scope="col">Balance</th>
    </tr>
  </thead>
  <tbody>
    <?php
        $no =1;

        $invoice_sql = mysqli_query($dbc,"SELECT *  FROM invoice_received");

        while($invoice_row = mysqli_fetch_array($invoice_sql))
        {
          ?>
          <tr>
            <th scope="row"><?php echo $no++;?></th>
            <td>
              <span>
                <small>
                  <?php echo $invoice_row['invoice_received_id'];?>
                </small><br/>
              </span>
            </td>
            <td>
        <?php
                        echo $invoice_row['supplier_id'];
                        

                   ?>

            </td>
            <td>
              <span>
                <small>
                  <?php echo number_format($invoice_row['total'],2) ;?>
                
                </small><br/>
              </span>
            </td>
            <td>
                <?php
              $result = mysqli_query($dbc, "SELECT sum(debit) as tot FROM invoice_received_payment WHERE invoice_received_id ='".$invoice_row['id']."' ORDER BY id"  );
           //   if(mysqli_num_rows($result))
             // {

                while($debit = mysqli_fetch_assoc($result))
                {
                  echo number_format($debit['tot'],2);
                 
                }
           //   }
              ?>
            </td>

            <td>
                <?php
              $result = mysqli_query($dbc, "SELECT sum(debit) as tot FROM invoice_received_payment WHERE invoice_received_id ='".$invoice_row['id']."' ORDER BY id"  );
           //   if(mysqli_num_rows($result))
             // {

                while($debit = mysqli_fetch_assoc($result))
                {

                  $difference = $invoice_row['total'] - $debit['tot'];
                  echo number_format($difference,2);
                  
                }
           //   }
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
          

          </tr>
      </tfoot>
</table>
<script>
$("[data-toggle=popover]").popover();
</script>
