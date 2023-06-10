<?php
include_once "conexao.php";
?>
<?php
    $pesquisar = $_POST['pesquisar'];
    $select_produtos = "SELECT * FROM produto WHERE Nome LIKE '%$pesquisar%' limit 3";
    $resultado_produtos = mysqli_query($conn, $result_produtos);

    while($rows_produtos = mysqli_fetch_array($resultado_produtos)){
        echo "Nome do produto: ".$rows_produtos['Nome']."<br>";
    }







?>