<?php
session_start();
include_once "conexao.php";
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Página principal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    
    <link rel="stylesheet" href="style.css" />

</head>

<body>


<nav class="menu-horizontal">
                    <ul>
                        <li><a href="index.php" class="lineTop"> <span> Tela Inicial </span> </a></li>
                        <li><a href="#" class="lineTop"> <span> Sobre nós </span></a></li>
                        <li><a href="#" class="lineTop"> <span> Sobre noso Site </span></a></li>
                        <li><a href="upload.php" class="lineTop"> <span> Bem vindo Produtor! Cadastre aqui seu Produto.</span></a></li>

                        <form method="POST" action="index.php">
                            <input type="text" name="pesquisar">
                            <input type="submit" value="Pesquisar">
                        </form>

                        <li class="right"><a href="#" target="_blank" class="lineTop social"> <i class="icon icon-facebook"></i> <span class="textRs"> Facebook</span></a></li>
                        <li class="right"><a href="#" target="_blank" class="lineTop social"> <i class="icon icon-instagram"></i> <span class="textRs"> Instagram</span></a></li>                        
                        <li class="right"><a href="#" target="_blank" class="lineTop social"> <i class="icon icon-twitter"></i> <span class="textRs"> Twitter</span></a></li>
                        <li class="right"><a href="#" target="_blank" class="lineTop social"> <i class="icon icon-pinterest"></i><span class="textRs"> Pinterest</span></a></li>
                    </ul>
                </nav>
    <center>
    <img src="img/logo01.jpeg" alt="logo" width="175px">
    
                                                        <h1>Seja bem vindo!</h1>
                                                        <p style="color: #214021;">quem valoriza uma 
                                                        <br>alimentação saudável<br>
                                                        valoriza a própria vida.</P>
                                                        </center>
    <main>
        
    <div class="logo02">
    <img src="img/logo02.jpeg" alt="logo" width="70px">
</div>  
        
        <div class="box-container">
        <div class="card-container">
        
        <?php

    if(isset($_SESSION['msg'])){
        echo $_SESSION['msg'];
        unset($_SESSION['msg']);
    }

    $query_produtos = "SELECT codProduto , Quantidade, PrecoUnitario, Umedida, imagemproduto FROM produto ORDER BY codProduto DESC";
    $result_produtos = $conn->prepare($query_produtos);
    $result_produtos->execute();

    while($row_produto = $result_produtos->fetch(PDO::FETCH_ASSOC)){
        //var_dump($row_produto);
        extract($row_produto);
       // echo "ID: " . $row_produto['id'] . "<br>";
    
        echo "<div class='card'>Produto: $codProduto <br>";       
        echo "Quantidade: $Quantidade <br>";
        echo "Unidade de Medida: $Umedida Cada<br>";
        echo "Valor: R$$PrecoUnitario <br>";
        echo "<a href='visualizar.php?id=$codProduto'>Visualizar</a><br>";
        echo "<hr></div><br>";
        echo "<div class='product'><img src='imagens/$codProduto/$imagemproduto' width='300'><br><br></div>";

    }


    ?>
                 


                             </header>
                        </div>
                        </div>
   



   <footer>
    <div id="footer_content">
        <div id="footer_contacts">
            <center>
        <img src="img/logo03.jpeg" alt="logo" width="80px"></center>
            <p>Sua vida mais saudável.</p>

           
                </div>
                
                <ul class="footer_list">
                    <li>
                        <h3>Blog</h3>
                    </li>
                    <li>
                        <a href="#" class="footer_link">Parcerias</a>
                    </li>
                    <li>
                        <a href="#" class="footer_link">Serviços</a>
                    </li>
                    <li>
                        <a href="#" class="footer_link">Comunidade</a>
                    </li>
                </ul>

                <ul class="footer_list">
                    <li>
                        <h3>Baixe nosso app</h3>
                    </li>
                    <li>
                        <a href="#" class="footer_link">Play Store</a>
                    </li>
                    <li>
                        <a href="#" class="footer_link">ICloud</a>
                    </li>
                    <li>
                        <a href="#" class="footer_link">Microsoft Store</a>
                    </li>
                </ul>

                <div id="footer_subscribe">
                    <h3>E-mail</h3>

                    <h5>
                        Nos mande sugestões<br> via E-mail.
                    </h5>
                    <div id="inpout_group">
                        <input type="email" id="email">
                        <button>
                            <i class="fa-solid fa-envelope-open-text"></i>
                        </button>
                    </div>
                </div>
            </div>

            <div id="footer_copyright">
                &#169
                2023 todos os direitos reservados
            </div>
    </footer>

    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
<script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

</body>
</html>