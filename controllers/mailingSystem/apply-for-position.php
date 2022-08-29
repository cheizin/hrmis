<?php
session_start();

if($_SERVER['REQUEST_METHOD'] == 'POST')
{

    require_once('../setup/connect.php');
session_start();

 require_once('../../phpmailer/PHPMailerAutoload.php');
 $mail = new phpmailer;

 $email = mysqli_real_escape_string($dbc,strip_tags($_POST['email']));

   $id = mysqli_real_escape_string($dbc,strip_tags($_POST['id']));
   $status_name = mysqli_real_escape_string($dbc,strip_tags($_POST['status_name']));


   $name= mysqli_real_escape_string($dbc,strip_tags($_POST['name']));
   $job_title = mysqli_real_escape_string($dbc,strip_tags($_POST['job_title']));

 $recorded_by = $_SESSION['fName'];
 $time_recorded = date('Y/m/d H:i:s');

    //$mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged

  //  $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'pcheizin@gmail.com';                     // SMTP username
    $mail->Password   = '9000@Kenya';                               // SMTP password

    //Recipients
    $mail->setFrom('nonreply@hrmis.com', 'Recruitment System');
    $mail->addAddress("$email", 'Recruitment System');     // Add a recipient
    $mail->addAddress('pitarcheizin@gmail.com.com');               // Name is optional
  //  $mail->addReplyTo('info@example.com', 'Information');
  //    $mail->addCC('moffat1@panoramaengineering.com');
  //  $mail->addBCC('bcc@example.com');

//$mail->setFrom('pcheizin@gmail.com', 'Panorama');
//$mail->addAddress(".$stock_approver.", ".$recorded_by.");     // Add a recipient

$mail->isHTML(true);                                  // Set email format to HTML
//$mail->addAttachment('../../views/stock-item/documents/panoramaLogo.jpg');
$mail->Subject = 'Recruitment System';
$mail->Body    = "Dear <b>".$name."</b>, <br/><br/><br/>

Your Application for the position of:- <b>".$job_title."</b><br/>Has been updated to: <b>".$status_name."</b><br/>You will be notifid Notified soon for the next step:
<br/>

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
