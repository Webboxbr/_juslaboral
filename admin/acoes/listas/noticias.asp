<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Not&iacute;cias</small></div>
	<h1 class="desloca-esq">Lista de not&iacute;cias cadastradas</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=9&act=1'">Incluir Not&iacute;cia</button></div>
	<div class="clear"></div>

	<%
	
	Set rsNoticias = Server.CreateObject("ADODB.Recordset")
	rsNoticias.Open "select id, foto, nome, categoria, destaque, STR_TO_DATE(data,'%d/%m/%Y') as data from "&prefixoTabela&"noticias order by data desc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="noticias" width="100%">
		<thead>
			<tr>				
	        	<th>Foto</th>
	        	<th>Nome</th>
	        	<th>Categoria</th>
	        	<th>Data</th>
	        	<th>Destaque</th>
	        	<th>Galeria</th>
	        	<th>Editar</th>
	        	<th>Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsNoticias.eof
	%>    		

			<tr class="gradeA">
				<td>
					<%
						if rsNoticias("foto")="n" then
						response.Write("<img src='images/noimg.png' width='70' height='50' alt='' />")
						else
						response.Write("<img src='"& enderecoGaleriaThumb+rsNoticias("foto") &"' width='70' height='50' alt='' />")
						end if
					%>
				</td>
				<td><%=rsNoticias("nome")%></td>
				<td><%=rsNoticias("categoria")%></td>
				<td><%=rsNoticias("data")%></td>
				<td>
					<%
						if rsNoticias("destaque")="s" then
						%>
							<button type="button" class="btn btn-success">Sim</button>
						<%
						else
						%>
							<button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=9&act=4&id=<%=rsNoticias("id")%>'">N&atilde;o</button>
						<%
						end if
					%>
				</td>
				<td><button type="button" class="btn btn-success" onclick="location.href='_dados.asp?tipo=14&act=2&id=<%=rsNoticias("id")%>'">Galeria de fotos da not&iacute;cia</button></td>
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=9&act=2&id=<%=rsNoticias("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=9&act=3&id=<%=rsNoticias("id")%>'">Excluir</button></td>
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
				<th>Foto</th>
	        	<th>Nome</th>
	        	<th>Categoria</th>
	        	<th>Data</th>
	        	<th>Destaque</th>
	        	<th>Galeria</th>
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