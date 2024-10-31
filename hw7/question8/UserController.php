<?php
require_once 'models/UserModel.php';

class UserController {
    public function serveHtmlPage() {
        include 'views/userPage.html';
    }

    public function serveJsonData() {
        $users = UserModel::getAllUsers();
        header('Content-Type: application/json');
        echo json_encode($users);
    }
}
?>
