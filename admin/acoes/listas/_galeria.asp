<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Galeria de Fotos</small></div>
	<h1 class="desloca-esq">Lista de fotos cadastradas</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=4&act=1'">Incluir Foto</button></div>
	<div class="clear"></div>

	<%
	Set rsGaleria = Server.CreateObject("ADODB.Recordset")
	rsGaleria.Open "select * from "&prefixoTabela&"galeria where ativo='s' order by id desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Foto</th>	        	
	            <th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsGaleria.eof
	%>    		

			<tr class="gradeA">
				<td>
					<%
						if rsGaleria("arquivo")="n" then
						%>
							<img src="images/noimg.png" width="70px" alt="">
						<%						
						else
						%>
							<img src="<%=enderecoFotoTh%><%=rsGaleria("arquivo")%>" width="70px" alt="">
						<%
						end if
					%>
				</td>								
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=4&act=2&id=<%=rsGaleria("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=4&act=3&id=<%=rsGaleria("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsGaleria.MoveNext()
	wend

	rsGaleria.Close()
	set rsGaleria = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Foto</th>	        	
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