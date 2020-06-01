<?php
function check() {
  session_start();

  if(!isset($_SESSION['username'])){
    header("location:login.php"); //μεταφορά στη σελίδα main.php	
  }

}

function connectWelcome(){
if(!empty($_POST)){
	if(!empty($_POST['username']) && !empty($_POST['password'])){
		
	
		//Σύνδεση της PHP στη MySQL
		$host="localhost";
		$username="root";
		$userpass="";
		$database="seven";
		$connection=@mysqli_connect($host,$username,$userpass,$database); //απενεργοποιεί τα warnings & erros του apache
		if(!$connection){
			echo "Mysql Connection Error";
			die();
		}
		
		
		
		$query="select * from users 
		where user_username like '".$_POST['username']."'
		AND user_password like '".hash("SHA512",$_POST['password'])."'";
		//εκτέλεση του ερωτήματος
		$user_record=mysqli_query($connection,$query);
		
		
		//επεξεργασία του αποτελέσματος του ερωτήματος
		if(mysqli_num_rows($user_record)>0){ //mysqli_num_rows() επιστρέφει τον αριθμο΄των εγγραφών ενος ερωτήματος
			session_start();
			$user_data=mysqli_fetch_assoc($user_record); //mysqli_fetch_assoc επιστρέφει την εγγραφή  σε μορφή πίνακα της php
			$_SESSION['username']=$user_data['user_username'];
			header("location:index.php"); //μεταφορά στη σελίδα main.php
		} else {
			$message= "Λάθος username & password";
		}	
		
	}

}
}





?>


