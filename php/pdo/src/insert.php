<?php

declare(strict_types=1);

$pdo = require 'connect.php';
$sql = 'INSERT INTO pessoa (nomePessoa, email) VALUES (::nomePessoa, ::email)';

$statement = $pdo->prepare($sql);

$statement->bindValue(1, $_POST['nomePessoa']);
$statement->bindValue(2, $_POST['email']);

if ($statement->execute()) {
    header('Location: list.php');
} else {
    echo 'Erro ao cadastrar';
}

?>