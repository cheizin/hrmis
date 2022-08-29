<?php
require_once('../setup/connect.php');
session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST')
{


  //start of add job seeker
 if(isset($_POST['add-personal-details']))
{
  $cName = mysqli_real_escape_string($dbc,strip_tags($_POST['company_name']));
  $access_level = mysqli_real_escape_string($dbc,strip_tags($_POST['employee']));
  $fName = mysqli_real_escape_string($dbc,strip_tags($_POST['fName']));
  $lName = mysqli_real_escape_string($dbc,strip_tags($_POST['lName']));
  $dob = mysqli_real_escape_string($dbc,strip_tags($_POST['dob']));
  $gender = mysqli_real_escape_string($dbc,strip_tags($_POST['gender']));

  $Email = mysqli_real_escape_string($dbc,strip_tags($_POST['Email']));
  $location = mysqli_real_escape_string($dbc,strip_tags($_POST['location']));
    $contact= mysqli_real_escape_string($dbc,strip_tags($_POST['contact']));
  $nationality= mysqli_real_escape_string($dbc,strip_tags($_POST['nationality']));

  $highestQualification = mysqli_real_escape_string($dbc,strip_tags($_POST['religion']));
    $currentPosition = mysqli_real_escape_string($dbc,strip_tags($_POST['county']));
  $experience = mysqli_real_escape_string($dbc,strip_tags($_POST['ethnic']));

  $password = mysqli_real_escape_string($dbc,strip_tags(md5($_POST['password'])));

  $passwordmd5 = md5($password);


  $date_recorded = date('d-M-yy');



  $time_recorded = date('Y/m/d H:i:s');

/* set autocommit to off */
mysqli_autocommit($dbc, FALSE);

$sql_insert= mysqli_query($dbc,"INSERT INTO staff_users
      (companyName, fName, lName, dob, gender, Email, location,access_level, contact, nationality, highestQualification,currentPosition,experience,  date_recorded,time_recorded, password)
        VALUES ('".$cName."','".$fName."','".$lName."','".$dob."', '".$gender."', '".$Email."','".$location."','".$access_level."', '".$contact."',
          '".$nationality."','".$highestQualification."',  '".$currentPosition."','".$experience."','".$date_recorded."',  '".$time_recorded."','".$password."')") or die (mysqli_error($dbc));


//log the action
$action_reference = "Added Employee " . $fName;
$action_name = "Employee Information Creation";
$action_icon = "far fa-project-diagram text-success";
$page_id = "Job Seeker Application Details";
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


// deactivate a user account_no
else if(isset($_POST['deactivate_user']))
{
  /* set autocommit to off */
  mysqli_autocommit($dbc, FALSE);


  $id = mysqli_real_escape_string($dbc,strip_tags($_POST['sid']));
  $status = mysqli_real_escape_string($dbc,strip_tags($_POST['status']));

  $change_status = mysqli_query($dbc,"UPDATE staff_users SET status='$status' WHERE id='".$id."'");

  //log the action
  $action_reference = "Changed the status of the user with id " . $id. " to ".$status;
  $action_name = "User Status Change";
  $action_icon = "fal fa-exclamation-square text-info";
  $page_id = "project-issue-logs-tab";
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

//start of job recruiter
else if(isset($_POST['add-bank-details']))
{
  $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
$bank_name = mysqli_real_escape_string($dbc,strip_tags($_POST['bank_name']));
$bank_branch = mysqli_real_escape_string($dbc,strip_tags($_POST['bank_branch']));
$account_no= mysqli_real_escape_string($dbc,strip_tags($_POST['account_no']));

$time_recorded = date('Y/m/d H:i:s');

/* set autocommit to off */
mysqli_autocommit($dbc, FALSE);

$sql_insert= mysqli_query($dbc,"INSERT INTO bank_details
    (reference_no, bank_name, bank_branch, account_no,time_recorded)
      VALUES ('".$reference_no."','".$bank_name."','".$bank_branch."', '".$account_no."', '".$time_recorded."')") or die (mysqli_error($dbc));


//log the action
$action_reference = "Added Bank Details" . $bank_name;
$action_name = "Bank Information Creation";
$action_icon = "far fa-project-diagram text-success";
$page_id = "Job Seeker Application Details";
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

  else if(isset($_POST['add-statutory-details']))
  {
      $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
    $id_number = mysqli_real_escape_string($dbc,strip_tags($_POST['id_number']));
  $pin_number = mysqli_real_escape_string($dbc,strip_tags($_POST['pin_number']));
  $nssf_number = mysqli_real_escape_string($dbc,strip_tags($_POST['nssf_number']));
  $nhif_number = mysqli_real_escape_string($dbc,strip_tags($_POST['nhif_number']));

  $time_recorded = date('Y/m/d H:i:s');

  /* set autocommit to off */
  mysqli_autocommit($dbc, FALSE);

  $sql_insert= mysqli_query($dbc,"INSERT INTO statutory_details
      (reference_no, id_number, pin_number, nssf_number, nhif_number,time_recorded)
        VALUES ('".$reference_no."','".$id_number."','".$pin_number."', '".$nssf_number."', '".$nhif_number."', '".$time_recorded."')") or die (mysqli_error($dbc));


  //log the action
  $action_reference = "Added Statutory Details for " . $reference_no;
  $action_name = "Stautory Information Creation";
  $action_icon = "far fa-project-diagram text-success";
  $page_id = "Job Seeker Application Details";
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

    else if(isset($_POST['add-employment-details']))
    {
      $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
    $department_name = mysqli_real_escape_string($dbc,strip_tags($_POST['department_name']));
  $emp_type = mysqli_real_escape_string($dbc,strip_tags($_POST['emp_type']));
  $supervisor = mysqli_real_escape_string($dbc,strip_tags($_POST['supervisor']));
  $job_title = mysqli_real_escape_string($dbc,strip_tags($_POST['job_title']));

  $grade_name = mysqli_real_escape_string($dbc,strip_tags($_POST['grade_name']));
$product_start_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_start_date']));
$product_end_date = mysqli_real_escape_string($dbc,strip_tags($_POST['product_end_date']));
$duration = mysqli_real_escape_string($dbc,strip_tags($_POST['duration']));
$job_responsibilities = mysqli_real_escape_string($dbc,strip_tags($_POST['job_responsibilities']));


$date_recorded = date('d-M-yy');
  $time_recorded = date('Y/m/d H:i:s');

  /* set autocommit to off */
  mysqli_autocommit($dbc, FALSE);

  $sql_insert= mysqli_query($dbc,"INSERT INTO employment_details_module
      (reference_no, department, employment_type, job_title, supervisor, job_grade, start_date, end_date, duration, job_responsibilities, date_recorded, time_recorded)
        VALUES ('".$reference_no."','".$department_name."','".$emp_type."', '".$job_title."', '".$supervisor."','".$grade_name."', '".$product_start_date."', '".$product_end_date."', '".$duration."','".$job_responsibilities."','".$date_recorded."', '".$time_recorded."')") or die (mysqli_error($dbc));


  //log the action
  $action_reference = "Added Employment terms for " . $reference_no;
  $action_name = "Employment Information Creation";
  $action_icon = "far fa-project-diagram text-success";
  $page_id = " Application Details";
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

      // view test Details
      else if(isset($_POST['add-dependants-details']))
      {
        //$email = mysqli_real_escape_string($dbc,strip_tags($_POST['email']));

        $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
      $dependant_name = mysqli_real_escape_string($dbc,strip_tags($_POST['dependant_name']));
    $relationship = mysqli_real_escape_string($dbc,strip_tags($_POST['relationship']));
    $contact = mysqli_real_escape_string($dbc,strip_tags($_POST['contact']));
    $dob = mysqli_real_escape_string($dbc,strip_tags($_POST['dob']));

    $gender = mysqli_real_escape_string($dbc,strip_tags($_POST['gender']));

  $date_recorded = date('d-M-yy');
    $time_recorded = date('Y/m/d H:i:s');

    /* set autocommit to off */
    mysqli_autocommit($dbc, FALSE);

    $sql_insert= mysqli_query($dbc,"INSERT INTO dependants_details
        (reference_no, dependant_name, relationship, gender, dob, contact,date_recorded, time_recorded)
          VALUES ('".$reference_no."','".$dependant_name."','".$relationship."', '".$gender."', '".$dob."','".$contact."', '".$date_recorded."',
            '".$time_recorded."')") or die (mysqli_error($dbc));


    //log the action
    $action_reference = "Added Dependant for " . $reference_no;
    $action_name = "Dependants Information Creation";
    $action_icon = "far fa-project-diagram text-success";
    $page_id = " Application Details";
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

        else if(isset($_POST['add-professional-history']))
        {
            $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
            $email = mysqli_real_escape_string($dbc,strip_tags($_POST['email']));
          $comp_name= mysqli_real_escape_string($dbc,strip_tags($_POST['comp_name']));
          $industry = mysqli_real_escape_string($dbc,strip_tags($_POST['industry']));
          $job_title = mysqli_real_escape_string($dbc,strip_tags($_POST['job_title']));
          $country = mysqli_real_escape_string($dbc,strip_tags($_POST['country']));

          $work_type = mysqli_real_escape_string($dbc,strip_tags($_POST['work_type']));
          $monthly_salary = mysqli_real_escape_string($dbc,strip_tags($_POST['monthly_salary']));
            $job_level = mysqli_real_escape_string($dbc,strip_tags($_POST['job_level']));
          $start_date = mysqli_real_escape_string($dbc,strip_tags($_POST['start_date']));
          $end_date = mysqli_real_escape_string($dbc,strip_tags($_POST['end_date']));
          $duration = mysqli_real_escape_string($dbc,strip_tags($_POST['duration']));

          $experience = mysqli_real_escape_string($dbc,strip_tags($_POST['experience']));
          $job_responsibilities = mysqli_real_escape_string($dbc,strip_tags($_POST['job_responsibilities']));

          $date_recorded = date('d-M-yy');
          $time_recorded = date('Y/m/d H:i:s');

        /* set autocommit to off */
        mysqli_autocommit($dbc, FALSE);

        $sql_insert= mysqli_query($dbc,"INSERT INTO employment_history
              (reference_no, email, comp_name, industry, job_title, country, work_type, monthly_salary, job_level, start_date, end_date, duration,
                 job_responsibilities, date_recorded,time_recorded)
                VALUES ('".$reference_no."','".$email."','".$comp_name."','".$industry."', '".$job_title."', '".$country."','".$work_type."', '".$monthly_salary."',
                  '".$job_level."','".$start_date."', '".$end_date."','".$duration."','".$job_responsibilities."',
                  '".$date_recorded."','".$time_recorded."')") or die (mysqli_error($dbc));


        //log the action
        $action_reference = "Added WOrk History " . $comp_name;
        $action_name = "Personal Information Creation";
        $action_icon = "far fa-project-diagram text-success";
        $page_id = "Job Seeker Application Details";
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



    else if(isset($_POST['add-academic-details']))
    {
          $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
      $email = mysqli_real_escape_string($dbc,strip_tags($_POST['email']));
        $school_name = mysqli_real_escape_string($dbc,strip_tags($_POST['school_name']));
      $qualification= mysqli_real_escape_string($dbc,strip_tags($_POST['qualification']));
      $qualification_name = mysqli_real_escape_string($dbc,strip_tags($_POST['qualification_name']));
      $start_date = mysqli_real_escape_string($dbc,strip_tags($_POST['start_date']));
      $end_date = mysqli_real_escape_string($dbc,strip_tags($_POST['end_date']));
      $duration = mysqli_real_escape_string($dbc,strip_tags($_POST['duration']));

      $description = mysqli_real_escape_string($dbc,strip_tags($_POST['description']));

      $date_recorded = date('d-M-yy');
      $time_recorded = date('Y/m/d H:i:s');

    /* set autocommit to off */
    mysqli_autocommit($dbc, FALSE);

    $sql_insert= mysqli_query($dbc,"INSERT INTO education_history
          (reference_no, email, school_name, qualification,qualification_name, start_date, end_date, duration,
             description, date_recorded,time_recorded)
            VALUES ('".$reference_no."','".$email."','".$school_name."','".$qualification."', '".$qualification_name."','".$start_date."', '".$end_date."','".$duration."','".$description."',
              '".$date_recorded."','".$time_recorded."')") or die (mysqli_error($dbc));


    //log the action
    $action_reference = "Added Academic History " . $school_name;
    $action_name = "Academic Information Creation";
    $action_icon = "far fa-project-diagram text-success";
    $page_id = "Job Seeker Application Details";
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

      else if(isset($_POST['add-certificate-details']))
      {

          $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
        $email = mysqli_real_escape_string($dbc,strip_tags($_POST['email']));
          $award_name = mysqli_real_escape_string($dbc,strip_tags($_POST['award_name']));
        $institution = mysqli_real_escape_string($dbc,strip_tags($_POST['institution']));
        $type = mysqli_real_escape_string($dbc,strip_tags($_POST['type']));
        $year_received= mysqli_real_escape_string($dbc,strip_tags($_POST['year_received']));

        $date_created = date('d-M-yy');
        $time_recorded = date('Y/m/d H:i:s');

      /* set autocommit to off */
      mysqli_autocommit($dbc, FALSE);

      $sql_insert= mysqli_query($dbc,"INSERT INTO awards
            (reference_no, email, award_name, institution,type, year_received, date_created,time_recorded)
              VALUES ('".$reference_no."','".$email."','".$award_name."','".$institution."', '".$type."','".$year_received."', '".$date_created."','".$time_recorded."')")
              or die (mysqli_error($dbc));

      //log the action
      $action_reference = "Added Awards History " . $reference_no;
      $action_name = "Awards Information Creation";
      $action_icon = "far fa-project-diagram text-success";
      $page_id = "Job Seeker Application Details";
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

        else if(isset($_POST['add-evidence-details']))
        {


          $reference_no = mysqli_real_escape_string($dbc,strip_tags($_POST['reference_no']));
        //  $product_name = mysqli_real_escape_string($dbc,strip_tags($_POST['product_name']));
            $recorded_by = $_SESSION['fName'];

              $email = $_SESSION['email'];
          // Upload file

          $uploadDir = '../../views/stock-item/documents/';
          $uploadStatus = 1;
          $uploadedFile = '';
          if(!empty($_FILES["additional_file"]["name"])){

              // File path config
              $fileName = basename($_FILES["additional_file"]["name"]);
              $targetFilePath = $uploadDir . $fileName;
              $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

              // Allow certain file formats
              $allowTypes = array('pdf', 'doc', 'docx');
              if(in_array($fileType, $allowTypes)){
                  // Upload file to the server
                  if(move_uploaded_file($_FILES["additional_file"]["tmp_name"], $targetFilePath)){
                      $additional_file = $fileName;
                  }else{
                      $uploadStatus = 0;
                      exit('error-uploading');
                  }
              }else{
                  $uploadStatus = 0;
                  exit('invalid-file');
              }
          }
          else
          {
            $additional_file = '';
          }

          // Upload file

          $uploadDir = '../../views/stock-item/documents/';
          $uploadStatus = 1;
          $uploadedFile = '';
          if(!empty($_FILES["additional_file2"]["name"])){

              // File path config
              $fileName = basename($_FILES["additional_file2"]["name"]);
              $targetFilePath = $uploadDir . $fileName;
              $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

              // Allow certain file formats
              $allowTypes = array('pdf', 'doc', 'docx');
              if(in_array($fileType, $allowTypes)){
                  // Upload file to the server
                  if(move_uploaded_file($_FILES["additional_file2"]["tmp_name"], $targetFilePath)){
                      $additional_file2 = $fileName;
                  }else{
                      $uploadStatus = 0;
                      exit('error-uploading');
                  }
              }else{
                  $uploadStatus = 0;
                  exit('invalid-file');
              }
          }
          else
          {
            $additional_file2 = '';
          }



          $uploadDir = '../../views/stock-item/documents/';
          $uploadStatus = 1;
          $uploadedFile = '';
          if(!empty($_FILES["file"]["name"])){

              // File path config
              $fileName = basename($_FILES["file"]["name"]);
              $targetFilePath = $uploadDir . $fileName;
              $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

              // Allow certain file formats
              $allowTypes = array('pdf', 'doc', 'docx');
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


            $insert_documents = mysqli_query($dbc,"INSERT INTO all_evidence_document
              (reference_no, cv, college_doc, kcse_doc, recorded_by)
            VALUES ('".$email."','".$additional_file."', '".$additional_file2."','".$uploadedFile."','".$recorded_by."')") or die (mysqli_error($dbc));



          //log the action
          $action_reference = "Attached Evidence Documents for the reference " . $reference_no;
          $action_name = "Documents Attachments";
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




        else if(isset($_POST['add-job-skills-history']))
        {

          //start of pdo FOR activity owners
          foreach ($_POST['skill_name'] as $selectedOption)
          {
            $email = mysqli_real_escape_string($dbc,strip_tags($_POST['email']));
              $skill_name = mysqli_real_escape_string($dbc,strip_tags($_POST['skill_name']));

  $query = mysqli_query($dbc,"
              INSERT INTO selected_job_skills
              (email,skill_name)
              VALUES
              ('".$email."','".$selectedOption."')

          ") or die (mysqli_error($dbc));

        //  $query = mysqli_query($dbc,"
            //          UPDATE selected_job_skills SET skill_name = ('".$skill_name."')
            //          WHERE email ='".$email."'") or die (mysqli_error($dbc));
}

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


      else if(isset($_POST['add-delivery-evidence-document']))
      {

        $id = mysqli_real_escape_string($dbc,strip_tags($_POST['id']));
        $product_name = mysqli_real_escape_string($dbc,strip_tags($_POST['product_name']));
          $recorded_by = $_SESSION['name'];
        // Upload file

        $uploadDir = '../../views/stock-item/documents/';
        $uploadStatus = 1;
        $uploadedFile = '';
        if(!empty($_FILES["additional_file"]["name"])){

            // File path config
            $fileName = basename($_FILES["additional_file"]["name"]);
            $targetFilePath = $uploadDir . $fileName;
            $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

            // Allow certain file formats
            $allowTypes = array('pdf', 'doc', 'docx');
            if(in_array($fileType, $allowTypes)){
                // Upload file to the server
                if(move_uploaded_file($_FILES["additional_file"]["tmp_name"], $targetFilePath)){
                    $additional_file = $fileName;
                }else{
                    $uploadStatus = 0;
                    exit('error-uploading');
                }
            }else{
                $uploadStatus = 0;
                exit('invalid-file');
            }
        }
        else
        {
          $additional_file = '';
        }

        // Upload file

        $uploadDir = '../../views/stock-item/documents/';
        $uploadStatus = 1;
        $uploadedFile = '';
        if(!empty($_FILES["additional_file2"]["name"])){

            // File path config
            $fileName = basename($_FILES["additional_file2"]["name"]);
            $targetFilePath = $uploadDir . $fileName;
            $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

            // Allow certain file formats
            $allowTypes = array('pdf', 'doc', 'docx');
            if(in_array($fileType, $allowTypes)){
                // Upload file to the server
                if(move_uploaded_file($_FILES["additional_file2"]["tmp_name"], $targetFilePath)){
                    $additional_file2 = $fileName;
                }else{
                    $uploadStatus = 0;
                    exit('error-uploading');
                }
            }else{
                $uploadStatus = 0;
                exit('invalid-file');
            }
        }
        else
        {
          $additional_file2 = '';
        }



        $uploadDir = '../../views/stock-item/documents/';
        $uploadStatus = 1;
        $uploadedFile = '';
        if(!empty($_FILES["file"]["name"])){

            // File path config
            $fileName = basename($_FILES["file"]["name"]);
            $targetFilePath = $uploadDir . $fileName;
            $fileType = pathinfo($targetFilePath, PATHINFO_EXTENSION);

            // Allow certain file formats
            $allowTypes = array('pdf', 'doc', 'docx');
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


          $insert_documents = mysqli_query($dbc,"INSERT INTO all_evidence_document
            (reference_no, delivery_note_doc,purchase_order_doc, invoice_doc, recorded_by)
          VALUES ('".$id."','".$additional_file."', '".$additional_file2."','".$uploadedFile."','".$recorded_by."')") or die (mysqli_error($dbc));



        //log the action
        $action_reference = "Attached Evidence Documents for the End Product " . $product_name;
        $action_name = "Documents Attachments";
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
