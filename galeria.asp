<!--#include file="admin/conexao.asp" -->
<!DOCTYPE HTML>
<html lang="pt-br">
<head>
 	<meta charset="UTF-8">

 	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Webbox">

	<link rel="stylesheet" type="text/css" href="css/normalize.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

	<link rel="stylesheet" type="text/css" href="bxslider/jquery.bxslider.css">	

	<!-- Fav and touch icons -->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
	<link rel="icon" href="favicon.ico" type="image/x-icon">

	<meta name="application-name" content="Juslaboral"/>

    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="assets/ico/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="assets/ico/favicon.png">


<link rel="stylesheet" href="assets_galeria/css/flexslider.css" type="text/css" media="screen" />


<script type="text/javascript">
  $(document).ready(function() {
    $('#jsCarousel').jsCarousel({ onthumbnailclick: function(src) { /*alert(src);*/ }, autoscroll: true });
  });
</script>


 	<title>Juslaboral</title>

</head>
<body> 

<!-- facebook Caixa Curtir /-->
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&appId=332361930233010&version=v2.0";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>

 	<!--#include file="_includes/_header.asp" -->

 	
 	<section id="conteudo" class="internas">
 		<div class="container">
 			<div class="row">
 				<div class="col-xs-12 col-sm-12 col-md-12">
 					<h2 class="cinza"><span id="ico22"></span>Galeria de Fotos</h2>
 					<p>Confira as fotos da Galeria Cursos Juslaboral</p>					

          
          <section class="slider">
            <div id="slider" class="flexslider">
              <ul class="slides">
                <%
                Set rsGaleria = Server.CreateObject("ADODB.Recordset")
                rsGaleria.Open "select * from "&prefixoTabela&"galeria where ativo='s' order by id asc", Conexao
                while not rsGaleria.eof
                %>
                <li><img src="<%=enderecoFotoTh%><%=rsGaleria("arquivo")%>" /></li>              
                <%
                rsGaleria.MoveNext()
                wend
                rsGaleria.Close()
                set rsGaleria = nothing            
                %>
              </ul>
            </div>
            <div id="carousel" class="flexslider">
              <ul class="slides">
                <%
                Set rsGaleria = Server.CreateObject("ADODB.Recordset")
                rsGaleria.Open "select * from "&prefixoTabela&"galeria where ativo='s' order by id asc", Conexao
                while not rsGaleria.eof
                %>
                <li><img src="<%=enderecoFotoTh%><%=rsGaleria("arquivo")%>" /></li>              
                <%
                rsGaleria.MoveNext()
                wend
                rsGaleria.Close()
                set rsGaleria = nothing            
                %>              
              </ul>
            </div>
          </section>
          



 				</div>				
 			</div> 			
 		</div>
 	</section> <!-- conteudo /-->
 	
 	
 	<!--#include file="_includes/_rodape.asp" --> 

<!-- início do javascript /-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <script defer src="assets_galeria/js/jquery.flexslider.js"></script>


  <script type="text/javascript">
    $(function(){
      SyntaxHighlighter.all();
    });
    $(window).load(function(){
      $('#carousel').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        itemWidth: 130,
        itemMargin: 5,
        asNavFor: '#slider'
      });

      $('#slider').flexslider({
        animation: "slide",
        controlNav: false,
        animationLoop: false,
        slideshow: false,
        sync: "#carousel",
        start: function(slider){
          $('body').removeClass('loading');
        }
      });
    });
  </script>

  <!-- Optional FlexSlider Additions -->
  <script src="assets_galeria/js/jquery.easing.js"></script>
  <script src="assets_galeria/js/jquery.mousewheel.js"></script>
  <script defer src="assets_galeria/js/demo.js"></script>  

</body>
</html>