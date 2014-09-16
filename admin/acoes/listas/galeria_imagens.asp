<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Galeria de Imagens</small></div>
	<h1 class="desloca-esq">Lista de imagens cadastradas</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=5&act=1'">Incluir Imagem</button></div>
	<div class="clear"></div>

	<%
	Set rsGaleriaDeImagens = Server.CreateObject("ADODB.Recordset")
	rsGaleriaDeImagens.Open "select * from "&prefixoTabela&"galeriaimagens order by id desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Foto</th>
	        	<th>Nome</th>           
	            <th>Resumo</th>
	            <th>Destaque</th>
	            <th>Editar</th>
	            <th>Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsGaleriaDeImagens.eof
	%>    		

			<tr class="gradeA">
				<td>
					<%
						if rsGaleriaDeImagens("foto")="n" then
						%>
							<img src="images/noimg.png" width="70px" alt="">
						<%						
						else
						%>
							<img src="<%=enderecoGaleriaThumb%><%=rsGaleriaDeImagens("foto")%>" width="70px" alt="">
						<%
						end if
					%>
				</td>
				<td><%=rsGaleriaDeImagens("nome")%></td>
				<td><%=rsGaleriaDeImagens("resumo")%></td>
				<td>
					<%
						if rsGaleriaDeImagens("destaque")="s" then
						%>
							<button type="button" class="btn btn-success">Sim</button>
						<%
						else
						%>
							<button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=5&act=4&id=<%=rsGaleriaDeImagens("id")%>'">N&atilde;o</button>
						<%
						end if
					%>
				</td>				
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=5&act=2&id=<%=rsGaleriaDeImagens("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=5&act=3&id=<%=rsGaleriaDeImagens("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsGaleriaDeImagens.MoveNext()
	wend

	rsGaleriaDeImagens.Close()
	set rsGaleriaDeImagens = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Foto</th>
	        	<th>Nome</th>           
	            <th>Resumo</th>
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