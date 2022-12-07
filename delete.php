<?php


require_once 'database.php';

session_start();

if (!isset($_SESSION["user"])) {
  header("Location: login.php");
  return;
}

$id = $_GET["id"];

$statement = $conn->prepare("SELECT * FROM contacts WHERE id = :id LIMIT 1");
$statement->execute([":id" => $id]);

if ($statement->rowCount() == 0) {
  http_response_code(404);
  echo("HTTP 404 NOT FOUND");
  return;
}

$conn->prepare("DELETE FROM contacts WHERE id = :id")->execute([":id" => $id]);

$_SESSION["flash"] = ["message" => "Contact {$contact['name']} deleted."];

header("Location: home.php");
