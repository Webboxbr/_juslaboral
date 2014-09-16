<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
%>
	<!-- Não existe nesse caso -->
<%
elseif act="2" then
%>
	<!-- Não existe nesse caso -->
<%
elseif act="3" then
	
	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"news WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	response.redirect("_listas.asp?tipo=7&act=1")

elseif act="4" then
%>
	<!-- Não existe nesse caso -->
<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>