<?php	
	function sendOTP($email,$otp) {
		require 'C:\xampp\htdocs\PHPMailer\src\PHPMailer.php';
		require 'C:\xampp\htdocs\PHPMailer\src\SMTP.php';
		require 'C:\xampp\htdocs\PHPMailer\src\Exception.php';
		$message_body = "One Time Password for PHP login authentication is:<br/><br/>" . $otp;
		$mail = new PHPMailer\PHPMailer\PHPMailer();
		$mail->IsSMTP();
		$mail->Mailer   = "smtp";
		$mail->SMTPDebug = 0;
		$mail->SMTPAuth = TRUE;
		$mail->SMTPSecure = 'ssl';
		$mail->Host = 'smtp.gmail.com';
		$mail->Port     = "465";
		$mail->Username = "mail@gmail.com";
		$mail->Password = "pass";
		$mail->SetFrom("iwp.verify@gmail.com", "IWP");
		$mail->AddAddress($email);
		$mail->Subject = "OTP to Login";
		$mail->MsgHTML($message_body);
		$mail->IsHTML(true);		
		$result = $mail->Send();
		
		return $result;
	}
?>