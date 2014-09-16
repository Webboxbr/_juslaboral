<%
'**********************************************'
'   act=1 entra na inclusão'
'   act=2 entra na edição'
'   act=3 entra na exclusão'
'   act=4 entre em ativa/desativa'
'**********************************************'

if act="1" then

	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upFotoGaleria

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename		

		'Itens textuais
		txtlink = Upload.Form("txtLink")

		'Debug
		'response.write("Nome da imagem: "&txtArquivo&"<br>")
		'response.end()	

		
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------
		'Instancia o componente na memória
		SET AspJpeg = Server.CreateObject("Persits.Jpeg")
		'Define o caminho da imagem a ser redimensionada

			imagem = upFotoGaleria&"\"&txtArquivo
			
		'Carrega a imagem
		AspJpeg.Open imagem

		'Define a largura
		L = 500		
		'Redimensiona, preservando as proporções
		AspJpeg.Width = L
		AspJpeg.Height = AspJpeg.OriginalHeight * L / AspJpeg.OriginalWidth

		'Esse método é opcional, usado para melhorar o visual da imagem.
		AspJpeg.Sharpen 1, 150

		'Cria um Thumbnail e o grava no caminho abaixo.		
		AspJpeg.Save upFotoGaleriaThumb&"\"&txtArquivo
		
		'Para enviar o thumbnail para o browser do visitante, utilize o método SendBinary .
		'Response.Write AspJpeg.SendBinary
		'Remove as referências do componente da memória
		SET AspJpeg = Nothing
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------^

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")
		

	set addRs=Server.CreateObject("ADODB.recordset")
	addSQL = "INSERT INTO "&prefixoTabela&"popup (foto, link, ultima_alteracao) values ('"&txtArquivo&"','"&txtlink&"','"&ultima_alteracao&"')"
	addRs.open addSQL, Conexao

	response.redirect("_listas.asp?tipo=16&act=1")

elseif act="2" then
	
	Set Upload = Server.CreateObject("Persits.Upload.1")
	Upload.OverwriteFiles = false
	On Error Resume Next

		'Faz o upload do arquivo, o arquivo fica salvo no caminho upArquivo, ver global.asp
		Upload.Save upFotoGaleria

		'Arquivos:		
		txtArquivo = Upload.Files("txtArquivo").filename
		'txtArquivo2 = Upload.Files("txtArquivo2").filename
		

		'Itens textuais
		txtlink = Upload.Form("txtLink")

		'Debug
		'response.write("Nome da imagem: "&txtArquivo&"<br>")
		'response.end()
		
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------
		'Instancia o componente na memória
		SET AspJpeg = Server.CreateObject("Persits.Jpeg")
		'Define o caminho da imagem a ser redimensionada

			imagem = upFotoGaleria&"\"&txtArquivo
			
		'Carrega a imagem
		AspJpeg.Open imagem

		'Define a largura
		L = 500		
		'Redimensiona, preservando as proporções
		AspJpeg.Width = L
		AspJpeg.Height = AspJpeg.OriginalHeight * L / AspJpeg.OriginalWidth

		'Esse método é opcional, usado para melhorar o visual da imagem.
		AspJpeg.Sharpen 1, 150

		'Cria um Thumbnail e o grava no caminho abaixo.		
		AspJpeg.Save upFotoGaleriaThumb&"\"&txtArquivo
		
		'Para enviar o thumbnail para o browser do visitante, utilize o método SendBinary .
		'Response.Write AspJpeg.SendBinary
		'Remove as referências do componente da memória
		SET AspJpeg = Nothing
		'-----------------------------------------------
		' cria a thumb da imagem publicada
		'-----------------------------------------------^
		

		'Debug
		'response.write("nome da imagem:"&nomeImg&"<br>")
		'response.write("Local de gravação:"&imagem&"<br>")
		'response.write("Local de gravação da thumb:"&upFotoGaleriaThumb&"\"&filename&"<br>")
		'response.end()

		datasys = now()
		ultima_alteracao = datasys&" - "&session("user")


	set addRs=Server.CreateObject("ADODB.recordset")
	editSQL = "UPDATE "&prefixoTabela&"popup SET foto='"& txtArquivo &"', link='"& txtlink &"', ultima_alteracao='"& ultima_alteracao &"' WHERE id="&id
	addRs.open editSQL, Conexao		

	response.Redirect("_listas.asp?tipo=16&act=1")

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