<?php
session_start();
include("../../controllers/setup/connect.php");

?>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
    <li class="breadcrumb-item active" aria-current="page">Requested Messages</li>
  </ol>
</nav>

<div class="row">
  <div class="col-lg-12 col-xs-12">
    <div class="card card-success card-outline">

      <div class="card-body table-responsive">

        <?php
        $sql_query1 =  mysqli_query($dbc,"SELECT * FROM request_application  ORDER BY id");

        $number = 1;
        if($total_rows1 = mysqli_num_rows($sql_query1) > 0)
        {?>

     <table class="table table-striped table-bordered table-hover" id="end-product-table" style="width:100%">

         <thead>
           <tr>
             <td>#</td>
             <td>Requester Name</td>
             <td>Requested Name</td>
             <td>Position</td>
             <td>Special Information</td>
                  <td>Action</td>

          <!--   <td>Status</td> -->
           </tr>
         </thead>
         <?php
         $no = 1;
          $sql = mysqli_query($dbc,"SELECT * FROM request_application  ORDER BY id DESC");
          while($row = mysqli_fetch_array($sql)){
          ?>
         <tr style="cursor: pointer;">
           <td width="50px"> <?php echo $no++;?>.

           </td>

            <td> <b><?php echo $row['recorded_by'] ;?> </td>
                <td>
                  <?php

                       $result = mysqli_query($dbc, "SELECT * FROM staff_users WHERE id ='".$row['reference_no']."'ORDER BY id "  );
                       if(mysqli_num_rows($result))
                       {
                         while($profile_pic = mysqli_fetch_array($result))
                         {
                           ?>
                           <?php echo $profile_pic['fName']; ?>

                        <?php

                         }
                       }
                       ?>
                       </td>

                    <td> <b><?php echo $row['post_name'] ;?> </td>
                        <td> <b><?php echo $row['special_info'] ;?> </td>

                        <?php  $row2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE job_title ='".$row['post_name']."'")); ?>

                          <td onclick="applyJob('<?php echo $row2['id'];?>');" title="Click here to Apply For <?php echo $row2['job_title'];?> Job">
                                <span class="text-primary" style="cursor:pointer;">Apply Now</span>
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
</div>

<?php
}
else
{
      ?>
    <br/>
<div class="alert alert-success">
<strong><i class="fa fa-info-circle"></i> No Job Posted</strong>
</div>

  <?php
}
?>
