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
elseif act="5" then

	' Excel Maker 1.0 by RaS! (ras78@libero.it), ver 1.0
	' --------------------------------------------------
	' This is a free and simple example about create Excel files with asp
	' You need the Microsoft Excel installed on you machine to use the
	' object. Without this one, you cannot create any .xls file.
	' Please report any bugs or feedback at ras78@libero.it



	Set rsJornalistas = Server.CreateObject("ADODB.Recordset")
	rsJornalistas.Open "select * from "&prefixoTabela&"jornalistas order by nome asc", Conexao

	Response.ContentType = "application/vnd.ms-excel"
	'Response.ContentType = "application/vnd.ms-word" 
	Response.AddHeader "content-disposition","attachment;filename=lista_jornalistas.xls"
	'Response.AddHeader "content-disposition","attachment;filename=entidades.doc"

	Response.Buffer = TRUE

	%>


	<table width="100%" border="0" cellspacing="0" cellpadding="0">
	  <tr>
	    <td>Nome</td>
	    <td>E-mail</td>
	    <td>Ve&iacute;culo de Imprensa/Editora</td>
	    <td>Telefone</td>
	    <td>Celular</td>
	    <td>Cidade</td>
	    <td>Estado</td>
	  </tr>
	<%
	while not rsJornalistas.eof
	%>     
	  <tr>
	    <td><%=rsJornalistas("nome")%></td>
	    <td><%=rsJornalistas("email")%></td>
	    <td><%=rsJornalistas("veiculo")%></td>
	    <td>(<%=rsJornalistas("dddtel")%>) <%=rsJornalistas("tel")%></td>
	    <td>(<%=rsJornalistas("dddcel")%>) <%=rsJornalistas("cel")%></td>
	    <td><%=rsJornalistas("cidade")%></td>
	    <td><%=rsJornalistas("estado")%></td>
	  </tr>
	<%
	rsJornalistas.MoveNext()
	wend

	rsJornalistas.Close()
	set rsJornalistas = nothing
	Conexao.Close()
	%>  
	</table>

<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>