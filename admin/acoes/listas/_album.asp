<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'
if act="1" then
%>
	<div><small>Álbum de Fotos</small></div>
	<h1 class="desloca-esq">Lista de álbuns cadastrados</h1>
	<div class="desloca-dir"><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=4&act=1'">Incluir Álbum de Fotos</button></div>
	<div class="clear"></div>

	<%
	Set rsAlbuns = Server.CreateObject("ADODB.Recordset")
	rsAlbuns.Open "select * from "&prefixoTabela&"album where ativo='s' order by id desc", Conexao
	%>

	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Capa</th>
	        	<th>Nome</th>
	        	<th>Descrição</th>
	        	<th width="200px">Fotos</th>
	            <th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsAlbuns.eof

	'define a capa do album'
	Set rsGaleriaCapa = Server.CreateObject("ADODB.Recordset")
	rsGaleriaCapa.Open "select * from "&prefixoTabela&"galeria where ativo='s' and idAlbum="&rsAlbuns("id")&" and capa='s'", Conexao

		'verifica se a capa existe'
		if rsGaleriaCapa.eof=true then
		capa = "semImg.png"
		else
		capa = rsGaleriaCapa("arquivo")
		end if
		'-------------------------'

	'conta quantas fotos tem em cada álbum'
	Set rsGaleria = Server.CreateObject("ADODB.Recordset")
	rsGaleria.Open "select * from "&prefixoTabela&"galeria where ativo='s' and idAlbum="&rsAlbuns("id"), Conexao
		if rsGaleria.eof=false then
			Set contaArquivos = Conexao.execute("SELECT COUNT(*) FROM "&prefixoTabela&"galeria where idAlbum="&rsAlbuns("id")&" and ativo='s'")
		    resultadoArquivos = cint(contaArquivos.fields(0))	
	    else
	    	resultadoArquivos=0
	    end if
	%>


			<tr class="gradeA">
				<td><img src="<%=enderecoFotoTh%><%=capa%>" width="157px" alt=""></td>
				<td><%=rsAlbuns("nome")%></td>
				<td style="word-wrap:break-word;"><%=rsAlbuns("texto")%></td>
				<td>
					<ul class="nav nav-pills nav-stacked">
					  <li class="active">
					    <a href="_dados.asp?tipo=12&act=1&idAlbum=<%=rsAlbuns("id")%>">
					      <span class="badge pull-right"><%=resultadoArquivos%></span>
					      Incluir Fotos
					    </a>
					  </li>
					</ul>
				</td>
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=4&act=2&id=<%=rsAlbuns("id")%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=4&act=3&id=<%=rsAlbuns("id")%>'">Excluir</button></td>
			</tr>


	<%
	rsAlbuns.MoveNext()
	wend

	rsAlbuns.Close()
	set rsAlbuns = nothing
	Conexao.Close()
	%>     
		</tbody>
		<tfoot>
			<tr>
				<th>Capa</th>
	        	<th>Nome</th>
	        	<th>Descrição</th>
	        	<th>Fotos</th>
	            <th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
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