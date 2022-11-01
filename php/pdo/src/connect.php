<?php

declare(strict_types=1);

$pdo = null;

try {
    $pdo = new PDO('mysql:host=localhost;dbname=cadastros', 'root', '');
} catch (PDOException $e) {
    echo 'Connection failed: ' . $e->getMessage();
    die();
}

?>