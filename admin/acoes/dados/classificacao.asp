<style type="text/css">

	.classificacao thead th, .classificacao tbody td, .classificacao tfoot th {
		padding: 5px;
		border: solid 1px #ccc;
	}
	.classificacao thead th {text-transform: uppercase; background-color:#444; color: #fff; border: solid 1px #333;}
	.classificacao tbody td {text-align: center;}
	.classificacao tbody td.time {width: 200px; text-align: center;}
	select {}
	input {width: 40px}
	.cetraliza {text-align: center;}

</style>



<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	'recupera campeonato'
	Set rsCampeonato = Server.CreateObject("ADODB.Recordset")
	rsCampeonato.Open "select * from "&prefixoTabela&"campeonatos where id="&idC, Conexao
	nomeCampeonato = rsCampeonato("nome")
	rsCampeonato.Close()

	'verifica se a tabela já existe pelo idC (id do campeonato)'
	Set rsClassificacaoVerifica = Server.CreateObject("ADODB.Recordset")
	rsClassificacaoVerifica.Open "select * from "&prefixoTabela&"classificacao where idcampeonato="&idC&" order by id asc", Conexao

	'caso o select acima não encontre nenhum registro com o idC, o sistema vai criar uma tabela com o número de times participantes e mostrar a tabela'
	'se o sistema encontrar o idC, então vai só mostrar a tabela'

	if rsClassificacaoVerifica.eof=true then
		'response.write("cria tabela")

		'faz o select dos times participantes de acordo com o idC'
		Set rsTimesParticipantes = Server.CreateObject("ADODB.Recordset")
		rsTimesParticipantes.Open "select * from "&prefixoTabela&"times_participantes where idcampeonato="&idC&" order by id asc", Conexao

		while not rsTimesParticipantes.eof

			'grava valores na tabela (classificacao) da base'
			set addRs=Server.CreateObject("ADODB.recordset")
			addSQL = "INSERT INTO "&prefixoTabela&"classificacao (idcampeonato, idtime) values ('" & idC & "','" & rsTimesParticipantes("id") & "')"
			addRs.open addSQL, Conexao

		rsTimesParticipantes.MoveNext()
		wend

		rsTimesParticipantes.Close()
		set rsTimesParticipantes = nothing


		response.redirect("_dados.asp?tipo=4&act=1&idC="&idC)

	else
		'response.write("mostra tabela")
		%>
		
		<p>Tabela - <%=nomeCampeonato%></p>
		<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=4&act=2&idC=<%=idC%>">

		<div class="desloca-esq">
		<table cellpadding="0" cellspacing="0" border="0" class="classificacao" width="100%">
			<thead>
				<tr>
		        	<th>Time</th>
		        	<th class="cetraliza">pts</th>
		        	<th class="cetraliza">j</th>
		        	<th class="cetraliza">v</th>
		        	<th class="cetraliza">e</th>
		        	<th class="cetraliza">d</th>
		        	<th class="cetraliza">gp</th>
		        	<th class="cetraliza">gc</th>
		        	<th class="cetraliza">sg</th>
		        </tr>
		    </thead>
		    <tbody>
		    
		    <%
		    'monta a tabela de classificação'
		    Set rsClassificacao = Server.CreateObject("ADODB.Recordset")
			rsClassificacao.Open "select * from "&prefixoTabela&"classificacao where idcampeonato="&idC&" order by pts desc", Conexao
			contador = 1

			while not rsClassificacao.eof
				Set rsTime = Server.CreateObject("ADODB.Recordset")
				rsTime.Open "select * from "&prefixoTabela&"times_participantes where id="&rsClassificacao("idtime"), Conexao

				'recupera valores principais'						
				v = rsClassificacao("v")
				e = rsClassificacao("e")
				d = rsClassificacao("d")
				gp = rsClassificacao("gp")
				gc = rsClassificacao("gc")


				'calcula os outros valores'
				vitoria = v*3
				empate = e*1
				pts = vitoria+empate
				j = v+e+d
				sg = gp-gc
			    %>
			    	<tr>
			    		<td class="time">
				    		<input type="hidden" name="txtId-<%=contador%>" value="<%=rsClassificacao("id")%>">			    		
				    		<img src="<%=enderecoEscudoTime%><%=rsTime("escudo")%>" width="50" height="44" alt="" title="<%=rsTime("nome")%>" />
				    	</td>
			    		<td><%=pts%><input type="hidden" name="txtPts-<%=contador%>" value="<%=pts%>"></td>
			    		<td><%=j%><input type="hidden" name="txtJ-<%=contador%>" value="<%=j%>"></td>
			    		<td>			    			
							<select name="txtV-<%=contador%>">
							    <option value="<%=v%>" selected="selected"><%=v%></option>
							    <option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
							</select>			    			
			    		</td>
			    		<td>
			    			<select name="txtE-<%=contador%>">
							    <option value="<%=e%>" selected="selected"><%=e%></option>
							    <option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
							</select>
			    		</td>
			    		<td>
			    			<select name="txtD-<%=contador%>">
							    <option value="<%=d%>" selected="selected"><%=d%></option>
							    <option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
								<option value="9">9</option>
								<option value="10">10</option>
								<option value="11">11</option>
								<option value="12">12</option>
								<option value="13">13</option>
								<option value="14">14</option>
								<option value="15">15</option>
								<option value="16">16</option>
								<option value="17">17</option>
								<option value="18">18</option>
								<option value="19">19</option>
								<option value="20">20</option>
							</select>
			    		</td>
			    		<td>
			    			<%=gp%><input type="hidden" name="txtGp-<%=contador%>" value="<%=gp%>">  <input type="text" name="txtSomaGP-<%=contador%>"/>
			    		</td>
			    		<td>
			    			<%=gc%><input type="hidden" name="txtGc-<%=contador%>" value="<%=gc%>">  <input type="text" name="txtSomaGC-<%=contador%>"/>
			    		</td>
			    		<td><%=sg%><input type="hidden" name="txtSg-<%=contador%>" value="<%=sg%>"></td>
			    	</tr>
			    <%
		    	contador = contador + 1
		    	rsClassificacao.MoveNext()
			wend
			rsClassificacao.Close()
			set rsClassificacao = nothing
		    %>

		    </tbody>
		    <!--<tfoot>
		    	<tr>
		    		<th></th>
		    		<th></th>
		    		<th></th>
		    		<th></th>
		    		<th></th>
		    		<th></th>
		    		<th></th>
		    		<th></th>
		    		<th></th>
		    	</tr>
		    </tfoot>-->
		</table>

		<!-- usar o valor do contador para fazer um for next dos campos -->
		<input type="hidden" name="valorContador" value="<%=contador%>">
		</div>

		<div class="desloca-dir cetraliza">
			<button type="submit" class="btn btn-primary">Salvar</button><br><br>
			<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button>
		</div>
		<div class="clear"></div>
		</form>
		
		<%
	end if
	'gerando a tabela de acordo com o número de times participantes'
	%>
	

	

<%
elseif act="2" then
%>
	<!-- não existe esse caso -->
<%
elseif act="3" then
%>
	<!-- não existe esse caso -->
<%	
elseif act="4" then
%>
	<!-- não existe esse caso -->
<%
else
%>
	<!-- não existe opção sem act -->
<%
end if
%>