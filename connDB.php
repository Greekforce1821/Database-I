<?php 
	$servername = 'localhost';
	$username = 'skokotos.com';
	$password = 'NO9BJl0LLM4^h';
	$dbname = 'airport_db';
	
	$conn = new mysqli($servername, $username, $password, $dbname);
	
	if ($conn->connect_error) {
		die("Connection failed: ".$conn->connect_error);
	} else {
		mysqli_set_charset($conn, 'utf8');	
	}
	
?>