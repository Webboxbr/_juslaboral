<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Notícias</small></div>
	<h1 class="desloca-esq">Lista de notícias cadastradas</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=2&act=1'">Incluir Notícia</button></div>
	<div class="clear"></div>
	<p style="margin-top:-20px;"  class="label label-info">ATENÇÃO: Somente as três últimas notícias cadastradas, serão visualizadas no site.</p>
	<div style="height:20px"></div>

	<%
	
	Set rsNoticias = Server.CreateObject("ADODB.Recordset")
	rsNoticias.Open "select id, nome, STR_TO_DATE(data,'%d/%m/%Y') as data from "&prefixoTabela&"noticia where ativo='s' order by data asc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="noticias" width="100%">
		<thead>
			<tr>	        	
	        	<th>Título</th>
	        	<th>Data</th>	        	
	        	<th width="80px">Editar</th>
	        	<th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsNoticias.eof
	%>    		

			<tr class="gradeA">				
				<td><%=rsNoticias("nome")%></td>				
				<td><%=rsNoticias("data")%></td>				
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=2&act=2&id=<%=rsNoticias("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=2&act=3&id=<%=rsNoticias("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsNoticias.MoveNext()
	wend

	rsNoticias.Close()
	set rsNoticias = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Título</th>
	        	<th>Data</th>	        	
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