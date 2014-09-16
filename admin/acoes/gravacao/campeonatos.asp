<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	nome=request.Form("txtNome")
	resumo=request.Form("txtResumo")
	idFoto=request.Form("foto")
	categoria=request.Form("txtCategoria")
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")	

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"campeonatos (nome, resumo, foto, categoria, ultima_alteracao) values ('" & nome & "','" & resumo & "','" & idFoto & "','" & categoria & "','" & ultima_alteracao & "')"
	addRs.open addSQL, Conexao

	response.Redirect("_listas.asp?tipo=1&act=1")
elseif act="2" then
	nome=request.Form("txtNome")
	resumo=request.Form("txtResumo")
	idFoto=request.Form("foto")
	categoria=request.Form("txtCategoria")
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
	
	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"campeonatos SET nome='"& nome &"', resumo='"& resumo &"', foto='"& idFoto &"', categoria='"& categoria &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.Redirect("_listas.asp?tipo=1&act=1")
elseif act="3" then
%>
	<!-- não existe excluir campeonatos -->
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