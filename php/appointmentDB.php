<?php

$servername = 'localhost';
$username = 'root';
$password = '';
$dbname = 'rahbanipharmacy';

$conn = mysqli_connect($servername,$username,$password,$dbname);

function PhoneExists($conn,$phonenb){

	$result = mysqli_query($conn,"SELECT number FROM appointments WHERE number='$phonenb'");
	$check = mysqli_fetch_array($result);
	// for ($i=0; $i<count($result); $i++) {
  //     if($check[$i] == $phonenb)
  //       return true;
  //   }
  //   return false;

		if(sizeof($check)>0)
			{
				return true;
			}
			return false;
}

function EmailExists($conn,$email){
	$result = mysqli_query($conn,"SELECT email FROM appointments WHERE email='$email'");
	$check = mysqli_fetch_array($result);
	// for ($i=0; $i<count($result); $i++) {
  //     if($check[$i] == $email)
  //       return true;
  //   }
  //   return false;
	if(sizeof($check)>0)
		{
			return true;
		}
		return false;
}

if(isset($_POST['fname'])){

		if(PhoneExists($conn,$_POST['number'])){

			return Num();

		}
		if(EmailExists($conn,$_POST['email'])){

			return Email();

		}
		if(strtotime($_POST['date'])<strtotime(date("m/d/Y"))) {
			return TimeError();
		}
		else{

		$fname = $_POST['fname'];
		$lname = $_POST['lname'];
		$email = $_POST['email'];
		$number = $_POST['number'];
		$date = $_POST['date'];
		$rad = $_POST['rad'];


		mysqli_query($conn, "INSERT INTO appointments (fname, lname, email, pnumber,appointment, adate) values ('$fname','$lname','$email', '$number', '$rad','$date')");
		echo 'We will contact you shortly!';
		}



}


function Num(){
	echo 'This phone number already has an appointment.';
}

function Email(){
	echo 'This email already has an appointment.';
}

function TimeError(){
	echo 'Please pick an appropriate date.';
}





?>
