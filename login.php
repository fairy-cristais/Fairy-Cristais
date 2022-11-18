<?php
session_start();
if(isset($_POST["nome_login"]) && isset($_POST["senha_login"])){
$login = $_POST["nome_login"];
$password = $_POST["senha_login"];
if(!(empty($login) or empty($password))){
include("conexao.php");
$sql="select id,usuario,senha from tb_cadastro where usuario =
'$login' and senha = '$password'";
$res = mysqli_query($conexao,$sql);
$linha = mysqli_num_rows($res);
// Se as informações tiverem incorretas
if($linha==0){
  echo "<script>window.location='login.html#form1';alert('Login ou senha incorretos!');</script>";
}
else
{
$resultado = mysqli_fetch_assoc($res);


$_SESSION["$login_user"] = $_POST["login"];
$_SESSION["$password_user"] = $_POST["senha"];
$verid = $_SESSION['id_user'] = $resultado['id'];
if ($verid == 3) {
	header('Location: pag_principal3.html');
} else {
	header('Location: pag_principal2.html');
}

}
}
//se as caixas estiverem vazias
else
{
echo "<script>window.location='login.html#form1';alert('Por favor preencha todos os campos para prosseguir');</script>";
}
}
?>