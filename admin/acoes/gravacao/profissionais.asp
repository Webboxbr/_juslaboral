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
		Upload.Save upFoto

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		nome = Upload.Form("txtNome")
		apelido = Upload.Form("txtApelido")
		posicao = Upload.Form("txtPosicao")
		idcategoria = Upload.Form("txtCategoria")
			Select Case idcategoria
				Case 1
				categoria = "Profissional"
				Case 2
				categoria = "Sub 20"
				Case 3
				categoria = "Sub 17"
				Case 4
				categoria = "Sub 15"				
			End Select
		datanasc = Upload.Form("txtDataNasc")
		cidade = Upload.Form("txtCidade")
		origem = Upload.Form("txtOrigem")
		estreia = Upload.Form("txtEstreia")
		jogos = Upload.Form("txtJogos")
		gols = Upload.Form("txtGols")
		historia = Upload.Form("txtTexto")

		'Debug
		'response.write("Data: "&dataHoje&"<br>")
		'response.end()

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")


	if txtArquivo="" and txtArquivo2="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"profissional (posicao, nome, datanasc, cidade, origem, jogoestreia, jogos, gols, texto, categoria, idcategoria, apelido, ultima_alteracao) values ('"&posicao&"','"&nome&"','"&datanasc&"','"&cidade&"','"&origem&"','"&estreia&"','"&jogos&"','"&gols&"','"&historia&"','"&categoria&"','"&idcategoria&"','"&apelido&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	elseif txtArquivo="" and txtArquivo2<>"" then
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"profissional (capa, posicao, nome, datanasc, cidade, origem, jogoestreia, jogos, gols, texto, categoria, idcategoria, apelido, ultima_alteracao) values ('"&txtArquivo2&"','"&posicao&"','"&nome&"','"&datanasc&"','"&cidade&"','"&origem&"','"&estreia&"','"&jogos&"','"&gols&"','"&historia&"','"&categoria&"','"&idcategoria&"','"&apelido&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	elseif txtArquivo<>"" and txtArquivo2="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"profissional (foto, posicao, nome, datanasc, cidade, origem, jogoestreia, jogos, gols, texto, categoria, idcategoria, apelido, ultima_alteracao) values ('"&txtArquivo&"','"&posicao&"','"&nome&"','"&datanasc&"','"&cidade&"','"&origem&"','"&estreia&"','"&jogos&"','"&gols&"','"&historia&"','"&categoria&"','"&idcategoria&"','"&apelido&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	else
		set addRs=Server.CreateObject("ADODB.recordset")
		addSQL = "INSERT INTO "&prefixoTabela&"profissional (foto, capa, posicao, nome, datanasc, cidade, origem, jogoestreia, jogos, gols, texto, categoria, idcategoria, apelido, ultima_alteracao) values ('"&txtArquivo&"','"&txtArquivo2&"','"&posicao&"','"&nome&"','"&datanasc&"','"&cidade&"','"&origem&"','"&estreia&"','"&jogos&"','"&gols&"','"&historia&"','"&categoria&"','"&idcategoria&"','"&apelido&"','"&ultima_alteracao&"')"
		addRs.open addSQL, Conexao
	end if		

	response.redirect("_listas.asp?tipo=13&act=1")

elseif act="2" then
	
	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upFoto

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		nome = Upload.Form("txtNome")
		apelido = Upload.Form("txtApelido")
		posicao = Upload.Form("txtPosicao")
		idcategoria = Upload.Form("txtCategoria")
			Select Case idcategoria
				Case 1
				categoria = "Profissional"
				Case 2
				categoria = "Sub 20"
				Case 3
				categoria = "Sub 17"
				Case 4
				categoria = "Sub 15"				
			End Select
		datanasc = Upload.Form("txtDataNasc")
		cidade = Upload.Form("txtCidade")
		origem = Upload.Form("txtOrigem")
		estreia = Upload.Form("txtEstreia")
		jogos = Upload.Form("txtJogos")
		gols = Upload.Form("txtGols")
		historia = Upload.Form("txtTexto")

		'Debug
		'response.write("Data: "&dataHoje&"<br>")
		'response.end()
		
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
	
	if txtArquivo="" and txtArquivo2="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"profissional SET posicao='"&posicao&"', nome='"&nome&"', datanasc='"&datanasc&"', cidade='"&cidade&"', origem='"&origem&"', jogoestreia='"&estreia&"', jogos='"&jogos&"', gols='"&gols&"', texto='"&historia&"', categoria='"&categoria&"', idcategoria='"&idcategoria&"', apelido='"&apelido&"', ultima_alteracao='"&ultima_alteracao&"' WHERE id="&id
		addRs.open editSQL, Conexao
	elseif txtArquivo="" and txtArquivo2<>"" then
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"profissional SET capa='"&txtArquivo2&"', posicao='"&posicao&"', nome='"&nome&"', datanasc='"&datanasc&"', cidade='"&cidade&"', origem='"&origem&"', jogoestreia='"&estreia&"', jogos='"&jogos&"', gols='"&gols&"', texto='"&historia&"', categoria='"&categoria&"', idcategoria='"&idcategoria&"', apelido='"&apelido&"', ultima_alteracao='"&ultima_alteracao&"' WHERE id="&id
		addRs.open editSQL, Conexao
	elseif txtArquivo<>"" and txtArquivo2="" then
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"profissional SET foto='"&txtArquivo&"', posicao='"&posicao&"', nome='"&nome&"', datanasc='"&datanasc&"', cidade='"&cidade&"', origem='"&origem&"', jogoestreia='"&estreia&"', jogos='"&jogos&"', gols='"&gols&"', texto='"&historia&"', categoria='"&categoria&"', idcategoria='"&idcategoria&"', apelido='"&apelido&"', ultima_alteracao='"&ultima_alteracao&"' WHERE id="&id
		addRs.open editSQL, Conexao
	else
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"profissional SET foto='"&txtArquivo&"', capa='"&txtArquivo2&"', posicao='"&posicao&"', nome='"&nome&"', datanasc='"&datanasc&"', cidade='"&cidade&"', origem='"&origem&"', jogoestreia='"&estreia&"', jogos='"&jogos&"', gols='"&gols&"', texto='"&historia&"', categoria='"&categoria&"', idcategoria='"&idcategoria&"', apelido='"&apelido&"', ultima_alteracao='"&ultima_alteracao&"' WHERE id="&id
		addRs.open editSQL, Conexao
	end if		

	response.redirect("_listas.asp?tipo=13&act=1")
	

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