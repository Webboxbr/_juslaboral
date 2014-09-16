<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Profissionais</small></div>
	<h1 class="desloca-esq">Lista de profissionais cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=13&act=1'">Incluir Jogador</button></div>
	<div class="clear"></div>

	<%
	
	Set rsProfissionais = Server.CreateObject("ADODB.Recordset")
	rsProfissionais.Open "select * from "&prefixoTabela&"profissional order by nome asc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="profissionais" width="100%">
		<thead>
			<tr>
				<th>ID categoria</th>				
	        	<th>Foto</th>
	        	<th>Nome</th>
	        	<th>Categoria</th>
	        	<th>Posi&ccedil;&atilde;o</th>
	        	<th>Editar</th>
	        	<th>Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsProfissionais.eof

	Select Case rsProfissionais("posicao")
		Case 1
			posicao = "Goleiro"
		Case 2
			posicao = "Zagueiro"
		Case 3
			posicao = "Lateral"
		Case 4
			posicao = "Meio-campo"
		Case 5
			posicao = "Atacante"
	End Select

	%>    		

			<tr class="gradeA">
				<td><%=rsProfissionais("idcategoria")%></td>
				<td>
					<%
						if rsProfissionais("foto")="n" then
						response.Write("<img src='images/noimg.png' width='70' alt='' />")
						else
						response.Write("<img src='"& enderecoFoto+rsProfissionais("foto") &"' width='70' alt='' />")
						end if
					%>
				</td>
				<td><%=rsProfissionais("nome")%></td>
				<td><%=rsProfissionais("categoria")%></td>
				<td><%=posicao%></td>				
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=13&act=2&id=<%=rsProfissionais("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=13&act=3&id=<%=rsProfissionais("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsProfissionais.MoveNext()
	wend

	rsProfissionais.Close()
	set rsProfissionais = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>ID categoria</th>
				<th>Foto</th>
	        	<th>Nome</th>
	        	<th>Categoria</th>
	        	<th>Posi&ccedil;&atilde;o</th>
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