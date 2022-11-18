<?php
include("conexao.php");

$id_prod = $_POST['id_prod'];
$nome_prod = $_POST['nome_prod'];
$valor = $_POST['valor'];

	$sql = "UPDATE tb_produto3  set nome_prod = '$nome_prod' WHERE id_prod = '$id_prod'";
    $res= mysqli_query($conexao, $sql);
	
	$sql = "UPDATE tb_produto3   set valor = '$valor' WHERE id_prod = '$id_prod'";
    $res= mysqli_query($conexao, $sql);

    if(isset($_FILES['arquivo'])){
        $arquivo = $_FILES ['arquivo'];
        $img = $_POST ['id_prod'];
        if($arquivo['error'])
            die("Falha ao enviar arquivo");
    
        if($arquivo['size'] > 2097152)
            die ("arquivo muito grande!! no maximo 2 megas");
    
            $pasta = "imagens/";
            $nomedoarquivo = $arquivo['name'];
            $nomenomedoarquivo = uniqid();
            $extensao = strtolower(pathinfo($nomedoarquivo, PATHINFO_EXTENSION));
    
            if($extensao != "jpg" && $extensao != 'png' && $extensao != 'jpeg')
                die("Tipo de arquivo não aceito");
    
                $path = $pasta . $nomenomedoarquivo . "." . $extensao;
            $deu_certo = move_uploaded_file($arquivo["tmp_name"], $path);
            
            $sql = "SELECT * FROM upload WHERE id=' $img' "; 
            $resultado = mysqli_query($conexao, $sql); 
            if (mysqli_num_rows($resultado) == 1 ){
                $conexao->query("UPDATE upload SET path = '$path', nome = '$nomedoarquivo' where id = '$img'") or die ($con->error );
    
            }
            if (mysqli_num_rows($resultado) == 0 ){
                if($deu_certo){
                    $conexao->query("INSERT INTO upload (nome, path) VALUES('$nomedoarquivo','$path')") or die ($con->error );
                
                echo "<p> Arquivo enviado com sucesso!</p>" ;
                }else
                    echo "<p>Falha ao enviar</p>";}

    }
  header('Location: att_catalogo.php');
  ?>
  