<?php 
// Criando conexão com o bando de dados
$conexao = mysqli_connect("localhost","root","", "tcc");
// Checar a conexão
if (!$conexao){
echo "Erro ao conectar com a base de dados: ";
mysqli_connect_error();
}
?>