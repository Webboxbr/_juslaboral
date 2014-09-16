<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then
	

elseif act="2" then
	'recupera dados'	
	contador = request.form("valorContador")
	contador = contador-1

	for a=1 to contador

		id 		= request.form("txtId-"&a)
		pts		= request.form("txtPts-"&a)
		j		= request.form("txtJ-"&a)
		v 		= request.form("txtV-"&a)
		e 		= request.form("txtE-"&a)
		d 		= request.form("txtD-"&a)
		gp 		= request.form("txtGp-"&a)
		gc 		= request.form("txtGc-"&a)
		somaGp	= request.form("txtSomaGP-"&a)
		somaGc 	= request.form("txtSomaGC-"&a)
		sg 		= request.form("txtSg-"&a)

		gp=cint(0&gp)
		gc=cint(0&gc)
		somaGp=cint(0&somaGp)
		somaGc=cint(0&somaGc)
		
		
		gp=gp+somaGp
		gc=gc+somaGc

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")


		response.write(id&"-"&pts&"-"&j&"-"&v&"-"&e&"-"&d&"-"&gp&"-"&gc&"-"&sg&"<br>")
		set addRs=Server.CreateObject("ADODB.recordset")
		editSQL = "UPDATE "&prefixoTabela&"classificacao SET pts='"& pts &"', j='"& j &"', v='"& v &"', e='"& e &"', d='"& d &"', gp='"& gp &"', gc='"& gc &"', sg='"& sg &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
		addRs.open editSQL, Conexao

	next

	'response.end()
	response.redirect("_dados.asp?tipo=4&act=1&idC="&idC)
	
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