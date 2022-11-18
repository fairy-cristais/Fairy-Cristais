<?php
session_start();
include_once("conexao.php");

?>
<!DOCTYPE html>
<html>
	<head>
		<title>Lista de Usuários</title>
		<link rel="shortcut icon" href="logo.png" type="image/x-icon">
		<meta charset="utf-8">
		<link rel="stylesheet" type="text/css" href="css2.css">
	</head>
	<body>
	<nav class="nav">
			<img src="logo.png" class="nav-logo">
			<h1>❀ Fairy Cristais ❀</h1>
			<div class="nav-items">
			<button class="menu"><img src="menu.png"></button>
				<a class="nav-button" style="background-color: #cccccc;">Administrador Logado</a>
				<a href="pag_principal3.html" class="nav-button">Início</a>
				<a href="cadastro_clientes3.php" class="nav-button">Login</a>
				<a href="sobre3.html" class="nav-button">Conheça nossa loja</a>
				<a href="catalogo3.php" class="nav-button">Catálogo</a>
				<a href="denuncia3.html" class="nav-button">❣❣❣</a>
				<a href="lista.php" class="nav-button">Lista de Usuários</a>
			</div>
		</nav>
		<h3 align="center">Pesquisa de usuários cadastrados:</h3>
		<section class="section">
		<div class="article">
			<div id="divBusca">
  				<input type="text" id="txtBusca" placeholder="Buscar..." id="btnBusca" alt="Buscar"/>
			</div>
		<br><br>
		<?php 
			if(isset($_SESSION['msg'])){
			echo $_SESSION['msg'];
			unset ($_SESSION['msg']);
		}
		$result_usuarios = "SELECT * FROM tb_cadastro";
		$resultado_usuarios = mysqli_query($conexao, $result_usuarios);
		while($row_usuario = mysqli_fetch_assoc($resultado_usuarios)){
			echo "ID: " . $row_usuario['id'] . "<br>" ;
			echo "Usuário: " . $row_usuario['usuario'] . "<br>" ;
			echo "E-mail: " . $row_usuario['email'] . "<br>";
			echo "Endereço: " . $row_usuario['endereco'] . "<br>";
			echo "<a href='exclui.php?id=" . $row_usuario['id'] . "'>Excluir</a><br><hr><br>";
		}
		?>
	</div>
	</section>
	<center><img src="https://i.pinimg.com/originals/f5/dc/b2/f5dcb20b8e25a547dcbfbe33bbf78c5e.gif" class="nav-logo"></center>
	</body>
</html>