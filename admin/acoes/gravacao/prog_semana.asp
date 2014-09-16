<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
%>
	<!-- não existe nesse caso -->
<%
elseif act="2" then

	texto = request.form("txtTexto")
	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"programacao SET texto='"& texto &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.Redirect("admin.asp")

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