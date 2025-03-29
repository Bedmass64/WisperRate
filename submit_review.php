<?php
header('Content-Type: application/json');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (empty($_POST['name']) || empty($_POST['rating']) || empty($_POST['review'])) {
        echo json_encode(["status" => "error", "message" => "Please fill all required fields"]);
        exit;
    }

    $name = $_POST['name'];
    $rating = $_POST['rating'];
    $review = $_POST['review'];

    // Here you would normally save to a database or perform other actions

    // For this example, just sending back a success message
    echo json_encode(["status" => "success", "message" => "Review received", "data" => $_POST]);
} else {
    echo json_encode(["status" => "error", "message" => "Invalid request"]);
}
?>
