<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	
	fase = request.querystring("fase")

	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upArquivo

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename

		'textuais'		
		idFase = Upload.Form("idFase")
		nome = Upload.Form("txtNome")

		'Debug
		'response.write("Nome da imagem: "&txtArquivo&"<br>")
		'response.end()	

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")
		

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"arquivo_1 (idFase, nome, arquivo, ultima_alteracao) values ('"&idFase&"','"&nome&"','"&txtArquivo&"','"&ultima_alteracao&"')"
	addRs.open addSQL, Conexao
	
	response.redirect("_listas.asp?tipo=5&act=1")	


elseif act="2" then
%>
	<!-- não existe esse caso -->
<%
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