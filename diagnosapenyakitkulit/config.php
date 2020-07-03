<?php

$host = "localhost";
$username = "root";
$password = "";
$db = "kulit";

($GLOBALS["___mysqli_ston"] = mysqli_connect($host,  $username,  $password)) or die("Gagal koneksi...".mysqli_error($GLOBALS["___mysqli_ston"]));
mysqli_select_db($GLOBALS["___mysqli_ston"], $db) or die("Database tidak ditemukan...".mysqli_error($GLOBALS["___mysqli_ston"]));
?>