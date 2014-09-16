<style type="text/css">
h1 {text-transform:uppercase;}
.box-galeria {
	width: 350px;
	height: 200px;
	overflow: scroll;
	border:solid 1px #ededed;
	padding:10px;
}
#formCadastro label {	
	font-size:11px;
	font-weight: normal;
	display: block;
	margin-bottom: 10px!important;
}
#formCadastro input, #formCadastro select {
	/*padding: 5px 10px 5px 10px;*/
	height: 29px;
}
#formCadastro #txtLocal {width: 382px!important;}
#formCadastro #txtResumo {
	resize:none;
	width:330px;
	height:212px;
}
textarea {
	width:383px;
	height:100px;
	resize:none;
}
.red {background-color: red}
.blue {background-color: blue}

</style>



<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
%>
	<div><small>Jogos</small></div>
	<h1>Adicionar jogo</h1>
	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=2&act=1&idC=<%=idC%>">
	  	
	    
	    <div class="desloca-esq">
	    	<label for="txtData">Data do jogo<br />
		    <input type="text" name="txtData" id="txtData" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" maxlength="10" onKeyUp="Mascara(this,Data);" /></label>
	    </div>
	    <div class="desloca-esq">
	    	<label for="txtHorario">Hor&aacute;rio<br />
		    <input type="text" name="txtHorario" id="txtHorario" onKeyPress="Mascara(this,Hora);" onKeyDown="Mascara(this,Hora);" onKeyUp="Mascara(this,Hora);" maxlength="5"/></label>
	    </div>
	    <div class="clear"></div>

	    <label for="txtLocal">Local<br />
    	<input type="text" name="txtLocal" id="txtLocal"/></label>

    	<div class="desloca-esq" style="margin-right:20px;">
	    <label for="txtMandante">Selecione o time de casa(*)<br />
	    <select name="txtMandante" id="txtMandante">
	        <option value="0" selected="selected">Selecione o time de casa</option>
			<%
	        Set rsTimes = Server.CreateObject("ADODB.Recordset")
	        rsTimes.Open "select * from "&prefixoTabela&"times_participantes where idcampeonato="&idC&" order by nome asc", Conexao
			while not rsTimes.eof				
				%>
		        <option value="<%=rsTimes("id")%>"><%=rsTimes("nome")%></option>
		        <%
				rsTimes.MoveNext()
			wend
			rsTimes.Close()
			set rsTimes = nothing
			%>
	    </select>
	    </label>
	    </div>

	    <div class="desloca-esq">
	    <label for="txtAdversario">Selecione o time advers&aacute;rio(*)<br />
	    <select name="txtAdversario" id="txtAdversario">
	        <option value="0" selected="selected">Selecione o time advers&aacute;rio</option>
			<%
	        Set rsTimes = Server.CreateObject("ADODB.Recordset")
	        rsTimes.Open "select * from "&prefixoTabela&"times_participantes where idcampeonato="&idC&" order by nome asc", Conexao
			while not rsTimes.eof				
				%>
		        <option value="<%=rsTimes("id")%>"><%=rsTimes("nome")%></option>
		        <%
				rsTimes.MoveNext()
			wend
			rsTimes.Close()
			set rsTimes = nothing
			%>
	    </select>
	    </label>
	    </div>
	    <div class="clear"></div>

	    <hr>

	    <div class="desloca-esq" style="padding:10px;background-color:#ededed;">
	    	<p>Resultado</p>
	    	<div class="desloca-esq">
	    		<label for="txtResultado1">Resultado time da casa<br />
    			<input type="text" name="txtResultado1" id="txtResultado1" /></label>
	    	</div>
	    	<div class="desloca-dir">
	    		<label for="txtResultado2">Resultado time advers&aacute;rio<br />
    			<input type="text" name="txtResultado2" id="txtResultado2" /></label>
	    	</div>
	    	<div class="clear"></div>
	    </div>
	    <div class="desloca-esq" style="margin-left:20px;padding:10px;background-color:#ededed;">
	    	<p>Resultado por p&ecirc;naltis</p>
	    	<div class="desloca-esq">
	    		<label for="txtResult_penals1">Resultado time da casa<br />
    			<input type="text" name="txtResult_penals1" id="txtResult_penals1" /></label>
	    	</div>
	    	<div class="desloca-dir">
	    		<label for="txtResult_penals2">Resultado time advers&aacute;rio<br />
    			<input type="text" name="txtResult_penals2" id="txtResult_penals2" /></label>
	    	</div>
	    	<div class="clear"></div>
	    </div>
	    <div class="clear"></div>
	    <div style="height:20px"></div>

	    <label>Ficha t&eacute;cnica<br>
	    	<textarea name="txtFicha"></textarea>
	    </label>	

		<p>(*)Campos obrigat&oacute;rios.</p>
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button> 
		
	</form>
<%
elseif act="2" then
'recupera o campeonato pelo id'
Set rsJogos = Server.CreateObject("ADODB.Recordset")
rsJogos.Open "select * from "&prefixoTabela&"jogos where id="&id, Conexao
%>
	<div><small>Jogos</small></div>
	<h1>Editar jogo</h1>
	<form id="formCadastro" name="formCadastro" method="POST" action="_gravacao.asp?tipo=2&act=2&id=<%=rsJogos("id")%>&idC=<%=idC%>">
	  	
	    
	    <div class="desloca-esq">
	    	<label for="txtData">Data do jogo<br />
		    <input type="text" name="txtData" id="txtData" onKeyPress="Mascara(this,Data);" onKeyDown="Mascara(this,Data);" onKeyUp="Mascara(this,Data);" maxlength="10" value="<%=rsJogos("data")%>" /></label>
	    </div>
	    <div class="desloca-esq">
	    	<label for="txtHorario">Hor&aacute;rio<br />
		    <input type="text" name="txtHorario" id="txtHorario" onKeyPress="Mascara(this,Hora);" onKeyDown="Mascara(this,Hora);" onKeyUp="Mascara(this,Hora);" maxlength="5" value="<%=rsJogos("horario")%>" /></label>
	    </div>
	    <div class="clear"></div>

	    <label for="txtLocal">Local<br />
    	<input type="text" name="txtLocal" id="txtLocal" value="<%=rsJogos("local")%>" /></label>

    	<div class="desloca-esq" style="margin-right:20px;">
	    <label for="txtMandante">Selecione o time de casa(*)<br />
	    <select name="txtMandante" id="txtMandante">
	    <%
	    Set rsTimesAtual = Server.CreateObject("ADODB.Recordset")
	    rsTimesAtual.Open "select * from "&prefixoTabela&"times_participantes where id="&rsJogos("idTime1"), Conexao
	    %>
	        <option value="<%=rsTimesAtual("id")%>" selected="selected"><%=rsTimesAtual("nome")%></option>
			<%
	        Set rsTimes = Server.CreateObject("ADODB.Recordset")
	        rsTimes.Open "select * from "&prefixoTabela&"times_participantes where idcampeonato="&idC&" and id<>"&rsTimesAtual("id")&" order by nome asc", Conexao
			while not rsTimes.eof				
				%>
		        <option value="<%=rsTimes("id")%>"><%=rsTimes("nome")%></option>
		        <%
				rsTimes.MoveNext()
			wend
			rsTimes.Close()
			set rsTimes = nothing
			%>
	    </select>
	    </label>
	    </div>

	    <div class="desloca-esq">
	    <label for="txtAdversario">Selecione o time advers&aacute;rio(*)<br />
	    <select name="txtAdversario" id="txtAdversario">
	    <%
	    Set rsTimesAtual = Server.CreateObject("ADODB.Recordset")
	    rsTimesAtual.Open "select * from "&prefixoTabela&"times_participantes where id="&rsJogos("idTime2"), Conexao
	    %>
	        <option value="<%=rsTimesAtual("id")%>" selected="selected"><%=rsTimesAtual("nome")%></option>
			<%
	        Set rsTimes = Server.CreateObject("ADODB.Recordset")
	        rsTimes.Open "select * from "&prefixoTabela&"times_participantes where idcampeonato="&idC&" and id<>"&rsTimesAtual("id")&" order by nome asc", Conexao
			while not rsTimes.eof				
				%>
		        <option value="<%=rsTimes("id")%>"><%=rsTimes("nome")%></option>
		        <%
				rsTimes.MoveNext()
			wend
			rsTimes.Close()
			set rsTimes = nothing
			%>
	    </select>
	    </label>
	    </div>
	    <div class="clear"></div>

	    <hr>

	    <div class="desloca-esq" style="padding:10px;background-color:#ededed;">
	    	<p>Resultado</p>
	    	<div class="desloca-esq">
	    		<label for="txtResultado1">Resultado time da casa<br />
    			<input type="text" name="txtResultado1" id="txtResultado1" value="<%=rsJogos("resultado1")%>" /></label>
	    	</div>
	    	<div class="desloca-dir">
	    		<label for="txtResultado2">Resultado time advers&aacute;rio<br />
    			<input type="text" name="txtResultado2" id="txtResultado2" value="<%=rsJogos("resultado2")%>" /></label>
	    	</div>
	    	<div class="clear"></div>
	    </div>
	    <div class="desloca-esq" style="margin-left:20px;padding:10px;background-color:#ededed;">
	    	<p>Resultado por p&ecirc;naltis</p>
	    	<div class="desloca-esq">
	    		<label for="txtResult_penals1">Resultado time da casa<br />
    			<input type="text" name="txtResult_penals1" id="txtResult_penals1" value="<%=rsJogos("result_penals1")%>" /></label>
	    	</div>
	    	<div class="desloca-dir">
	    		<label for="txtResult_penals2">Resultado time advers&aacute;rio<br />
    			<input type="text" name="txtResult_penals2" id="txtResult_penals2" value="<%=rsJogos("result_penals2")%>" /></label>
	    	</div>
	    	<div class="clear"></div>
	    </div>
	    <div class="clear"></div>
	    <div style="height:20px"></div>

	    <label>Ficha t&eacute;cnica<br>
	    	<textarea name="txtFicha"><%=rsJogos("fichatecnica")%></textarea>
	    </label>
		

		<p>(*)Campos obrigat&oacute;rios.</p>
		<button type="submit" class="btn btn-primary">Salvar</button>
		<button type="button" class="btn btn-default" onclick="javascript:history.back();">Cancelar</button> 
		
	</form>	
<%
elseif act="3" then
	set DeleteRs=Server.CreateObject("ADODB.recordset")
	sqlDelete = "DELETE FROM "&prefixoTabela&"jogos WHERE id="&id
	DeleteRs.open sqlDelete, Conexao

	set DeleteRs1=Server.CreateObject("ADODB.recordset")
	sqlDelete1 = "DELETE FROM "&prefixoTabela&"resultados WHERE idjogo="&id
	DeleteRs1.open sqlDelete1, Conexao

	response.Redirect("_listas.asp?tipo=2&act=1&idC="&idC)
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