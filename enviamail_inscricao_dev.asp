<%
	nome 		=	request.QueryString("nome")
	curso 		=	request.QueryString("curso")
	email 		=	request.QueryString("email")
	telefone 	=	request.QueryString("telefone")

' ********** envia e-mail agendamento *****************



Dim Mail ' objeto mail 
Dim FromName ' nome do remetente
Dim FromEmail ' endereço de E-mail do remetente
Dim ToEmail ' endereço do destinatario
Dim Subject, strBody ' corpo da mensagem
Dim ThisPage ' o endereco do seu site
Dim RefPage ' a referencia URL 
Dim Val_Input ' variável Booleana usada na validação 
Dim meusmtp
Dim minhacontaautenticada
Dim minhasenhaparaenvio

'Abaixo seguem algumas definicoes de variaveis para o envio de seu formulario. Por favor preencha os campos abaixo.

meusmtp = "smtp.seudominio.com" ' Informacoes so seu servidor SMTP
minhacontaautenticada = "contato_inscricoes@cursojuslaboral.com.br" ' conta de e-mail utilizada para enviar
minhasenhaparaenvio = "spt426306!" ' senha da conta de e-mail
emaildestino = "eduardo@webbox.com.br" ' e-mail que vai receber as mensagens do formulario


'Fim da definição manual de parâmetros.

' Retorna o nome do arquivo de script e a url da pagina
ThisPage = Request.ServerVariables("SCRIPT_NAME")
RefPage = Request.ServerVariables("HTTP_REFERER")

strBody = Trim(Request.Form("Message"))
Subject = "subject"
ToEmail = emaildestino
FromName = Trim(Request.Form("FromName"))
FromEmail = Trim(Request.Form("FromEmail"))


Set Mail = Server.CreateObject("Persits.MailSender") 
Mail.Host = meusmtp
Mail.Port = 587
Mail.Username = minhacontaautenticada
Mail.Password = minhasenhaparaenvio
Mail.From = FromEmail
Mail.FromName = FromName
Mail.AddAddress ToEmail 
Mail.Subject = Subject
Mail.Body = "teste"

Mail.Send


response.Redirect("default.asp")


%>