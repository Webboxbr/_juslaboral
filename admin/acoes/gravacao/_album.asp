<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then

	nome = request.form("txtNome")
	texto = request.form("txtTexto")

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")
		

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"album (nome, texto, ultima_alteracao) values ('"&nome&"','"&texto&"','"&ultima_alteracao&"')"
	addRs.open addSQL, Conexao

	response.redirect("_listas.asp?tipo=4&act=1")

elseif act="2" then
	
	nomeAtual = request.form("txtNomeAtual")
	textoAtual = request.form("txtTextoAtual")	
	nome = request.form("txtNome")
	texto = request.form("txtTexto")

	if nome="" then
	nome = nomeAtual
	end if
	if texto="" then
	texto=textoAtual
	end if

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")
	
	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"album SET nome='"& nome &"', texto='"& texto &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao
	
	response.Redirect("_listas.asp?tipo=4&act=1")

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