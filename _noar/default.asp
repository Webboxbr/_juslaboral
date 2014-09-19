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

 	<section id="banner">
 		<div class="container-fluid">
 			<div class="row">
 				<div class="col-xs-12">
		 			<ul class="bxslider">
            <li><img src="images/banner/b3.jpg" alt></li>
            <li><img src="images/banner/b4.jpg" alt></li>
            <li><img src="images/banner/b1.jpg" alt></li>
            <li><img src="images/banner/b2.jpg" alt></li>
					</ul>
				</div>
			</div>
 		</div>
 	</section> <!-- banner /-->
 	

  
  <section id="conteudo-home" class="bg-cont-home">
 		<div class="container">
 			<div class="row">
 				
 				<div class="col-xs-12 col-sm-12 col-md-4">
 					<h2 class="vermelho"><span id="ico8"></span>Cursos</h2>
 					<p>Conteúdos práticos e esclarecedores, que integram-se entre si para oferecer uma assimilação completa do conhecimento e favorecer a aprovação.</p>
 					<div class="centraliza">
 						<img src="images/cursos.png" alt="Cursos" class="img-cursos">
 					</div>
 					
 				</div>

 				
 			</div>
 			
 		</div>
 	</section> <!-- conteudo /-->



 	
 	<!--#include file="_includes/_rodape.asp" --> 






<!-- início do javascript /-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script src="bxslider/jquery.bxslider.js"></script>

<script type="text/javascript">	
	$('.bxslider').bxSlider({
	  	auto: true,
    	pause: 8000,
    	speed: 500	  
	});
</script>





</body>
</html>