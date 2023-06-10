<?php
session_start();
ob_start();
include_once "conexao.php";
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Celke - Detalhes do produtos</title>
</head>

<body> 
    <a href="index.php">Listar</a><br>
    <a href="upload.php">Cadastrar</a><br>


    <h2>Detalhes do Usuários</h2> 

    <?php

    $codProduto = filter_input(INPUT_GET, 'id', FILTER_SANITIZE_NUMBER_INT);


    if(!empty($codProduto)){
    $query_produto = "SELECT codProduto ,Quantidade , PrecoUnitario, Umedida, imagemproduto, created FROM produto WHERE codProduto=:codProduto limit 1";
    $result_produto = $conn->prepare($query_produto);
    $result_produto->bindParam(':codProduto', $codProduto);
    $result_produto->execute();

    $row_produto = $result_produto->fetch(PDO::FETCH_ASSOC);
    //var_dump($row_usuario);
    extract($row_produto);
     echo "ID: $codProduto <br>";       
     echo "Quantidade: $Quantidade <br>";
     echo "Valor: $PrecoUnitario <br>";
     echo "Unidade de Medida: $Umedida <br>";
     echo "Foto: $imagemproduto <br>";
     echo "Cadastrado: " . date('d/m/Y H:i:s', strtotime($created)) . " <br>";
     echo "<img src='imagens/$codProduto/$imagemproduto' width='200'><br><br>";
     




    }else{
        $_SESSION['msg'] = "<p style='color: #f00;'>Erro: Necessário selecionar o usuário!</p>";
        header("Location: index.php");
    }
    /*$query_produto = "SELECT id, nome_usuario, email_usuario, foto_usuario, created, modified FROM usuarios ORDER BY id DESC";
    s = $conn->prepare($query_produtoss);
    s->execute();

    while($row_usuario = s->fetch(PDO::FETCH_ASSOC)){
        /*var_dump($row_usuario);
        extract($row_usuario);
       // echo "ID: " . $row_usuario['id'] . "<br>";
        echo "ID: $codProduto <br>";       
        echo "ID: $nome_usuario <br>";
        echo "E-mail: $email_usuario <br>";
        echo "Foto: $foto_usuario <br>";
        echo "<img src='imagens//$foto_usuario' width='200'><br><br>";

        echo "<a href='visualizar.php'>Visualizar</a><br>";
        echo "<hr>";
    }*/


    ?>

</body>
</html>