<?php
$email = $_POST['email'] ?? '';

if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    http_response_code(400);
    echo 'Invalid email';
    exit;
}

file_put_contents('subscription.txt', $email . PHP_EOL, FILE_APPEND);
http_response_code(200);
echo 'Subscription successful';
