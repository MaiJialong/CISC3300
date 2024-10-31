<?php
class UserModel {
    public static function getAllUsers() {
        return [
            ["name" => "John Doe", "age" => 30, "email" => "john@example.com"],
            ["name" => "Jane Smith", "age" => 25, "email" => "jane@example.com"]
        ];
    }
}
?>
