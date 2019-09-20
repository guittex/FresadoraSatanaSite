<?php


extract($_POST);

if ($nome=="") { 
	echo "Favor Digitar o seu nome<br /><a href=javascript:history.go(-1)>Clique aqui para Voltar</a> ou clique no Botão (Voltar) do seu navegador";
	exit;
}

if ($email=="") {
	echo "Favor Digitar o seu email<br /><a href=javascript:history.go(-1)>Clique aqui para Voltar</a> ou clique no Botão (Voltar) do seu navegador";
	exit;
}



if (($telefone=="") || ($telefone=="(  ) ____-____")) {
	echo "Favor Digitar o seu telefone<br /><a href=javascript:history.go(-1)>Clique aqui para Voltar</a> ou clique no Botão (Voltar) do seu navegador";
	exit;
}

$corpo = "Nome: $nome\n";
$corpo .= "Telefone: $telefone\n";
$corpo .= "Email: $email\n";
$corpo .= "Assunto: $assunto\n";
$corpo .= "Mensagem:\n";
$corpo .= "$mensagem\n";
require_once('class.phpmailer.php');



$mailer = new PHPMailer();
$mailer->IsMAIL();
$mailer->SetFrom($email,$nome);
$mailer->AddReplyTo($email,$nome);
/*$mailer->Username = 'smtp@fresadorasantana.com.br'; 
$mailer->Password = 'nachost1973';*/


//**************************************************************************

$mailer->AddAddress('vendas@fresadorasantana.com.br','Fresadora Santana'); //MODIFICAR AQUI - Digite o email para o qual o formulário deve ser enviado e o nome da Empresa

//$mailer->AddAddress('danilo@nacionalnet.net','Fresadora Santana'); //MODIFICAR AQUI - Digite o email para o qual o formulário deve ser enviado e o nome da Empresa
//***************************************************************************

$mailer->AddReplyTo($your_email,$your_name);
$mailer->Subject = 'Contato pelo Site www.fresadorasantana.com.br';
$mailer->Body = "$corpo";
$corpo = utf8_decode($corpo);
if(!$mailer->Send())
{
echo "Mensagem não enviada";
echo "Mailer Error: " . $mailer->ErrorInfo; exit; }

echo "<script>location.href='http://fresadorasantana.com.br/site/obrigado.html'</script>";


?>