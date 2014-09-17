<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then

	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upBanner

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		txtlink = Upload.Form("txtLink")

		'Debug
		'response.write("Nome da imagem: "&txtArquivo&"<br>")
		'response.end()	

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")
		

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"banner (arquivo, link, ultima_alteracao) values ('"&txtArquivo&"','"&txtlink&"','"&ultima_alteracao&"')"
	addRs.open addSQL, Conexao

	response.redirect("_listas.asp?tipo=1&act=1")

elseif act="2" then
	
	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upBanner

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		txtlink = Upload.Form("txtLink")

		'Debug
		'response.write("Nome da imagem: "&txtArquivo&"<br>")
		'response.end()		

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")

	if txtArquivo="" then
	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"banner SET link='"& txtlink &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao
	else
	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"banner SET arquivo='"& txtArquivo &"', link='"& txtlink &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao	
	end if

	response.Redirect("_listas.asp?tipo=1&act=1")

elseif act="3" then
%>
	<!-- não existe esse caso -->
<%
elseif act="4" then
%>
	<!-- não existe esse caso -->
<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>