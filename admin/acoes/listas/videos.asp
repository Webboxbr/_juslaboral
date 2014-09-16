<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Galeria de V&iacute;deos</small></div>
	<h1 class="desloca-esq">Lista de v&iacute;deos cadastradas</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=6&act=1'">Incluir V&iacute;deo</button></div>
	<div class="clear"></div>

	<%
	Set rsGaleriaDeVideos = Server.CreateObject("ADODB.Recordset")
	rsGaleriaDeVideos.Open "select * from "&prefixoTabela&"galeriavideos order by id desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Foto</th>
	        	<th>V&iacute;deo</th>
	            <th>Destaque</th>
	            <th>Editar</th>
	            <th>Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsGaleriaDeVideos.eof
	%>    		

			<tr class="gradeA">
				<td>
					<%
						if rsGaleriaDeVideos("foto")="n" then
						%>
							<img src="images/noimg.png" width="70px" alt="">
						<%						
						else
						%>
							<img src="<%=enderecoGaleriaThumb%><%=rsGaleriaDeVideos("foto")%>" width="70px" alt="">
						<%
						end if
					%>
				</td>
				<td><%=rsGaleriaDeVideos("video")%></td>
				<td>
					<%
						if rsGaleriaDeVideos("destaque")="s" then
						%>
							<button type="button" class="btn btn-success">Sim</button>
						<%
						else
						%>
							<button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=6&act=4&id=<%=rsGaleriaDeVideos("id")%>'">N&atilde;o</button>
						<%
						end if
					%>
				</td>				
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=6&act=2&id=<%=rsGaleriaDeVideos("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=6&act=3&id=<%=rsGaleriaDeVideos("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsGaleriaDeVideos.MoveNext()
	wend

	rsGaleriaDeVideos.Close()
	set rsGaleriaDeVideos = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Foto</th>
	        	<th>V&iacute;deo</th>
	            <th>Destaque</th>
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