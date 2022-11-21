<?php
session_start();
  if(isset($_POST['usuario']) && isset($_POST['email']) && isset($_POST['endereco']) && isset($_POST['senha'])){
    include("conexao.php");
    $usuario = $_POST['usuario'];
    $email = $_POST['email'];
    $endereco = $_POST['endereco'];
    $senha = $_POST['senha'];
    $sql ="INSERT INTO tb_cadastro(usuario,email,endereco,senha) VALUES ('$usuario','$email','$endereco','$senha')";
    mysqli_query($conexao,$sql);
    header("Location: catalogo2.php");
  }
  ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="shortcut icon" href="logo.png" type="image/x-icon">
  <meta charset="UTF-8" />
  <title>Cadastro/Login</title>
  <meta  charset="utf-8"> 
  <link rel="stylesheet" type="text/css" href="css2.css" />
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
      <a href="lista.php" class="nav-button">Lista de Usuário</a>
			
			</div>
		</nav>
        <h3 align="center">Realize seu cadastro e fique por dentro das novidades da loja❣</h3>
  <div class="container" >
    <a class="links" id="paracadastro"></a>
    <a class="links" id="paralogin"></a>
    <div class="content">      
      <!--FORMULÁRIO DE LOGIN-->
      <div id="login">
        <form method="POST" action="login.php"> 
          <h2 align="center">Login</h2> 
          <p> 
            <label for="nome_login">Usuário</label>
            <input id="nome_login" name="nome_login" required="required" type="text" placeholder="ex. maria@htmlecsspro.com"/>
          </p>
           
          <p> 
            <label for="senha_login">Senha</label>
            <input id="senha_login" name="senha_login" required="required" type="password" placeholder="ex. senha" /> 
          </p>
           
          <p> 
            <input type="checkbox" name="manterlogado" id="manterlogado" value="" /> 
            <label for="manterlogado">Manter-me logado</label>
          </p>
           
          <p> 
            <input type="submit" value="Logar" /> 
          </p>
           
          <p class="link">
            Ainda não tem conta?
            <a href="#paracadastro">Cadastre-se</a>
          </p>
        </form>
      </div>
 
      
      <!--FORMULÁRIO DE CADASTRO-->
      <div id="cadastro">
        <form method="POST" action="cadastro_clientes.php"> 
          <h2 align="center">Cadastro</h2> 
           
          <p> 
            <label for="nome_cad">Usuário</label>
            <input id="nome_cad" name="usuario" required="required" type="text" placeholder="Maria Dos Santos" />
          </p>
           
          <p> 
            <label for="email_cad">E-mail</label>
            <input id="email_cad" name="email" required="required" type="email" placeholder="maria@htmlecsspro.com"/> 
          </p>
          <p> 
            <label for="nome_cad">Endereço</label>
            <input id="nome_cad" name="endereco" required="required" type="text" placeholder="Rua São Paulo n° 2383" />
          </p>
          <p> 
            <label for="senha_cad">Senha</label>
            <input id="senha_cad" name="senha" required="required" type="password" placeholder="ex. 1234"/>
          </p>
           
          <p> 
            <input type="submit" value="Cadastrar"/> 
          </p>
           
          <p class="link">  
            Já tem conta?
            <a href="#paralogin"> Ir para Login </a>
          </p>
        </form>
      </div>
    </div>
  </div>  
  <footer class="footer">Developed by Fairy Company ♡</footer>
</body>
</html>