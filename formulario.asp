<title>Título do seu site</title>
<meta content="text/html; charset=iso-8859-1" http-equiv="Content-Type"/>
<div align="center">

<p>Formulário de Contato</p>

<form action="formulario.asp" method="post" name="frmReferral">
<table border="0">
<tbody>
<tr>
<td align="right" valign="top">

<strong>Nome:</strong></td>
<td>
<input name="FromName" size="50" type="text" value="<%=FromName%>" /></td>
</tr>
<tr>
<td align="right" valign="top">

<strong>E-mail:</strong></td>
<td>
<input name="FromEmail" size="50" type="text" value="<%=FromEmail%>" /></td>
</tr>
<tr>
<td align="right" valign="top">

<strong>Assunto:</strong></td>
<td>
<input name="Subject" size="50" type="text" value="<%=Subject%>" /></td>
</tr>
<tr>
<td align="right" valign="top">

<strong>Mensagem:</strong></td>
<td>
<textarea cols="50" name="Message" rows="5" wrap="virtual">
<%=strBody%></textarea></td>
</tr>
<tr>
<td>
 </td>
<td>
<input class="botoes" name="rstReferral" type="submit" value="Enviar"/>  
<input class="botoes" name="subReferral" type="reset" value="Limpar"/> </tr>
</tbody>
</table>
</form>
</div>


<%

nome = Request("FromName")
email = Request("FromEmail")
assunto = Request("Subject")
msg = Request("Message")


if email<>"" then
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



'Envia email de confirmação de inscrição - para o usuário'
meusmtp = "smtp.cursojuslaboral.com.br" ' Informacoes so seu servidor SMTP
minhacontaautenticada = "contato_inscricoes@cursojuslaboral.com.br" ' conta de e-mail utilizada para enviar
minhasenhaparaenvio = "spt426306!" ' senha da conta de e-mail
emaildestino = "eduardo@webbox.com.br" ' e-mail que vai receber as mensagens do formulario
'emaildestino = email
FromEmail = "contato_inscricoes@cursojuslaboral.com.br"
FromName = "Curso Juslaboral"
Subject = "SOLICITAÇÃO DE INSCRIÇÃO"

Set Mail = Server.CreateObject("Persits.MailSender") 
Mail.Host = meusmtp
Mail.Port = 587
Mail.Username = minhacontaautenticada
Mail.Password = minhasenhaparaenvio
Mail.From = FromEmail
Mail.FromName = FromName
Mail.AddAddress emaildestino 
Mail.Subject = Subject


a="<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html xmlns='http://www.w3.org/1999/xhtml'><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><title>SOLICITAÇÃO DE INSCRIÇÃO</title><link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'><link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'></head><body>"

b="<table width='100%' border='0' cellspacing='0' cellpadding='0'> <tr> <td>&nbsp;</td> <td width='599px'> <img src='http://www.cursojuslaboral.com.br/email/images/1.jpg' alt=''><table width='599' border='0' cellspacing='0' cellpadding='0' bgcolor='#EDEDED'> <tr> <td width='20'>&nbsp;</td> <td width='559'><p style='font-family: 'Oswald', sans-serif; font-size:30px; color:#444444; text-transform:uppercase;'>CONFIRMAÇÃO DE INSCRIÇÃO</p><p style='font-family: 'Open Sans', sans-serif;; font-size:15px; color:#666;'>Dados do solicitante:</p><table width='559' border='0' cellspacing='0' cellpadding='0' background='#A2A2A2'>"

c="<tr style='background-color:#A2A2A2'><td width='20'>&nbsp;</td> <td width='519'>&nbsp;</td> <td width='20'>&nbsp;</td> </tr> <tr style='background-color:#A2A2A2'> <td>&nbsp;</td> <td><p style='font-family: 'Open Sans', sans-serif;; font-size:15px; color:#fff;'>Nome: "&nome&"<br />Email: "&email&"<br />Telefone: "&telefone&"<br />Curso: "&curso&"<br /></p> </td> <td>&nbsp;</td> </tr> <tr style='background-color:#A2A2A2'> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> </tr></table><table width='100%' border='0' cellspacing='0' cellpadding='0'><tr> <td width='20'>&nbsp;</td> <td>&nbsp;</td> <td width='250'>&nbsp;</td> <td width='20'>&nbsp;</td> </tr> <tr> <td>&nbsp;</td> "

d="<td valign='top'><p style='font-family: 'Oswald', sans-serif; font-size:30px; color:#9F0030;'>Cursos Juslaboral</p> <p style='font-family: 'Open Sans', sans-serif;; font-size:15px; color:#666;'>Conteúdos práticos e esclarecedores, que integram-se entre si para oferecer uma assimilação completa do conhecimento e favorecer a aprovação.</p></td> <td align='right'><img src='http://www.cursojuslaboral.com.br/email/images/cursos.png' width='230' height='159' alt='' /></td> <td>&nbsp;</td> </tr> <tr> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td></tr></table> </td> <td width='20'>&nbsp;</td> </tr></table> <img src='http://www.cursojuslaboral.com.br/email/images/2.jpg' alt=''> </td> <td>&nbsp;</td></tr></table></body></html>"


Mail.Body = a+b+c+d

Mail.Send
Set Mail = Nothing







'Envia email de confirmação de inscrição - para o usuário'
meusmtp = "smtp.cursojuslaboral.com.br" ' Informacoes so seu servidor SMTP
minhacontaautenticada = "contato_inscricoes@cursojuslaboral.com.br" ' conta de e-mail utilizada para enviar
minhasenhaparaenvio = "spt426306!" ' senha da conta de e-mail
'emaildestino = "eduardo@webbox.com.br" ' e-mail que vai receber as mensagens do formulario
emaildestino = email
FromEmail = "contato_inscricoes@cursojuslaboral.com.br"
FromName = "Curso Juslaboral"
Subject = "INSCRIÇÃO SOLICITADA COM SUCESSO"

Set Mail = Server.CreateObject("Persits.MailSender") 
Mail.Host = meusmtp
Mail.Port = 587
Mail.Username = minhacontaautenticada
Mail.Password = minhasenhaparaenvio
Mail.From = FromEmail
Mail.FromName = FromName
Mail.AddAddress emaildestino 
Mail.Subject = Subject


a="<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html xmlns='http://www.w3.org/1999/xhtml'><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><title>INSCRIÇÃO SOLICITADA COM SUCESSO</title><link href='http://fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'><link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'></head><body><table width='100%' border='0' cellspacing='0' cellpadding='0'>"

b="<tr> <td>&nbsp;</td><td width='599px'><img src='http://www.cursojuslaboral.com.br/email/images/1.jpg' alt=''><table width='599' border='0' cellspacing='0' cellpadding='0' bgcolor='#EDEDED'><tr><td width='20'>&nbsp;</td> <td width='559'><p style='font-family: 'Oswald', sans-serif; font-size:30px; color:#444444; text-transform:uppercase;'>INSCRIÇÃO SOLICITADA COM SUCESSO!</p><p style='font-family: 'Open Sans', sans-serif;; font-size:15px; color:#666;'>Seu pedido de inscrição foi recebido corretamente. Confira os dados:</p><table width='559' border='0' cellspacing='0' cellpadding='0' background='#A2A2A2'> <tr style='background-color:#A2A2A2'><td width='20'>&nbsp;</td><td width='519'>&nbsp;</td>"

c="<td width='20'>&nbsp;</td></tr> <tr style='background-color:#A2A2A2'> <td>&nbsp;</td> <td><p style='font-family: 'Open Sans', sans-serif;; font-size:15px; color:#fff;'>Nome: "&nome&"<br />Email: "&email&"<br />Telefone: "&telefone&"<br />Curso: "&curso&"<br /></p> </td> <td>&nbsp;</td> </tr> <tr style='background-color:#A2A2A2'> <td>&nbsp;</td> <td>&nbsp;</td> <td>&nbsp;</td> </tr></table><p style='font-family: 'Open Sans', sans-serif;; font-size:15px; color:#666;'>Aguarde nosso contato confirmando data, horário e outras informações importantes referentes ao curso escolhido.</p><table width='100%' border='0' cellspacing='0' cellpadding='0'><tr><td width='20'>&nbsp;</td><td>&nbsp;</td> <td width='250'>&nbsp;</td> <td width='20'>&nbsp;</td></tr>"

d="<tr><td>&nbsp;</td><td valign='top'><p style='font-family: 'Oswald', sans-serif; font-size:30px; color:#9F0030;'>Cursos Juslaboral</p><p style='font-family: 'Open Sans', sans-serif;; font-size:15px; color:#666;'>Conteúdos práticos e esclarecedores, que integram-se entre si para oferecer uma assimilação completa do conhecimento e favorecer a aprovação.</p></td> <td align='right'><img src='http://www.cursojuslaboral.com.br/email/images/cursos.png' width='230' height='159' alt='' /></td> <td>&nbsp;</td> </tr> <tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table></td><td width='20'>&nbsp;</td></tr></table> <img src='http://www.cursojuslaboral.com.br/email/images/2.jpg' alt=''> </td><td>&nbsp;</td></tr></table></body></html>"


Mail.Body = a+b+c+d

Mail.Send
Set Mail = Nothing

end if

%>