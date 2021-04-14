<?php
	// Connect to database
	$servername = "remotemysql.com";
    $username = "PIedkerRef";
    $password = "P3pOR1VH6k";
    $dbname = "PIedkerRef";


	// Create connection
	$conn = mysqli_connect($servername, $username, $password, $dbname);

	// Check connection
	if (!$conn) {
	  die("Connection failed: " . mysqli_connect_error());
	}
?>
