<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	
	idFoto		=	request.QueryString("idFoto")
	idNoticia	=	request.QueryString("idNoticia")
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"relacionamentofotonoticia (idnoticia, idfoto, ultima_alteracao) values ('" & idNoticia & "','" & idFoto & "','" & ultima_alteracao & "')"
	addRs.open addSQL, Conexao

	response.redirect("_dados.asp?tipo=14&act=2&id="&idNoticia)

elseif act="2" then
%>	
	
<%
elseif act="3" then
	set DeleteRs=Server.CreateObject("ADODB.recordset")
	idNoticia = request.QueryString("idNoticia")
	sqlDelete = "DELETE FROM "&prefixoTabela&"relacionamentofotonoticia WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	response.redirect("_dados.asp?tipo=14&act=2&id="&idNoticia)
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