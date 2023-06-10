<?php
include_once "conexao.php";
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <title>Celke - Formulário upload imagem</title>
    <link rel="stylesheet" href="style02.css" />
</head>

<body>
<header>
<a href="index.php">Voltar a Tela Principal</a><br>
</header>

<div id="form">
<img src="img/logo04.jpeg" alt="logo" width="175px">
                <h2 class="title">Cadastre seu produto.</h2>
    


    <?php
    //RECEBER OD DADOS DO FORMULARIO
    $dados = filter_input_array(INPUT_POST, FILTER_DEFAULT);
    
    //var_dump($dados);
    //VERIIFICAR SE O USUARIO CLICOU NO BOTÃO
    if(!empty($_POST)){

        $arquivo = $_FILES['imagemproduto'];
        //var_dump($dados);
        //var_dump($arquivo);
        //CRIAR A QUERY CADASTRAR NO BANCO DE DADOS
        $query_produto = "INSERT INTO produto (categoria, Quantidade, PrecoUnitario, Umedida, imagemproduto, created) VALUES
        (:Quantidade, :PrecoUnitario, :Umedida,:imagemproduto, NOW())";
        $cad_produto = $conn->prepare($query_produto);
        $cad_produto->bindParam(':categoria', $dados['categoria'], PDO::PARAM_STR);
        $cad_produto->bindParam(':Quantidade', $dados['Quantidade'], PDO::PARAM_STR);
        $cad_produto->bindParam(':PrecoUnitario', $dados['PrecoUnitario']);
        $cad_produto->bindParam(':Umedida', $dados['Umedida']);
        $cad_produto->bindParam(':imagemproduto', $arquivo['name'], PDO::PARAM_STR);
        $cad_produto->execute();

        //verificar se cadastrou com sucesso
        if($cad_produto->rowCount()){
            //verificar se o produto esta enviando a foto
            if((isset($arquivo['name'])) and (!empty($arquivo['name']))){
                //Recuperar o ultimo id inserido no banco de dados
                $ultimo_id = $conn->lastInsertId();

                //diretorio onde o arquivo será salvo
                $diretorio = "imagens/$ultimo_id/";

                //Criar diretorio
                mkdir($diretorio, 0755);

                //upload do arquivo
               $nome_arquivo = $arquivo['name'];
               move_uploaded_file($arquivo['tmp_name'], $diretorio . $nome_arquivo);

               
               echo"<p style='color: green;'> Produto e a foto cadastrado com Sucesso!</p>";
        }else{
            echo"<p style='color: green;'>Produto cadastrado com Sucesso!</p>";
        }
        
        }else{
            echo"<p style='color: #f00;'>Erro: Produto não cadastrado!</p>";
        }
    }
    ?>

    <form method="post" action="" enctype="multipart/form-data">


    <h3>
    

            <select name="categoria">
                <option value="Selecione" selected>Selecione...</option>

                <option value="<?php echo $dados['codCategoria'] ?>">
                </option>

            </select>
        <label for="Quantidade">Quantidade em estoque: </label>
        <div class="input">
        <input type="text" name="Quantidade" id="Quantidade" placeholder="" autofocus required><br><br>
        </div>
        <label for="Unidade de medida">Unidade de Medida de cada Unidade:<br></label><br>
        <div class="input"> 
        <input type="text" name="Umedida" id="Umedida" placeholder="Unidade de medida" required><br><br>
        </div>
        <label for="Ex: (10,00 / 1,59)">Valor Unitário: </label>
        <div class="input">
        <input type="text" name="PrecoUnitario" id="PrecoUnitario" placeholder="Ex: (10,00 / 1,59)" required><br><br>
        </div>
        <label>Foto do produto:</label>
     
        <input type="file" name="imagemproduto" id="imagemproduto" required><br><br>
</h3>
        
        <button type="submit" class="btn" name="SalvarFoto">Cadastrar</button>
</div>

    </form>



</body>
</html>