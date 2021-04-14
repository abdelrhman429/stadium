<?php
	// Connect to database
	$servername = "remotemysql.com";
    $username = "Fh2MuPZ0Od";
    $password = "4x9nwR0f97";
    $dbname = "Fh2MuPZ0Od";


	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);

	// Check connection
	if (!$conn) {
	  die("Connection failed: " . mysqli_connect_error());
	}
?>
