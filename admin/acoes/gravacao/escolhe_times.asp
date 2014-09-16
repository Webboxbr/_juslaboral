<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	Set rsTime = Server.CreateObject("ADODB.Recordset")
	rsTime.Open "select * from "&prefixoTabela&"times where id="&id, Conexao
	escudo = rsTime("escudo")
	nome = rsTime("nome")

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"times_participantes (idcampeonato, idtime, escudo, nome) values ('" & idC & "','" & id & "','" & escudo & "','" & nome & "')"
	addRs.open addSQL, Conexao
	response.Redirect("_dados.asp?tipo=3&act=1&idC="&idC)
elseif act="2" then
%>
	<!-- não existe esse caso -->
<%	
elseif act="3" then
	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"times_participantes WHERE id="&id
	DeleteRs.open sqlDelete, Conexao
	response.Redirect("_dados.asp?tipo=3&act=1&idC="&idC)
elseif act="4" then
%>
	
<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>