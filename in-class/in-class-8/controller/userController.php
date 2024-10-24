<?php
namespace controllers;

use models\User;

class UserController {
    public function index() {
        // Instantiate User class
        $user = new User();
        // Dump the users array
        var_dump($user->getAllUsers());
    }
}
