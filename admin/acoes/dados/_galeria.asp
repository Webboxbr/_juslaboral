<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
Set rsAlbum = Server.CreateObject("ADODB.Recordset")
rsAlbum.Open "select * from "&prefixoTabela&"album where id="&idAlbum, Conexao
%>
	<div><small>Álbum de Fotos</small></div>
	<h1>Incluir foto no álbum - <%=rsAlbum("nome")%></h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=12&act=1">
		
		<div class="form-group">
			<label for="txtArquivo">Foto</label>
    		<input name="txtArquivo" type="file" id="txtArquivo" accept="jpg" />
    		<p class="help-block">Tamanho recomendado para a foto: 800 x 600 pixels, formato jpg</p>   		
	  	</div>	  	

	  	<input type="hidden" name="idAlbum" value="<%=idAlbum%>">
	    
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="location.href='_listas.asp?tipo=4&act=1'">Cancelar</button>
	</form>	


<%
	Set rsGaleria = Server.CreateObject("ADODB.Recordset")
	rsGaleria.Open "select * from "&prefixoTabela&"galeria where ativo='s' and idAlbum="&idAlbum&" order by id desc", Conexao
%>


	<h2>Fotos nesta galeria</h2>


	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Foto</th>
	        	<th width="80px">Capa</th>
	        	<th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsGaleria.eof
	%>    		
			<tr class="gradeA">
				<td><img src="<%=enderecoFotoTh%><%=rsGaleria("arquivo")%>" width="70px" alt=""></td>
				<td>
					<%
						if rsGaleria("capa")="s" then
						%>
							<button type="button" class="btn btn-success">Sim</button>
						<%
						else
						%>
							<button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=12&act=4&id=<%=rsGaleria("id")%>&idAlbum=<%=idAlbum%>'">N&atilde;o</button>
						<%
						end if
					%>
				</td>
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=12&act=2&id=<%=rsGaleria("id")%>&idAlbum=<%=idAlbum%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=12&act=3&id=<%=rsGaleria("id")%>&idAlbum=<%=idAlbum%>'">Excluir</button></td>
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
	        	<th>Capa</th>
	        	<th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</tfoot>
	</table>


<%
elseif act="2" then
Set rsAlbum = Server.CreateObject("ADODB.Recordset")
rsAlbum.Open "select * from "&prefixoTabela&"album where id="&idAlbum, Conexao

Set rsGaleriaEdita = Server.CreateObject("ADODB.Recordset")
rsGaleriaEdita.Open "select * from "&prefixoTabela&"galeria where id="&id, Conexao

%>
	<div><small>Álbum de Fotos</small></div>
	<h1>Edita foto no álbum - <%=rsAlbum("nome")%></h1>

	<form id="formCadastro" name="formCadastro" method="POST" enctype="multipart/form-data" action="_gravacao.asp?tipo=12&act=2&id=<%=id%>">
		
		<div class="desloca-esq" style="width:400px;">
			<div class="form-group">
				<label for="txtArquivo">Foto</label>
	    		<input name="txtArquivo" type="file" id="txtArquivo" accept="jpg" />
	    		<p class="help-block">Tamanho recomendado para a foto: 800 x 600 pixels, formato jpg</p>   		
		  	</div>	  	

		  	<input type="hidden" name="idAlbum" value="<%=idAlbum%>">
		    
			<button type="submit" class="btn btn-primary">Salvar</button>
			<button type="button" class="btn btn-default" onclick="location.href='_listas.asp?tipo=4&act=1'">Cancelar</button>
		</div>

		<div class="desloca-dir" style="margin-right:100px;">
			<p>Foto atual</p>
			<img src="<%=enderecoFotoTh%><%=rsGaleriaEdita("arquivo")%>" width="300px" alt="" class="coloca-sombra">
		</div>
		<div class="clear"></div>
	</form>	

<%
	Set rsGaleria = Server.CreateObject("ADODB.Recordset")
	rsGaleria.Open "select * from "&prefixoTabela&"galeria where ativo='s' and idAlbum="&idAlbum&" order by id desc", Conexao
%>


	<h2>Fotos nesta galeria</h2>


	<table cellpadding="0" cellspacing="0" border="0" class="display" id="example" width="100%">
		<thead>
			<tr>
	        	<th>Foto</th>
	        	<th width="80px">Capa</th>
	        	<th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</thead>
	    <tbody>
	<%
	while not rsGaleria.eof
	%>    		
			<tr class="gradeA">
				<td><img src="<%=enderecoFotoTh%><%=rsGaleria("arquivo")%>" width="70px" alt=""></td>
				<td>
					<%
						if rsGaleria("capa")="s" then
						%>
							<button type="button" class="btn btn-success">Sim</button>
						<%
						else
						%>
							<button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=12&act=4&id=<%=rsGaleria("id")%>&idAlbum=<%=idAlbum%>'">N&atilde;o</button>
						<%
						end if
					%>
				</td>
				<td><button type="button" class="btn btn-primary" onclick="location.href='_dados.asp?tipo=12&act=2&id=<%=rsGaleria("id")%>&idAlbum=<%=idAlbum%>'">Editar</button></td>
				<td><button type="button" class="btn btn-danger" onclick="location.href='_dados.asp?tipo=12&act=3&id=<%=rsGaleria("id")%>&idAlbum=<%=idAlbum%>'">Excluir</button></td>
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
	        	<th>Capa</th>
	        	<th width="80px">Editar</th>
	            <th width="80px">Excluir</th>
	        </tr>
		</tfoot>
	</table>


<%
elseif act="3" then

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")

	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"galeria SET ativo='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao

	response.redirect("_dados.asp?tipo=12&act=1&idAlbum="&idAlbum)

elseif act="4" then

'**********************************************
'   muda destaque da galeria de imagens
'**********************************************

	'pega destaque anterior e transforma em não destaque
	Set rsGaleria = Server.CreateObject("ADODB.Recordset")
	rsGaleria.Open "select * from "&prefixoTabela&"galeria where capa='s' and idAlbum="&idAlbum, Conexao

	datasys = now()
	ultima_alteracao = datasys&" - "&session("user")
	
	if rsGaleria.BOF = false then
		destaqueAnterior = rsGaleria("id")
		
		set addRsa=Server.CreateObject("ADODB.recordset")
		editSQLa = "UPDATE "&prefixoTabela&"galeria SET capa='n', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&destaqueAnterior
		addRsa.open editSQLa, Conexao
		'pega destaque anterior e transforma em não destaque
	end if
	
	

'define novo destaque
set addRs=Server.CreateObject("ADODB.recordset")
editSQL = "UPDATE "&prefixoTabela&"galeria SET capa='s', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
addRs.open editSQL, Conexao

response.redirect("_dados.asp?tipo=12&act=1&idAlbum="&idAlbum)

else
%>
	<!-- não existe opção sem act -->
<%
end if
%>