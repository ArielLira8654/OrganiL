<?php


//inicio da conexão com o banco utilizando pdo
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "organic_life";
$port = 3306;


try{
    //conexao com a porta
    //$coon = new PDO("mysql:host=$host;port=$port;dbname=" .$dbname, $user, $pass);

    //Conexão sem a porta
    $conn = new PDO("mysql:host=$host;dbname=" .$dbname, $user, $pass);
    //echo "conexão com o banco de dados realizado com sucesso.";
} catch (PDOException $err) {
    echo "Erro: Conexão com banco de dados nao realizado com sucesso. Erro gerado " .$err->getMessage();
}

//Fim da conexão com o baco de dados utilizando o pdo


