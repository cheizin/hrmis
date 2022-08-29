<?php


    require_once('controllers/setup/connect.php');


 require_once('phpmailer/PHPMailerAutoload.php');



$email = $_SESSION['email'];


    //$mail->isSMTP();                                            // Send using SMTP
    $mail->Host       = 'smtp.gmail.com';                    // Set the SMTP server to send through
    $mail->Port       = 587;                                    // TCP port to connect to, use 465 for `PHPMailer::ENCRYPTION_SMTPS` above
    $mail->SMTPSecure = 'tls';         // Enable TLS encryption; `PHPMailer::ENCRYPTION_SMTPS` encouraged

  //  $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'pcheizin@gmail.com';                     // SMTP username
    $mail->Password   = '9000@Kenya';                               // SMTP password

    //Recipients
    $mail->setFrom('nonreply@panorama.com', 'Panorama Inventory System');
    $mail->addAddress("$email", 'Panorama Inventory System');     // Add a recipient
    $mail->addAddress('inventory@panoramaengineering.com');               // Name is optional
  //  $mail->addReplyTo('info@example.com', 'Information');
 
  //  $mail->addBCC('bcc@example.com');

//$mail->setFrom('pcheizin@gmail.com', 'Panorama');
//$mail->addAddress(".$stock_approver.", ".$recorded_by.");     // Add a recipient

$mail->isHTML(true);                                  // Set email format to HTML
$mail->addAttachment('../../views/stock-item/documents/panoramaLogo.jpg'); 
$mail->Subject = 'Panorama Inventory System';
$mail->Body    = "Dear <b>All</b>, <br/><br/><br/>

The following Stock Item was Added In the system by:- <b>".$recorded_by."</b> <br/>
Stock Item: <b>".$item_name."</b><br/>Description: <b>".$item_description."</b><br/>Category: <b>".$category."</b><br/>Payment Method: <b> Bank</b>
<br/>Invoice Number: <b>".$invoice_received_id."</b><br/>Supplier: <b>".$supplier_name."</b><br/>
Unit price: <b>".$unit_price."</b><br/>Quantity: <b>".$qtt."</b><br/> Re Order Level: <b>".$stock_order_level."</b><br/>Stocks Total Value: <b>".$total."</b><br/>
<br/>
<br/><br/><br/>
Please log in to <a href='https://inventory.panoramaengineering.com/'>Panorama Inventory</a> to view Details.
<br/><br/><br/><br/><br/>
<b>This is an automated message, please do not reply</b>";

if(!$mail->send())
{
  echo 'Message not Sent';
}
else {
  echo 'Message has been sent';
}


//END OF POST REQUEST

 ?>
