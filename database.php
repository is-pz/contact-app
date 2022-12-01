<?php

$host = "localhost";

$database = "contacts_app";

$user = "root";

$password = "";

try{

  $conn = new PDO("mysql:host=$host;dbname=$database", $user, $password);
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

}catch(PDOException $e){
  die("PDO Connection error:" . $e->getMessage());
}
