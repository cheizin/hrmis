<?php
require_once('../setup/connect.php');
session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST')
{


  //if its stock creation
  if(isset($_POST['add-stock']))
  {
    $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
    $item_name = mysqli_real_escape_string($dbc,strip_tags($_POST['item_name']));
    $item_description = mysqli_real_escape_string($dbc,strip_tags($_POST['item_description']));
    $category = mysqli_real_escape_string($dbc,strip_tags($_POST['category']));

    $payment_type = mysqli_real_escape_string($dbc,strip_tags($_POST['payment_type']));
    $invoice_received_id = mysqli_real_escape_string($dbc,strip_tags($_POST['invoice_received_id']));
      $supplier_name= mysqli_real_escape_string($dbc,strip_tags($_POST['supplier_name']));
    $unit_price= mysqli_real_escape_string($dbc,strip_tags($_POST['unit_price']));
    $qtt= mysqli_real_escape_string($dbc,strip_tags($_POST['qtt']));
    $order_level = mysqli_real_escape_string($dbc,strip_tags($_POST['order_level']));
  $total = mysqli_real_escape_string($dbc,strip_tags($_POST['total']));


    $date_recorded = date('d-M-yy');

    $recorded_by = $_SESSION['name'];


        // Upload file
        $uploadDir = '../../views/stock-item/documents/';
        $uploadStatus = 1;
        $uploadedFile = '';
        if(!empty($_FILES["file"]["name"])){

            // File path config
            $fileName = basename($_FILES["file"]["name"]);
            $targetFilePath = $uploadDir . $fileName;
            $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

            // Allow certain file formats
            $allowTypes = array('pdf', 'doc', 'DOCX');
            if(in_array($fileType, $allowTypes)){
                // Upload file to the server
                if(move_uploaded_file($_FILES["file"]["tmp_name"], $targetFilePath)){
                    $uploadedFile = $fileName;
                }else{
                    $uploadStatus = 0;
                    exit('error-uploading');
                }
            }else{
                $uploadStatus = 0;
                exit('invalid-file');
            }
        }
        if($uploadStatus == 1)
        {
          //insert records to stock item


      /* set autocommit to off */
      mysqli_autocommit($dbc, FALSE);

      $sql_insert= mysqli_query($dbc,"INSERT INTO stock_item
              (reference_no, item_name,item_description,category_id,date_recorded,recorded_by)
                                         VALUES
                                         ('".$reference_no."','".$item_name."', '".$item_description."', '".$category."',
                                           '".$date_recorded."','".$recorded_by."') ") or die (mysqli_error($dbc));

      $insert_invoice = mysqli_query($dbc,"INSERT INTO invoice_received
        (reference_no, supplier_id, invoice_received_id, unit_price, qtt,order_level, total, document, payment_type, date_recorded, recorded_by)
      VALUES ('".$reference_no."','".$supplier_name."".$invoice_received_id."', '".$unit_price."', '".$qtt."', '".$order_level."','".$total."',
        '".$uploadedFile."', '".$payment_type."','".$date_recorded."','".$recorded_by."')") or die (mysqli_error($dbc));


    //log the action
    $action_reference = "Added a Stock Item " . $item_name; "From supplier " . $supplier_name;
    $action_name = "Stock Creation";
    $action_icon = "far fa-project-diagram text-success";
    $page_id = "stock-management-link";
    $time_recorded = date('Y/m/d H:i:s');

    $sql_log = mysqli_query($dbc,"INSERT INTO activity_logs
                    (email,action_name,action_reference,action_icon,page_id,time_recorded)
                        VALUES
                ('".$_SESSION['email']."','".$action_name."','".$action_reference."',
                        '".$action_icon."','".$page_id."','".$time_recorded."')"
                 );

      if(mysqli_commit($dbc))
      {
          exit("success");
      }

    else
    {
      mysqli_rollback($dbc);
      exit("failed");
    }

    }
    }



  //end of add stock

  //start of add product category
  else if(isset($_POST['add-product-category']))
  {
    $category_name = mysqli_real_escape_string($dbc,strip_tags($_POST['category_name']));

    $recorded_by = $_SESSION['name'];

    /* set autocommit to off */
    mysqli_autocommit($dbc, FALSE);
    $sql_insert_issue = mysqli_query($dbc,"INSERT INTO product_category
                          (category_name, recorded_by)
                  VALUES
                          ('".$category_name."',  '".$recorded_by."')
                 ") or die (mysqli_error($dbc));

  //log the action
  $action_reference = "Added a product category ".$category_name;
  $action_name = "Product category Creation";
  $action_icon = "fad fa-pennant text-info";
  $page_id = "stock-category-management-link";
  $time_recorded = date('Y/m/d H:i:s');

  $sql_log = mysqli_query($dbc,"INSERT INTO activity_logs
                  (email,action_name,action_reference,action_icon,page_id,time_recorded)
                      VALUES
              ('".$_SESSION['email']."','".$action_name."','".$action_reference."',
                      '".$action_icon."','".$page_id."','".$time_recorded."')"
               );

    if(mysqli_commit($dbc))
    {
        exit("success");
    }

  else
  {
    mysqli_rollback($dbc);
    exit("failed");
  }


  }

  //end of edit project

  //start close project

  else if(isset($_POST['close_project']))
  {
    /* set autocommit to off */
    mysqli_autocommit($dbc, FALSE);


    $id = mysqli_real_escape_string($dbc,strip_tags($_POST['sid']));

    $close_project = mysqli_query($dbc,"UPDATE pm_projects SET status='closed' WHERE id='".$id."'");

    //log the action
    $action_reference = "Closed the project with the id " . $id;
    $action_name = "Project Closure";
    $action_icon = "fal fa-trash-alt text-danger";
    $page_id = "monitor-projects-link";
    $time_recorded = date('Y/m/d H:i:s');

    $sql_log = mysqli_query($dbc,"INSERT INTO activity_logs
                    (email,action_name,action_reference,action_icon,page_id,time_recorded)
                        VALUES
                ('".$_SESSION['email']."','".$action_name."','".$action_reference."',
                        '".$action_icon."','".$page_id."','".$time_recorded."')"
                 );

   if(mysqli_commit($dbc))
    {
      exit("success");
    }
    else
    {
      mysqli_rollback($dbc);
      exit("failed");
    }
  }
  //end close project

  //start phase update project

  else if(isset($_POST['add_project_phase']))
  {

    mysqli_autocommit($dbc, FALSE);

    $project_id = mysqli_real_escape_string($dbc,strip_tags($_POST['project_id']));
    $project_phase = mysqli_real_escape_string($dbc,strip_tags($_POST['project_phase']));

    $date_recorded = date('d-M-yy');
    $recorded_by = $_SESSION['name'];


    $insert_project_phase = mysqli_query($dbc,"INSERT INTO pm_projects_update
                                           (project_id,project_phase,date_recorded,recorded_by)
                                       VALUES
                                       ('".$project_id."','".$project_phase."','".$date_recorded."','".$recorded_by."')
                             ") or die (mysqli_error($dbc));


    //log the action
    $action_reference = "Updated Project Phase with the id " . $project_id;
    $action_name = "Project Phase update";
    $action_icon = "fal fa-trash-alt text-danger";
    $page_id = "monitor-projects-link";
    $time_recorded = date('Y/m/d H:i:s');

    $sql_log = mysqli_query($dbc,"INSERT INTO activity_logs
                    (email,action_name,action_reference,action_icon,page_id,time_recorded)
                        VALUES
                ('".$_SESSION['email']."','".$action_name."','".$action_reference."',
                        '".$action_icon."','".$page_id."','".$time_recorded."')"
                 );

   if(mysqli_commit($dbc))
    {
      exit("success");
    }
    else
    {
      mysqli_rollback($dbc);
      exit("failed");
    }
  }
  //end update project phase

  // add project status

  else if(isset($_POST['add_project_status']))
  {

    mysqli_autocommit($dbc, FALSE);

    $project_id = mysqli_real_escape_string($dbc,strip_tags($_POST['project_id']));
    $project_status = mysqli_real_escape_string($dbc,strip_tags($_POST['project_status']));

    $date_recorded = date('d-M-yy');
    $recorded_by = $_SESSION['name'];


    $insert_project_phase = mysqli_query($dbc,"INSERT INTO pm_projects_update_status
                                           (project_id,project_status,date_recorded,recorded_by)
                                       VALUES
                                       ('".$project_id."','".$project_status."','".$date_recorded."','".$recorded_by."')
                             ") or die (mysqli_error($dbc));


    //log the action
    $action_reference = "Updated Project Status with the id " . $project_id;
    $action_name = "Project Phase update";
    $action_icon = "fal fa-trash-alt text-danger";
    $page_id = "monitor-projects-link";
    $time_recorded = date('Y/m/d H:i:s');

    $sql_log = mysqli_query($dbc,"INSERT INTO activity_logs
                    (email,action_name,action_reference,action_icon,page_id,time_recorded)
                        VALUES
                ('".$_SESSION['email']."','".$action_name."','".$action_reference."',
                        '".$action_icon."','".$page_id."','".$time_recorded."')"
                 );

   if(mysqli_commit($dbc))
    {
      exit("success");
    }
    else
    {
      mysqli_rollback($dbc);
      exit("failed");
    }
  }
  //end update project status



}

//END OF POST REQUEST


?>
