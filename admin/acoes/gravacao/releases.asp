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
		Upload.Save upArquivo

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		txtnome = Upload.Form("txtNome")		
		dataHoje = Upload.Form("txtData")

		dia = Day(Date())
		mes = Month(Date())
		ano = Year(Date())

		'Debug
		'response.write("Data: "&dataHoje&"<br>")
		'response.end()

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
	
	if txtArquivo="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"releases (nome, dia, mes, ano, data, ultima_alteracao) values ('"&txtnome&"','"&dia&"','"&mes&"','"&ano&"','"&dataHoje&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	else
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"releases (nome, arquivo, dia, mes, ano, data, ultima_alteracao) values ('"&txtnome&"','"&txtArquivo&"','"&dia&"','"&mes&"','"&ano&"', '"&dataHoje&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	end if	

	response.redirect("_listas.asp?tipo=10&act=1")

elseif act="2" then
	
	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upArquivo

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		txtnome = Upload.Form("txtNome")		
		dataHoje = Upload.Form("txtData")

		dia = Day(Date())
		mes = Month(Date())
		ano = Year(Date())

		'Debug
		'response.write("Data: "&dataHoje&"<br>")
		'response.end()

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
	

	if txtArquivo="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"releases SET nome='"& txtnome &"', dia='"& dia &"', mes='"& mes &"', ano='"& ano &"', data='"& dataHoje &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
		addRs.open editSQL, Conexao
	else
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"releases SET nome='"& txtnome &"', arquivo='"& txtArquivo &"', dia='"& dia &"', mes='"& mes &"', ano='"& ano &"', data='"& dataHoje &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
		addRs.open editSQL, Conexao
	end if

	response.Redirect("_listas.asp?tipo=10&act=1")

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