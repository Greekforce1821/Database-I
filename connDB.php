<?php 
	$servername = 'localhost';
	$username = 'root';
	$password = '';
	$dbname = 'airport db';
	
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	if ($conn->connect_error) {
		die("Connection failed: ".$conn->connect_error);
	} else {
		mysqli_set_charset($conn, 'utf8');	
	}
	
?>