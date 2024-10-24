<?php
// Associative array
$data = [
    "name" => "Jialong",
    "age" => 21,
    "city" => "New York"
];

// Set the content type to JSON
header('Content-Type: application/json');

// Echo the array as JSON data
echo json_encode($data);
