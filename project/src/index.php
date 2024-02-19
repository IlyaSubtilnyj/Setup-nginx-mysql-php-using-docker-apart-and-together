<?php

// Create connection
$conn = new mysqli("db", "user", "password", "default_db", "3306");

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";
