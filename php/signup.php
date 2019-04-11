<?php
require("dbconn.php");

//No validation applied to the following!
$username = $_POST['username'];
$password = $_POST['password'];
$role = $_POST['role'];
$prog_id = $_POST['progid'] ?? NULL;

$sql = "";

//Add code to check if the user exists first to avoid duplicate entries

//Insert the the new user into the database with the relevant values, if the user is an administrator then the prog_id would be null
$connection = connectToDb();
if (is_null($prog_id)){
$sql = "INSERT INTO user (username, password, role) VALUES ('" . $username . "', '" . $password . "', '" . $role . "')";
} else {
    $sql = "INSERT INTO user (username, password, role, prog_id) VALUES ('" . $username . "', '" . $password . "', '" . $role . "', '" . $prog_id . "')";
}
$result = $connection->query($sql);
closeDb($connection);
header("Location: ../index.php");