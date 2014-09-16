<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Categoria de Not&iacute;cias</small></div>
	<h1 class="desloca-esq">Lista de categorias cadastradas</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=8&act=1'">Incluir Categoria</button></div>
	<div class="clear"></div>

	<%
	Set rsCategorias = Server.CreateObject("ADODB.Recordset")
	rsCategorias.Open "select * from "&prefixoTabela&"categoria order by nome asc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>				
	        	<th>Nome</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsCategorias.eof
	%>    		

			<tr class="gradeA">
				<td><%=rsCategorias("nome")%></td>
			</tr>
	        
		
	<%
	rsCategorias.MoveNext()
	wend

	rsCategorias.Close()
	set rsCategorias = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Nome</th>
	        </tr>
		</tfoot>
	</table>
<%
elseif act="2" then
%>
	<!-- não existe listagem nesse caso -->
<%
elseif act="3" then
%>
	<!-- não existe listagem nesse caso -->
<%
elseif act="4" then
%>
	<!-- não existe listagem nesse caso -->
<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>