<?php
session_start();
include("../../controllers/setup/connect.php");
if($_SERVER['REQUEST_METHOD'] == "POST")
{
  if(isset($_SESSION['email']))
  {
      $fetch_photo = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE email='".$_SESSION['email']."'"));

      $fetch_approver = mysqli_fetch_array(mysqli_query($dbc,"SELECT * from stock_approvers
                                          WHERE stock_approver ='".$_SESSION['email']."'
                                                      ORDER BY id DESC"));

        $fetch_stock = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM invoice_received WHERE reference_no='".$fetch_approver['stock_id']."'"));
        $fetch_stock2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM stock_item WHERE reference_no='".$fetch_approver['stock_id']."'"));

        $delivery_approver = mysqli_fetch_array(mysqli_query($dbc,"SELECT * from delivery_approvers
                                            WHERE delivery_approver ='".$_SESSION['email']."'
                                                        ORDER BY id DESC"));

          $fetch_product = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM end_product WHERE id ='".$delivery_approver['product_id']."'"));
        //  $fetch_product2 = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM stock_item WHERE reference_no='".$delivery_approver['product_id']."'"));

        //    $fetch_stock_name = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM stock_item WHERE reference_no ='".$fetch_approver['stock_id']."'"));


      ?>
      <!-- Notifications Dropdown Menu -->
      <?php
      //fetch department email

      $updated_risks = mysqli_query($dbc,"SELECT * from request_application
          WHERE status = 'sent' && reference_no IN
              (SELECT id from staff_users WHERE id ='".$_SESSION['id']."')
                    ORDER BY id DESC"  );



        //  $updated_risks2 = mysqli_query($dbc,"SELECT * from invoice_received
        //      WHERE reference_no ='".$fetch_approver['stock_id']."'
          //            ORDER BY id DESC"  );
        $count_status_updated = mysqli_num_rows($updated_risks);
        ?>

      <li class="nav-item dropdown">
        <a class="nav-link text-light" data-toggle="dropdown" href="#" title="Stock Updates">
          <?php
            if($count_status_updated > 0)
            {
              ?>
                <i class="fas fa-bell faa-ring animated"></i>
                <span class="badge badge-danger navbar-badge"><?php echo $count_status_updated;?></span>
              <?php
            }
            else
            {
              ?>
              <i class="fas fa-bell"></i>
              <span class="badge badge-danger navbar-badge"></span>
              <?php
            }
           ?>


        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <?php
          if($count_status_updated > 0)
            {
              if($count_status_updated > 1)
              {
                $risks = 'Messages';
              }
              elseif($count_status_updated == 1) {
                $risks = 'Message';
              }
              ?><span class="dropdown-item dropdown-header"><?php echo ''.$count_status_updated.' '.$risks.'from Recruiter' ;?></span><?php
            }
            else {
              ?><span class="dropdown-item dropdown-header">You have no notifications</span><?php
            }
            ?>
          <div class="dropdown-divider"></div>
          <?php
            while($risk = mysqli_fetch_array($updated_risks))
            {
              ?>
                  <a href="#" class="dropdown-item stock-approvals-link quarterly-update-notification inventory-management-module">
                    <div class="media">
                    <?php  $fetch_email = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM request_application WHERE reference_no ='".$risk['reference_no']."'")); ?>
                      <?php $fetch_specific_photo = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE id ='".$risk['reference_no']."'")); ?>
                      <img src="assets/img/<?php echo $fetch_specific_photo['emp_photo'];?>" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                      <div class="media-body">
                        <h3 class="dropdown-item-title">
                          <small class="text-sm text-primary text-wrap">

                         <?php  echo $risk['post_name']; ?>
                          </small>
                          <br/>
                          <small class="text-sm text-primary text-wrap">

                         <?php  echo $risk['special_info']; ?>
                       </small>



                          <span class="float-right text-sm text-primary" data-toggle="tooltip" title="This notification was sent with High Importance"><i class="fas fa-exclamation-circle"></i></span>
                        </h3>
                        <small class="text-sm text-muted"><i class="fad fa-user-circle"></i>            <?php  echo $risk['recorded_by']; ?></small>
                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i>             <?php  echo $risk['time_recorded'];   ?></p>
                      </div>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
              <?php

            }
            ?>
        </div>
      </li>
      <!-- end of notifications -->


      <!-- start new/edited comments -->
      <?php


      $query_status = mysqli_query($dbc,"SELECT * from application_status_details
          WHERE email = '".$_SESSION['email']."'" );

        $count_status = mysqli_num_rows($query_status);

      ?>
      <li class="nav-item dropdown">
        <a class="nav-link text-light" data-toggle="dropdown" href="#" title="Deliveries">
          <?php
            if($count_status > 0)
            {
              ?>
              <i class="fas fa-flag faa-tada animated"></i>
              <span class="badge badge-warning navbar-badge"><?php echo $count_status;?></span>
              <?php
            }
            else
            {
              ?>
              <i class="fas fa-flag"></i>
              <span class="badge badge-warning navbar-badge"></span>
              <?php
            }

           ?>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <?php
          if($count_status < 1)
            {
              ?><span class="dropdown-item dropdown-header">You have no notifications</span><?php
            }
            else
            {
              if($count_status > 1)
              {
                $risks = 'Recruiters';
              }
              elseif($count_status == 1) {
                $risks = 'Recruiter';
              }
              ?><span class="dropdown-item dropdown-header"><?php echo ''.$count_status.' '.$risks.' Application Status' ;?></span><?php
            }
            ?>
          <div class="dropdown-divider"></div>
          <?php
            while($risk = mysqli_fetch_array($query_status))
            {
              ?>
              <a href="#" class="dropdown-item delivery-approvals-link quarterly-update-notification inventory-management-module">
                <div class="media">
                <?php  $fetch_specific_photo = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE fName ='".$risk['recorded_by']."'")); ?>
                  <?php $fetch_details = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Email ='".$risk['email']."'")); ?>

                  <?php $post_name = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM job_posting WHERE email ='".$fetch_specific_photo['Email']."'")); ?>
                  <img src="assets/img/<?php echo $fetch_specific_photo['emp_photo'];?>" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                  <div class="media-body">
                    <h3 class="dropdown-item-title">
                      <small class="text-sm text-primary text-wrap">

                  Position:    <?php  echo $post_name['job_title']; ?>
                      </small>
                      <br/>
                      <small class="text-sm text-primary text-wrap">

                    Status: <?php  echo $risk['status_name']; ?>
                   </small>



                      <span class="float-right text-sm text-primary" data-toggle="tooltip" title="This notification was sent with High Importance"><i class="fas fa-exclamation-circle"></i></span>
                    </h3>
                    <small class="text-sm text-muted"><i class="fad fa-user-circle"></i>            <?php  echo $risk['recorded_by']; ?></small>
                    <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i>             <?php  echo $risk['time_recorded'];   ?></p>
                  </div>
                </div>
              </a>
              <div class="dropdown-divider"></div>
              <?php

            }
            ?>
        </div>
      </li>
      <!-- end new/edited  comments -->


      <!-- start comments from hod -->
      <?php
      //fetch department email
      $get_commentor = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM approval_comments_quarterly  WHERE (commented_to_email ='".$_SESSION['email']."')

      UNION

      SELECT * FROM approval_comments_new_edited WHERE (commented_to_email ='".$_SESSION['email']."')
      "));

      $dep_title_row = $dep_email['Name'];
      $query_status = mysqli_query($dbc,"SELECT * FROM approval_comments_quarterly WHERE (commented_to_email ='".$_SESSION['email']."' && viewed = 'no')

      UNION

      SELECT * FROM approval_comments_new_edited WHERE (commented_to_email ='".$_SESSION['email']."' && viewed = 'no')

       ");
      $count_status = mysqli_num_rows($query_status);

      ?>
      <li class="nav-item dropdown">
        <a class="nav-link text-light" data-toggle="dropdown" href="#" title="Comments from HOD">
          <?php
            if($count_status > 0)
            {
              ?>
              <i class="fas fa-comment-alt-lines faa-horizontal animated"></i>
              <span class="badge badge-success navbar-badge"><?php echo $count_status;?></span>
              <?php
            }
            else
            {
              ?>
              <i class="fas fa-comment-lines"></i>
              <span class="badge badge-success navbar-badge"></span>
              <?php
            }

           ?>

        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
          <?php
          if($count_status > 0)
            {
              ?><span class="dropdown-item dropdown-header"><?php echo 'You have '.$count_status.' risk comments from : -' ;?></span><?php
            }
            else
            {
              ?><span class="dropdown-item dropdown-header">You have no message</span><?php

            }
            ?>
          <div class="dropdown-divider"></div>
          <?php
            while($risk = mysqli_fetch_array($query_status))
            {
              $depcode = strstr($risk['reference_no'], '/', true);

              ?>
                  <a href="#" class="dropdown-item" onclick="ViewRisk('<?php echo $risk['reference_no'];?>','<?php echo $depcode;?>');">
                    <div class="media">
                      <?php $fetch_specific_photo = mysqli_fetch_array(mysqli_query($dbc,"SELECT * FROM staff_users WHERE Name ='".$risk['commented_by']."'")); ?>
                      <img src="assets/img/<?php echo $fetch_specific_photo['emp_photo'];?>" alt="User Avatar" class="img-size-50 mr-3 img-circle">
                      <div class="media-body">
                        <h3 class="dropdown-item-title">
                          <small class="text-sm text-primary text-wrap"><?php echo $risk['comment'];?></small>
                          <span class="float-right text-sm text-primary" data-toggle="tooltip" title="This notification was sent with High Importance"><i class="fas fa-exclamation-circle"></i></span>
                        </h3>
                        <small class="text-sm text-muted"><i class="fad fa-user-circle"></i> <?php echo $risk['commented_by'];?></small>
                        <p class="text-sm text-muted"><i class="far fa-clock mr-1"></i> <?php echo $risk['date_commented'];?></p>
                      </div>
                    </div>
                  </a>
                  <div class="dropdown-divider"></div>
              <?php

            }
            ?>
        </div>
      </li>
      <!-- end comments from hod -->

      <li class="nav-item">
        <a class="nav-link text-light log-out-link" href="?logout">
          <i class="fas fa-power-off"></i> Log Out
        </a>
        <span class="feedback-spinner"></span>
      </li>
      <?php
  }
  else
  {
    //display nothing
  }
}
else
{
  echo "form not submitted";
}

 ?>
