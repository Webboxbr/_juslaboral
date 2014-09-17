<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Depoimentos</small></div>
	<h1 class="desloca-esq">Lista de depoimentos cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=3&act=1'">Incluir Depoimento</button></div>
	<div class="clear"></div>

	<%
	
	Set rsDepoimentos = Server.CreateObject("ADODB.Recordset")
	rsDepoimentos.Open "select * from "&prefixoTabela&"depoimento where ativo='s' order by id desc", Conexao	
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>				
	        	<th>Foto</th>
	        	<th>Nome</th>
	        	<th>destaque</th>	        	
	        	<th width="80px">Editar</th>
	        	<th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsDepoimentos.eof
	%>    		

			<tr class="gradeA">
				<td>
					<%
						if rsDepoimentos("arquivo")="n" then
						response.Write("<img src='images/noimg.png' width='70' height='50' alt='' />")
						else
						response.Write("<img src='"& enderecoDepoimentoTh+rsDepoimentos("arquivo") &"' width='70' height='50' alt='' />")
						end if
					%>
				</td>
				<td><%=rsDepoimentos("nome")%></td>				
				<td>
					<%
						if rsDepoimentos("destaque")="s" then
						%>
							<button type="button" class="btn btn-success" onclick="location.href='_dados.asp?tipo=3&act=4&id=<%=rsDepoimentos("id")%>'">Sim</button>
						<%
						else
						%>
							<button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=3&act=4&id=<%=rsDepoimentos("id")%>'">N&atilde;o</button>
						<%
						end if
					%>
				</td>				
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=3&act=2&id=<%=rsDepoimentos("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=3&act=3&id=<%=rsDepoimentos("id")%>'">Excluir</button></td>
			</tr>
	        
		
	<%
	rsDepoimentos.MoveNext()
	wend

	rsDepoimentos.Close()
	set rsDepoimentos = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Foto</th>
	        	<th>Nome</th>
	        	<th>destaque</th>	        	
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