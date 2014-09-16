
<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<%
tipo 	= request.QueryString("tipo")
act 	= request.QueryString("act")
id		= request("id")
idC		= request("idC")

dia = Day(Date())
mes = MonthName(Month(Date()))
mesN= Month(Date())
ano = Year(Date())
hora = Hour(Time())
minuto = Minute(Time())
%>


<%
'**********************************************************************'
'**********************************************************************'
'início das variações por tipo, act e id		
'**********************************************************************'
'**********************************************************************'
%>

<% if tipo="1" then %>
	<!--#include file="acoes/gravacao/campeonatos.asp" -->
<% elseif tipo="2" then %>
	<!--#include file="acoes/gravacao/jogos.asp" -->
<% elseif tipo="3" then %>
	<!--#include file="acoes/gravacao/escolhe_times.asp" -->
<% elseif tipo="4" then	%>
	<!--#include file="acoes/gravacao/classificacao.asp" -->
<% elseif tipo="5" then	%>
	<!--#include file="acoes/gravacao/galeria_imagens.asp" -->
<% elseif tipo="6" then	%>
	<!--#include file="acoes/gravacao/videos.asp" -->
<% elseif tipo="7" then	%>
	<!--#include file="acoes/gravacao/newsletter.asp" -->
<% elseif tipo="8" then	%>
	<!--#include file="acoes/gravacao/cat_noticias.asp" -->
<% elseif tipo="9" then	%>
	<!--#include file="acoes/gravacao/noticias.asp" -->
<% elseif tipo="10" then %>
	<!--#include file="acoes/gravacao/releases.asp" -->
<% elseif tipo="11" then %>
	<!--#include file="acoes/gravacao/jornalistas.asp" -->
<% elseif tipo="12" then %>
	<!--#include file="acoes/gravacao/prog_semana.asp" -->
<% elseif tipo="13" then %>
	<!--#include file="acoes/gravacao/profissionais.asp" -->
<% elseif tipo="14" then %>
	<!--#include file="acoes/gravacao/vincular_foto.asp" -->
<% elseif tipo="15" then %>
	<!--#include file="acoes/gravacao/banner.asp" -->
<% elseif tipo="16" then %>
	<!--#include file="acoes/gravacao/popup.asp" -->
<% elseif tipo="17" then %>
	<!-- inclua uma lista -->
<% elseif tipo="18" then %>
	<!-- inclua uma lista -->
<% elseif tipo="19" then %>
	<!-- inclua uma lista -->
<% elseif tipo="20" then %>
	<!-- inclua uma lista -->
<% end if %>