<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Campeonatos</small></div>
	<h1 class="desloca-esq">LISTA DE CAMPEONATOS</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=1&act=1'">Incluir Campeonato</button></div>
	<div class="clear"></div>

	<%
	Set rsCampeonato = Server.CreateObject("ADODB.Recordset")
	rsCampeonato.Open "select * from "&prefixoTabela&"campeonatos order by id desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Nome</th>	            
	            <th>Jogos</th>
	            <th>Times</th>
	            <th>Tabela Geral</th>
	            <th>Ativar/Desativar</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsCampeonato.eof
	%>    
		

			<tr class="gradeA">
	            <td><a href="_dados.asp?tipo=1&act=2&id=<%=rsCampeonato("id")%>" class="azul"><%=rsCampeonato("nome")%></a></td>
	            <td>
	            	<!-- Split button -->
					<div class="btn-group">
					  <button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=2&act=1&idC=<%=rsCampeonato("id")%>'">Incluir Jogo</button>
					  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
					    <span class="caret"></span>
					    <span class="sr-only">Toggle Dropdown</span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="_listas.asp?tipo=2&act=1&idC=<%=rsCampeonato("id")%>">Lista dos jogos</a></li>
					  </ul>
					</div>
	            </td>
	            <td class="alling-central"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=3&act=1&idC=<%=rsCampeonato("id")%>'">Times</button></td>
	            <td class="alling-central">
	            	<!-- Split button -->
					<div class="btn-group">
					  <button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=4&act=1&idC=<%=rsCampeonato("id")%>'">Classifica&ccedil;&atilde;o</button>
					  <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">
					    <span class="caret"></span>
					    <span class="sr-only">Toggle Dropdown</span>
					  </button>
					  <ul class="dropdown-menu" role="menu">
					    <li><a href="_listas.asp?tipo=2&act=1&idC=<%=rsCampeonato("id")%>">Excluir Tabela de Classifica&ccedil;&atilde;o</a></li>
					  </ul>
					</div>
				</td>
	            <td class="alling-central">
		            <%
					if rsCampeonato("ativo")="s" then
					%>
						<button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=1&act=4&id=<%=rsCampeonato("id")%>'">Desativar</button>
		            <%
					else
					%>
						<button type="button" class="btn btn-success" onclick="location.href='_dados.asp?tipo=1&act=4&id=<%=rsCampeonato("id")%>'">Ativar</button>
		            <%
					end if
					%>
	            </td>
			</tr>
	        
		
	<%
	rsCampeonato.MoveNext()
	wend

	rsCampeonato.Close()
	set rsCampeonato = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Nome</th>	            
	            <th>Jogos</th>
	            <th>Times</th>
	            <th>Tabela Geral</th>
	            <th>Ativar/Desativar</th>
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