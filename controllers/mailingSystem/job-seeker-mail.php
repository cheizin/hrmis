<?php
session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST')
{

    require_once('../setup/connect.php');
session_start();

 require_once('../../phpmailer/PHPMailerAutoload.php');
 $mail = new phpmailer;

 $access_level = mysqli_real_escape_string($dbc,strip_tags($_POST['job-seeker']));
 $fName = mysqli_real_escape_string($dbc,strip_tags($_POST['fName']));
 $lName = mysqli_real_escape_string($dbc,strip_tags($_POST['lName']));
 $dob = mysqli_real_escape_string($dbc,strip_tags($_POST['dob']));
 $gender = mysqli_real_escape_string($dbc,strip_tags($_POST['gender']));

 $Email = mysqli_real_escape_string($dbc,strip_tags($_POST['Email']));
 $location = mysqli_real_escape_string($dbc,strip_tags($_POST['location']));
   $contact= mysqli_real_escape_string($dbc,strip_tags($_POST['contact']));
 $nationality= mysqli_real_escape_string($dbc,strip_tags($_POST['nationality']));
 $highestQualification = mysqli_real_escape_string($dbc,strip_tags($_POST['highestQualification']));
 $currentPosition = mysqli_real_escape_string($dbc,strip_tags($_POST['currentPosition']));
 $companyName = mysqli_real_escape_string($dbc,strip_tags($_POST['companyName']));

 $experience = mysqli_real_escape_string($dbc,strip_tags($_POST['experience']));

$total = mysqli_real_escape_string($dbc,strip_tags($_POST['total']));


$date_recorded = date('d-M-yy');

$recorded_by = $_SESSION['fName'];

$email = $_SESSION['email'];


    //$mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged

  //  $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'pcheizin@gmail.com';                     // SMTP username
    $mail->Password   = '9000@Kenya';                               // SMTP password

    //Recipients
    $mail->setFrom('pcheizin@gmail.com', 'Recruitment System');
    $mail->addAddress("$email", 'Recruitment System');     // Add a recipient
    $mail->addAddress('pitarcheizin@gmail.com');               // Name is optional
  //  $mail->addReplyTo('info@example.com', 'Information');
  //    $mail->addCC('moffat1@panoramaengineering.com');
  //  $mail->addBCC('bcc@example.com');

//$mail->setFrom('pcheizin@gmail.com', 'Panorama');
//$mail->addAddress(".$stock_approver.", ".$recorded_by.");     // Add a recipient

$mail->isHTML(true);                                  // Set email format to HTML
//$mail->addAttachment('../../views/stock-item/documents/panoramaLogo.jpg');
$mail->Subject = 'Recruitment System';
$mail->Body    = "Dear <b>".$fName."</b>, <br/><br/><br/>

You have Registered as a Job Seeker in The recruitment System as follows:-
First Name: <b>".$fName."</b><br/>Last Name: <b>".$lName."</b><br/>Date of Birth: <b>".$dob."</b>
<br/>Email: <b>".$email."</b><br/>Location: <b>".$location."</b><br/>
Contact: <b>".$contact."</b><br/>Nationality: <b>".$nationality."</b><br/> Highest Qualification: <b>".$highestQualificationl."</b><br/>Current Position: <b>".$currentPosition."</b><br/>
Company Name: <b>".$comp_name."</b><br/> Experience: <b>".$experience."</b><br/>

<br/>
<br/><br/><br/>
Please log in to <a href='https://hrmis.wisegeneration.co.ke/'>HRMIS</a> to view Details.
<br/><br/><br/><br/><br/>
<b>This is an automated message, please do not reply</b>";

if(!$mail->send())
{
  echo 'Message not Sent';
}
else {
  echo 'Message has been sent';
}

}
//END OF POST REQUEST

 ?>
