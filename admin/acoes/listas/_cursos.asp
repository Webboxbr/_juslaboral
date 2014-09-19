<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Cursos</small></div>
	<h1 class="desloca-esq">Lista de cursos cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=11&act=1'">Incluir Curso</button></div>
	<div class="clear"></div>

	<%
	
	Set rsCursos = Server.CreateObject("ADODB.Recordset")
	rsCursos.Open "select * from "&prefixoTabela&"cursos where ativo='s' order by id desc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>	        	
	        	<th>Título</th>        	
	        	<th width="80px">Editar</th>
	        	<th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsCursos.eof
	%>    		

			<tr class="gradeA">				
				<td><%=rsCursos("nome")%></td>				
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=11&act=2&id=<%=rsCursos("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=11&act=3&id=<%=rsCursos("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsCursos.MoveNext()
	wend

	rsCursos.Close()
	set rsCursos = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Título</th>        	
	        	<th>Editar</th>
	        	<th>Excluir</th>
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