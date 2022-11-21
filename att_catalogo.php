

<html>
    <head>
    <link rel="shortcut icon" href="logo.png" type="image/x-icon">
    <meta charset="UTF-8" />
  <title> Fairy Cristais </title>
  <meta  charset="utf-8"> 
  <link rel="stylesheet" type="text/css" href="css1.css">
</head>
<body>
<nav class="nav">
			<img src="logo.png" class="nav-logo">
			<h1>❀ Fairy Cristais ❀</h1>
			<div class="nav-items">
      	<a class="nav-button" style="background-color: #cccccc;">Administrador Logado</a>
		    <a href="catalogo3.php" class="nav-button">Catálogo</a>
		    <a href="denuncia3.html" class="nav-button">❣❣❣</a>
        <a href="lista.php" class="nav-button">Lista de Usuário</a>
			</div>
		</nav>
        <br><br>
        <h2>Atualize os produtos do catálogo ❣</h2>
        <div class="container" >
    <a class="links" id="paracadastro"></a>
    <div class="content">      
    <div id="cadastro">
        <form method="POST" enctype="multipart/form-data" action="att_catalogo1.php"> 
          <h2>Insira os dados abaixo</h2> 
          <p> 
            <label for="id_prod">N° do campo</label>
            <input id="id_prod" name="id_prod" required="required"  placeholder="1" />
          </p>
          <p>

            <label for = ""> Selecione o arquivo</label>
            <Input name="arquivo" type="file">  
          </p>
         
            <label for="nome_prod">Nome</label>
            <input id="nome_prod" name="nome_prod" required="required" type="text" placeholder="Pedra Ametista" />
          </p>
        
          <p> 
            <label for="valor">Valor</label>
            <input id="valor" name="valor" required="required" type="text" placeholder="R$ 20,00" />
          </p>
          <p> 
            <input type="submit" value="Atualizar"/> 
          </p>
          <p class="link">  
            
      </div>
    </div>
</div>
</body>
<footer class="footer">Developed by Narara Company ♡</footer>
</html>