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
	<div><small>Newsletter</small></div>
	<h1 class="desloca-esq">Lista de contatos cadastradas</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_exportCadastroNews.asp'">Exportar Lista</button></div>
	<div class="clear"></div>

	<%
	Set rsNewsletter = Server.CreateObject("ADODB.Recordset")
	rsNewsletter.Open "select * from "&prefixoTabela&"news order by ano desc, mes desc, dia desc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="newsletter" width="100%">
		<thead>
			<tr>
				<th>ID</th>
	        	<th>Nome</th>
	        	<th>E-mail</th>
	            <th>Sexo</th>
	            <th>Local</th>
	            <th>Data de Nascimento</th>
	            <th>Facebook/Site</th>	            
	            <th>Excluir</th>
	            <th>Informa&ccedil;&otilde;es (remote)</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsNewsletter.eof
	%>    		

			<tr class="gradeA">
				<td><%=rsNewsletter("id")%></td>
				<td><%=rsNewsletter("firstname")%>&nbsp;<%=rsNewsletter("lastname")%></td>
				<td><%=rsNewsletter("email")%></td>
				<td><%=rsNewsletter("sexo")%></td>
				<td><%=rsNewsletter("local")%></td>
				<td><%=rsNewsletter("datanasc")%></td>				
				<td>
					<%
					if rsNewsletter("userid")<>"0" then
					%>
						<a href="https://www.facebook.com/<%=rsNewsletter("userid")%>" target="_blank">Facebook</a>
					<%	
					else
						response.write("Site")
					end if
					%>
				</td>				
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=7&act=3&id=<%=rsNewsletter("id")%>'">Excluir</button></td>
				<td>					
					<!-- Single button -->
						<div class="btn-group">
						  <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
						    Informa&ccedil;&otilde;es (origem) <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" role="menu">
						  	<%=rsNewsletter("infoRemote")%>
						  </ul>
						</div>					
				</td>
			</tr>
	        
		
	<%
	rsNewsletter.MoveNext()
	wend

	rsNewsletter.Close()
	set rsNewsletter = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>ID</th>
				<th>Nome</th>
	        	<th>E-mail</th>
	            <th>Sexo</th>
	            <th>Local</th>
	            <th>Data de Nascimento</th>
	            <th>Facebook/Site</th>
	            <th>Excluir</th>	            
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