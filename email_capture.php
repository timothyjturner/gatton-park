<?php
$email = $_POST['email'] ?? '';
if (filter_var($email, FILTER_VALIDATE_EMAIL)) {
    file_put_contents('emails.txt', $email . PHP_EOL, FILE_APPEND);
}
http_response_code(200);
?>
