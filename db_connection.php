<?php
//change details accoding to your system/server
$server = 'localhost';
$user = 'root';
$dbName = 'resume(cv)';
$password = '';
$conn = new mysqli($server,$user,$password,$dbName);

if($conn->connect_error){
    echo 'Error' . $conn->connect_error;
}