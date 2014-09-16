<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'   act=5 Export
'**********************************************'
if act="1" then
%>
	<div><small>Jornalistas</small></div>
	<h1 class="desloca-esq">Lista de jornalistas cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_exportJornalistas.asp'">Exportar Lista</button></div>
	<div class="clear"></div>

	<%
	Set rsJornalistas = Server.CreateObject("ADODB.Recordset")
	rsJornalistas.Open "select * from "&prefixoTabela&"jornalistas order by id desc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="newsletter" width="100%">
		<thead>
			<tr>
				<th>ID</th>
	        	<th>Nome</th>
	        	<th>E-mail</th>
	            <th>Ve&iacute;culo de Imprensa/Editora</th>
	            <th>Telefone</th>
	            <th>Celular</th>
	            <th>Cidade</th>	            
	            <th>Estado</th>
	            <th>Informa&ccedil;&otilde;es (remote)</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsJornalistas.eof
	%>    		

			<tr class="gradeA">
				<td><%=rsJornalistas("id")%></td>
				<td><%=rsJornalistas("nome")%></td>
				<td><%=rsJornalistas("email")%></td>
				<td><%=rsJornalistas("veiculo")%></td>
				<td>(<%=rsJornalistas("dddtel")%>)&nbsp;<%=rsJornalistas("tel")%></td>
				<td>(<%=rsJornalistas("dddcel")%>)&nbsp;<%=rsJornalistas("cel")%></td>				
				<td><%=rsJornalistas("cidade")%></td>				
				<td><%=rsJornalistas("estado")%></td>
				<td>					
					<!-- Single button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
						    Informa&ccedil;&otilde;es (origem) <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						  	<%=rsJornalistas("infoRemote")%>
						  </ul>
						</div>					
				</td>
			</tr>
	        
		
	<%
	rsJornalistas.MoveNext()
	wend

	rsJornalistas.Close()
	set rsJornalistas = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>ID</th>
	        	<th>Nome</th>
	        	<th>E-mail</th>
	            <th>Ve&iacute;culo de Imprensa/Editora</th>
	            <th>Telefone</th>
	            <th>Celular</th>
	            <th>Cidade</th>	            
	            <th>Estado</th>
	            <th>Informa&ccedil;&otilde;es (remote)</th>
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