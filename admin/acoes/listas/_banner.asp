<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Banners</small></div>
	<h1 class="desloca-esq">Lista de banners cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=1&act=1'">Incluir Banner</button></div>
	<div class="clear"></div>
	<div style="height:20px"></div>

	<%
	Set rsBanner = Server.CreateObject("ADODB.Recordset")
	rsBanner.Open "select * from "&prefixoTabela&"banner where ativo='s' order by id desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Banner</th>
	        	<th>Link</th> 
	            <th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsBanner.eof
	%>    		

			<tr class="gradeA">
				<td>
					<%
						if rsBanner("arquivo")="n" then
						%>
							<img src="images/noimg.png" width="70px" alt="">
						<%						
						else
						%>
							<img src="<%=enderecoBanner%><%=rsBanner("arquivo")%>" width="70px" alt="">
						<%
						end if
					%>
				</td>
				<td><a href="<%=rsBanner("link")%>"><%=rsBanner("link")%></a></td>
							
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=1&act=2&id=<%=rsBanner("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=1&act=3&id=<%=rsBanner("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsBanner.MoveNext()
	wend

	rsBanner.Close()
	set rsBanner = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Banner</th>
	        	<th>Link</th> 
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