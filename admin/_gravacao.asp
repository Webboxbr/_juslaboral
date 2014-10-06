
<!--#include file="conexao.asp" -->
<!--#include file="valida.asp" -->
<%
tipo 	= request.QueryString("tipo")
act 	= request.QueryString("act")
id		= request("id")
idC		= request("idC")
idAlbum	= request("idAlbum")

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
				<!--#include file="acoes/gravacao/_banner.asp" -->
			<% elseif tipo="2" then %>
				<!--#include file="acoes/gravacao/_noticia.asp" -->
			<% elseif tipo="3" then %>
				<!--#include file="acoes/gravacao/_depoimento.asp" -->
			<% elseif tipo="4" then	%>
				<!--#include file="acoes/gravacao/_album.asp" -->
			<% elseif tipo="5" then	%>
				<!--#include file="acoes/gravacao/_primeira_fase.asp" -->
			<% elseif tipo="6" then	%>
				<!--#include file="acoes/gravacao/_segunda_fase.asp" -->
			<% elseif tipo="7" then	%>
				<!--#include file="acoes/gravacao/_terceira_fase.asp" -->
			<% elseif tipo="8" then	%>
				<!--#include file="acoes/gravacao/_arquivo_1.asp" -->
			<% elseif tipo="9" then	%>
				<!--#include file="acoes/gravacao/_arquivo_2.asp" -->
			<% elseif tipo="10" then %>
				<!--#include file="acoes/gravacao/_arquivo_3.asp" -->
			<% elseif tipo="11" then %>
				<!--#include file="acoes/gravacao/_cursos.asp" -->
			<% elseif tipo="12" then %>
				<!--#include file="acoes/gravacao/_galeria.asp" -->
			<% elseif tipo="13" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="14" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="15" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="16" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="17" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="18" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="19" then %>
				<!-- inclua uma lista -->
			<% elseif tipo="20" then %>
				<!-- inclua uma lista -->			
			<% end if %>