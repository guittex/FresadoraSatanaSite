<%
'Declaramos as v�riaveis a serem utilizadas no script
Dim AspEmail, nomeRemetente, emailRemetente, nomeDestinatario, emailDestinatario, emailRetorno, assunto, mensagem, servidor
 
'Configuramos os dados a serem utilizados no cabe�alho da mensagem
nomeDestinatario="Fresadora Sant'ana"
emailDestinatario="danilo@nacionalnet.net"
nomeRemetente=request("nome")
emailRemetente="vendas@fresadorasantana.com.br" 'O endere�o de e-mail deve ser preenchido com uma conta existente em seu pr�prio dom�nio.
emailRetorno="danilo@nacionalnet.net"
responderPara="danilo@nacionalnet.net"
assunto=request("Teste")
msg = "" & "Dados enviados pelo site da Fresadora Sant'ana" & "\n"
msg = msg & "Nome: "& request("nome") &""
msg =msg & "Telefone: "& request("telefone") &""
msg = msg & "Email: "& request("email") &""
msg = msg & "Assunto: "& request("assunto") &""
msg = msg & "Mensagem: "& request("mensagem") &""
servidor="smtp@fresadorasantana.com.br"
 
'Agora configuramos o componente utilizando os dados informados nas vari�veis
 
'Instancia o objeto na mem�ria
Set Mail = Server.CreateObject("Persits.MailSender") 
 
'Contfigura o servidor SMTP a ser utilizado
Mail.Host = "smtp.fresadorasantana.com.br" 

Mail.Username = "smtp@fresadorasantana.com.br"

Mail.Password = "nachost4682"

 'E-mail do remetente
Mail.From = "vendas@fresadorasantana.com.br" 

'Remetente
Mail.FromName = "Contato Site Fresadora Sant'ana" 

Mail.AddAddress "vendas@fresadorasantana.com.br", "Seu Nome" 

'Assunto da mensagem
Mail.Subject = "teste" 

'Corpo da mensagem
Mail.Body = msg


'Utilize este c�digo caso queira enviar arquivo anexo
'AspEmail.AddAttachment("E:\home\SEU_LOGIN_FTP\Web\caminho_do_arquivo")
 
'Para quem utiliza servi�os da REVENDA conosco
'AspEmail.AddAttachment("E:\vhosts\DOMINIO_COMPLETO\httpdocs\caminho_do_arquivo")
 
'#Ativa o tratamento de erros
On Error Resume Next
 
'Envia a mensagem
Mail.Send
 
'Caso ocorra problemas no envio, descreve os detalhes do mesmo.
If Err <> 0 Then
	erro = "<b><font color='red'> Erro ao enviar a mensagem.</font></b><br>"
	erro = erro & "<b>Erro.Description:</b> " & Err.Description & "<br>"
	erro = erro & "<b>Erro.Number:</b> "      & Err.Number & "<br>"
	erro = erro & "<b>Erro.Source:</b> "      & Err.Source & "<br>"
	response.write erro
Else
    Response.redirect "http://www.fresadorasant'ana.com.br/obrigado.html"
End If
 
'## Remove a refer�ncia do componente da mem�ria ##
Set Mail = Nothing
%>