<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Lista de Popups</small></div>
	<h1 class="desloca-esq">Lista de Popups cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=16&act=1'">Incluir Popup</button></div>
	<div class="clear"></div>
	<p style="margin-top:-20px;"  class="label label-info">ATEN&Ccedil;&Atilde;O: Somente o &uacute;ltimo popup cadastrado poder&aacute; ser visualizado no site.</p>
	<div style="height:20px"></div>

	<%
	Set rsPopup = Server.CreateObject("ADODB.Recordset")
	rsPopup.Open "select * from "&prefixoTabela&"popup where ativo='s' order by id desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Popup</th>
	        	<th>Link</th> 
	            <th>Editar</th>
	            <th>Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsPopup.eof
	%>    		

			<tr class="gradeA">
				<td>
					<%
						if rsPopup("foto")="n" then
						%>
							<img src="images/noimg.png" width="70px" alt="">
						<%						
						else
						%>
							<img src="<%=enderecoGaleriaThumb%><%=rsPopup("foto")%>" width="70px" alt="">
						<%
						end if
					%>
				</td>
				<td><%=rsPopup("link")%></td>								
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=16&act=2&id=<%=rsPopup("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=16&act=3&id=<%=rsPopup("id")%>'">Excluir</button></td>
			</tr>	        
		
	<%
	rsPopup.MoveNext()
	wend

	rsPopup.Close()
	set rsPopup = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Popup</th>
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