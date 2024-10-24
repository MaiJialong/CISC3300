<?php
// Associative array
$array = [
    "name" => "Jialong",
    "age" => 21,
    "city" => "New York"
];

// Loop through array and echo key-value pairs
foreach ($array as $key => $value) {
    echo "$key: $value <br>";
}

// Function with a return type, an optional parameter, and a typed parameter
function greet(string $name, int $age = 20): string {
    return "Hello, my name is $name and I am $age years old.<br>";
}

// Call the function
echo greet("Jialong", 21);
