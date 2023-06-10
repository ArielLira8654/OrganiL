CREATE DATABASE Organic_Life;

use Organic_Life;

create table Usuario(
	codUsuario int auto_increment not null primary key,
    Nome varchar (30) not null,
    Senha char (8) not null,
    CPF char (11) not null,
    Email varchar (50) not null,
    Telefone char (11) not null,
    Celular varchar (14) not null,
    Tipo varchar (8) not null
);

create table Endereco(
	codEndereco int auto_increment not null primary key,
    Bairro varchar (30) not null,
    Rua varchar (40) not null,
    CEP int (9) not null
);

create table Complemento(
	codComplemento int auto_increment not null primary key,
    Complemento varchar (20) not null,
    Numero int (5) not null,
	codUsuario int null,
    constraint fkComplemento_Usuario foreign key (codUsuario) references Usuario (codUsuario),
    codEndereco int null,
    constraint fkComplemento_Endereco foreign key (codEndereco) references Endereco (codEndereco)
);

create table Categoria(
	codCategoria int auto_increment not null primary key,
    Nome varchar (30) not null
);

create table Produto(
	codProduto  int auto_increment not null primary key,
    Quantidade int (4) not null,
    PrecoUnitario varchar (6) not null,
    foto_Produto varchar (50),
    Umedida varchar (30) not null,
    imagemproduto varchar (30) not null,
    created datetime,
    codCategoria int null,
	constraint fkProduto_usuario foreign key (codCategoria) references categoria (codCategoria)
);

create table FinalizacaoDaCompra (
	codFinalizacaoDaCompra int auto_increment not null primary key,
    Dia date,
    Hora time,
    ValorTotal varchar (10) not null,
    StatusDoPedido  int (30) not null,
    MetododePagamento varchar(25)not null,
    codUsuario int null,
    constraint fkFinalizacaoDaCompra_Usuario foreign key (codUsuario) references Usuario (codUsuario)
);

create table Carrinho(
	codCarrinho int auto_increment not null primary key,
    qtdProduto int (40) not null,
    codProduto int null,
    constraint fkCarrinho_Produto foreign key (codProduto) references Produto (codProduto),
    codFinalizacaoDaCompra int null,
    constraint fkCarrinho_FinalizacaoDaCompra foreign key (codFinalizacaoDaCompra) references FinalizacaoDaCompra (codFinalizacaoDaCompra)
);













































Insert into Categoria (Nome) Values ('ABACATE');
Insert into Categoria (Nome) Values ('ABACAXI CAIENA (HAWAÍ)');
Insert into Categoria (Nome) Values ('ABACAXI PÉROLA');
Insert into Categoria (Nome) Values ('ABACAXI TERRA DE AREIA');
Insert into Categoria (Nome) Values ('ABÓBORA');
Insert into Categoria (Nome) Values ('ABOBRINHA ITALIANA');
Insert into Categoria (Nome) Values ('ABOBRINHA TRONCO');
Insert into Categoria (Nome) Values ('ACEROLA');
Insert into Categoria (Nome) Values ('AGRIÃO');
Insert into Categoria (Nome) Values ('AIPO SALSÃO');
Insert into Categoria (Nome) Values ('ALCACHOFRA');
Insert into Categoria (Nome) Values ('ALCACHOFRA IMPORTADA');
Insert into Categoria (Nome) Values('ALECRIM');
Insert into Categoria (Nome) Values ('ALFACE');
Insert into Categoria (Nome) Values ('ALFACE AMERICANA');
Insert into Categoria (Nome) Values ('ALHO IMPORTADO');
Insert into Categoria (Nome) Values ('ALHO MACHO');
Insert into Categoria (Nome) Values ('ALHO NACIONAL');
Insert into Categoria (Nome) Values ('ALHO-PORÓ');
Insert into Categoria (Nome) Values ('ALMEIRÃO/RADITE');
Insert into Categoria (Nome) Values ('AMEIXA IMPORTADA');
Insert into Categoria (Nome) Values ('AMENDOIM C/ CASCA');
Insert into Categoria (Nome) Values ('AMENDOIM S/ CASCA');
Insert into Categoria (Nome) Values('AMORA PRETA');
Insert into Categoria (Nome) Values ('ASTER');
Insert into Categoria (Nome) Values ('ASTROMELIA');
Insert into Categoria (Nome) Values ('AZALEIA VASO');
Insert into Categoria (Nome) Values('BANANA CATURRA/NANICA');
Insert into Categoria (Nome) Values ('BANANA DA TERRA E OUTRAS');
Insert into Categoria (Nome) Values ('BANANA MAÇÃ');
Insert into Categoria (Nome) Values ('BANANA PRATA/BRANCA');
Insert into Categoria (Nome) Values ('BATATA INGLESA');
Insert into Categoria (Nome) Values ('BATATA-DOCE');
Insert into Categoria (Nome) Values ('BEGONIA');
Insert into Categoria (Nome) Values ('BERINJELA');
Insert into Categoria (Nome) Values ('BETERRABA');
Insert into Categoria (Nome) Values ('BETERRABA MOLHO');
Insert into Categoria (Nome) Values ('BICO DE PAPAGAIO');
Insert into Categoria (Nome) Values ('BOCADE LEAO');
Insert into Categoria (Nome) Values ('BONSAI');
Insert into Categoria (Nome) Values ('BRÓCOLIS');
Insert into Categoria (Nome) Values ('BROTOS DIVERSOS');
Insert into Categoria (Nome) Values ('CAQUI CHOCOLATE');
Insert into Categoria (Nome) Values ('CAQUI FUYU');
Insert into Categoria (Nome) Values ('CAQUI IMPORTADO');
Insert into Categoria (Nome) Values ('CAQUI MOLE');
Insert into Categoria (Nome) Values ('CARÁ');
Insert into Categoria (Nome) Values ('CARÁMBOLA');
Insert into Categoria (Nome) Values ('CEBOLA IMPORTADA');
Insert into Categoria (Nome) Values ('CEBOLA NACIONAL');
Insert into Categoria (Nome) Values ('CEBOLA ROXA');
Insert into Categoria (Nome) Values ('CENOURA');
Insert into Categoria (Nome) Values ('CENOURA BABY');
Insert into Categoria (Nome) Values ('CENOURA MOLHO');
Insert into Categoria (Nome) Values ('CEREJA IMPORTADA');
Insert into Categoria (Nome) Values ('CHEIRO VERDE/TEMPERO');
Insert into Categoria (Nome) Values ('CHICÓRIA/ESCAROLA');
Insert into Categoria (Nome) Values ('CHUCHU');
Insert into Categoria (Nome) Values ('COCO SECO');
Insert into Categoria (Nome) Values ('COCO VERDE');
Insert into Categoria (Nome) Values ('COUVE');
Insert into Categoria (Nome) Values ('COUVE CHINESA');
Insert into Categoria (Nome) Values ('COUVE-FLOR');
Insert into Categoria (Nome) Values ('CRAVINA');
Insert into Categoria (Nome) Values ('CRAVO');
Insert into Categoria (Nome) Values ('ENDÍVIA');
Insert into Categoria (Nome) Values ('ERVA DOCE/FUNCHO');
Insert into Categoria (Nome) Values ('ERVAS AROMÁTICAS');
Insert into Categoria (Nome) Values ('ERVILHA');
Insert into Categoria (Nome) Values ('ERVILHA TORTA');
Insert into Categoria (Nome) Values ('ESPINAFRE');
Insert into Categoria (Nome) Values ('FENJÃO DIVERSOS');
Insert into Categoria (Nome) Values ('FIGO MADURO');
Insert into Categoria (Nome) Values ('FIGO VERDE');
Insert into Categoria (Nome) Values ('FLORES COMESTÍVEIS');
Insert into Categoria (Nome) Values ('GENGIBRE');
Insert into Categoria (Nome) Values ('GERBERA');
Insert into Categoria (Nome) Values ('GOIABA');
Insert into Categoria (Nome) Values ('GRAVIOLA');
Insert into Categoria (Nome) Values ('INHAME');
Insert into Categoria (Nome) Values ('JABUTICABA');
Insert into Categoria (Nome) Values ('JACA');
Insert into Categoria (Nome) Values ('JILÓ');
Insert into Categoria (Nome) Values ('KALANCHOE');
Insert into Categoria (Nome) Values ('KINKAN');
Insert into Categoria (Nome) Values ('KIWI IMPORTADO');
Insert into Categoria (Nome) Values ('KIWI NACIONAL');
Insert into Categoria (Nome) Values ('LARANJA BAIA (UMBIGO) ');
Insert into Categoria (Nome) Values ('LARANJA IMPORTADA');
Insert into Categoria (Nome) Values ('LARANJA LIMA');
Insert into Categoria (Nome) Values ('LARANJA PERA');
Insert into Categoria (Nome) Values ('‘LENTILHA');
Insert into Categoria (Nome) Values ('LIMA');
Insert into Categoria (Nome) Values ('LIMÃO IMPORTADO');
Insert into Categoria (Nome) Values ('LIMÃO SICILIANO');
Insert into Categoria (Nome) Values ('LIMÃO TAITI');
Insert into Categoria (Nome) Values ('LIRIO DA PAZ');
Insert into Categoria (Nome) Values ('LIRIO MOLHE');
Insert into Categoria (Nome) Values ('LISIANTHUS');
Insert into Categoria (Nome) Values ('LOURO');
Insert into Categoria (Nome) Values ('MAÇÃ FUJI');
Insert into Categoria (Nome) Values ('MAÇÃ FUJI IMPORTADA');
Insert into Categoria (Nome) Values ('MAÇÃ GALA');
Insert into Categoria (Nome) Values ('MAÇÃ GOLDEN');
Insert into Categoria (Nome) Values ('MAMÃO AMAZONAS (PAPAIA)');
Insert into Categoria (Nome) Values ('MAMÃO FORMOSA');
Insert into Categoria (Nome) Values ('MANDIOCA');
Insert into Categoria (Nome) Values ('MANDIOQUINHA');
Insert into Categoria (Nome) Values ('MANGA');
Insert into Categoria (Nome) Values ('MANJERICÃO');
Insert into Categoria (Nome) Values ('MANJERONA');
Insert into Categoria (Nome) Values ('MARACUJÁ AZEDO');
Insert into Categoria (Nome) Values ('MARACUJÁ DOCE');
Insert into Categoria (Nome) Values ('MAXIXE');
Insert into Categoria (Nome) Values ('MEL');
Insert into Categoria (Nome) Values ('MELANCIA');
Insert into Categoria (Nome) Values ('MELANCIA KODAMA/BABY');
Insert into Categoria (Nome) Values ('MELANCIA PINGO DOCE');
Insert into Categoria (Nome) Values ('MELÃO ESPANHOL');
Insert into Categoria (Nome) Values ('MELÃO GALIA/CANTALOUPE');
Insert into Categoria (Nome) Values ('MELÃO NET');
Insert into Categoria (Nome) Values ('MELÃO ORANJE');
Insert into Categoria (Nome) Values ('MELÃO PELE DE SAPO');
Insert into Categoria (Nome) Values ('MILHO RAÇÃO');
Insert into Categoria (Nome) Values ('MILHO VERDE') ;
Insert into Categoria (Nome) Values ('MIRTILO');
Insert into Categoria (Nome) Values ('MOGANGO');
Insert into Categoria (Nome) Values ('MORANGA');
Insert into Categoria (Nome) Values ('MORANGA AMARELA/PATACA');
Insert into Categoria (Nome) Values ('MORANGA CABOTIA, PRETA');
Insert into Categoria (Nome) Values ('MOSTARDA');
Insert into Categoria (Nome) Values ('NABO');
Insert into Categoria (Nome) Values ('NABO (EM MOLHO)');
Insert into Categoria (Nome) Values ('NECTARINA IMPORTADA');
Insert into Categoria (Nome) Values ('NÊSPERA');
Insert into Categoria (Nome) Values ('NOZ PECÃ');
Insert into Categoria (Nome) Values ('OVO CODORNA');
Insert into Categoria (Nome) Values ('OVO VERMELHO');
Insert into Categoria (Nome) Values ('PEPINO CONSERVA');
Insert into Categoria (Nome) Values ('PEPINO JAPONÊS');
Insert into Categoria (Nome) Values ('PEPINO SALADA');
Insert into Categoria (Nome) Values ('PERA ASIATICA');
Insert into Categoria (Nome) Values ('PERA DANJOU');
Insert into Categoria (Nome) Values ('PERA NACIONAL');
Insert into Categoria (Nome) Values ('PERA VERMELHA');
Insert into Categoria (Nome) Values ('PERA WILLIAMS/PACKAMS');
Insert into Categoria (Nome) Values ('PIMENTA');
Insert into Categoria (Nome) Values ('PIMENTÃO');
Insert into Categoria (Nome) Values ('PIMENTÃO AMARELO');
Insert into Categoria (Nome) Values ('PIMENTÃO CAPELETI');
Insert into Categoria (Nome) Values ('PIMENTÃO VERMELHO');
Insert into Categoria (Nome) Values ('PINHA');
Insert into Categoria (Nome) Values ('PINHÃO');
Insert into Categoria (Nome) Values ('PITAYA');
Insert into Categoria (Nome) Values ('QUIABO');
Insert into Categoria (Nome) Values ('RABANETE');
Insert into Categoria (Nome) Values ('RABANETE MOLHO');
Insert into Categoria (Nome) Values ('REPOLHO ROXO');
Insert into Categoria (Nome) Values ('REPOLHO VERDE');
Insert into Categoria (Nome) Values ('ROMÃ');
Insert into Categoria (Nome) Values ('RÚCULA');
Insert into Categoria (Nome) Values ('SÁLVIA');
Insert into Categoria (Nome) Values ('TANGERINA COMUM/CAI');
Insert into Categoria (Nome) Values ('TANGERINA OUTRAS');
Insert into Categoria (Nome) Values ('TANGERINA PONKAN');
Insert into Categoria (Nome) Values ('TANGO');
Insert into Categoria (Nome) Values ('TOMATE CAQUI (GAÚCHO) ');
Insert into Categoria (Nome) Values ('TOMATE CAQUI LONGA VIDA');
Insert into Categoria (Nome) Values ('TOMATE CEREJA (MINI TOMATES)');
Insert into Categoria (Nome) Values ('TOMATE ITALIANO/PAULISTA');
Insert into Categoria (Nome) Values ('UVA COMUM DE MESA');
Insert into Categoria (Nome) Values ('UVA IMPORTADA');
Insert into Categoria (Nome) Values ('UVA VERDE');
Insert into Categoria (Nome) Values ('UVAS FINAS DE MESA');
Insert into Categoria (Nome) Values ('VAGEM');
Insert into Categoria (Nome) Values ('VERDES ASPARGO');
Insert into Categoria (Nome) Values ('VERDES EUCALIPTUS');
Insert into Categoria (Nome) Values ('VERDES RUSCUS');
Insert into Categoria (Nome) Values ('VIOLETA');
Insert into Categoria (Nome) Values ('YACON');


















