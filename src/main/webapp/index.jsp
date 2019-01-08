<%-- 
    Document   : index
    Created on : 2018-11-20, 18:18:23
    Author     : HP
--%>






<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
 <%@page import="bib.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String uzytkownik = "guest";
    String link_tekst = "Zaloguj się";
    String link_adres = "./login.jsp";
    if ((session.getAttribute("username") != null)) {
        uzytkownik = session.getAttribute("username").toString();
        link_tekst = "Wyloguj się";
        link_adres = "./logout.jsp";
    }
%>


<%   
    String tytul = request.getParameter("tytul");
    String autor = request.getParameter("autor");
    String rok = request.getParameter("rok_wydania");
    String obejrzane = request.getParameter("obejrzane");
    String gatunek = request.getParameter("gatunek");
    List<Integer> filmy = new ArrayList<Integer>();
    Filmy film_list = new Filmy(tytul, autor, rok, gatunek, obejrzane, uzytkownik);
    filmy = film_list.getFilmy();
    Results results = new Results(filmy);
    String wynik = results.getResults();
%>


<!doctype html>
<html lang="pl">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta charset="utf-8">
<title>Moje Filmy</title>
<link href="index.css" rel="stylesheet">
        <link async href="http://fonts.googleapis.com/css?family=Warnes" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>
        <link async href="http://fonts.googleapis.com/css?family=Atomic%20Age" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" script-name="bangers" src="http://use.edgefonts.net/bangers.js"></script>
        <script src="jquery-1.12.4.min.js"></script>
<script>
function ValidateForm1()
{
   var regexp;
   var gatunek = document.getElementById('gatunek');
   if (!(gatunek.disabled ||
         gatunek.style.display === 'none' ||
         gatunek.style.visibility === 'hidden'))
   {
      if (gatunek.selectedIndex < 0)
      {
         alert("Please select one of the \"gatunek\" options.");
         gatunek.focus();
         return false;
      }
   }
   return true;
}
</script>
<script>
$(document).ready(function()
{
   $('#MegaMenu2 .submenu ul li h2 a').addClass('ui-widget-header');
   $('#MegaMenu2 .submenu ul li a').hover(function()
   {
      $(this).addClass('ui-state-hover');
   }, function()
   {
      $(this).removeClass('ui-state-hover');
   });
   $('.ui-state-default').hover(function()
   {
      $(this).addClass('ui-state-hover');
   }, function()
   {
      $(this).removeClass('ui-state-hover');
   });
   $('#MegaMenu2 li').hover(function()
   {
      var top = $(this).find('.button').outerHeight();
      $(this).find('.submenu').css( {'top': top });
      $(this).find('.submenu').show();
      var maxWidth = 0;
      $(this).find('ul').each(function()
      {
         $(this).find('li').each(function()
         {
            $(this).css('width', 'auto');
            if ($(this).width() > maxWidth)
               maxWidth = $(this).width();
         });
      });
      $(this).find('ul').each(function()
      {
         $(this).find('li').width(maxWidth);
         $(this).css({'width' : maxWidth+10});
      });
      if ($(this).find('.row').length > 0 )
      {
         var maxRowWidth = 0;
         $(this).find('.row').each(function()
         {
            var width = 0;
            $(this).find('ul').each(function()
            {
               width += $(this).width();
            });
            if (width > maxRowWidth)
            {
               maxRowWidth = width;
            }
         });
         $(this).find('.submenu').css({'width' : maxRowWidth});
         $(this).find('.row:last').css({'margin': '0'});
      }
      else
      {
         var width = 0;
         $(this).find('ul').each(function()
         {
            width += $(this).width();
         });
         $(this).find('.submenu').css({'width' : width});
      }
      $(this).find('.submenu').slideDown();
   }, function()
   {
      $(this).find('.submenu').hide();
   })
   $('#MegaMenu2 li .submenu').hide();
});
</script>
  <link async href="http://fonts.googleapis.com/css?family=Monoton" data-generated="http://enjoycss.com" rel="stylesheet" type="text/css"/>
</head>
<body>
<div id="container">
<div id="Layer1" style="position:absolute;text-align:center;left:619px;top:145px;width:375px;height:445px;z-index:28;">
<div id="Layer1_Container" style="width:375px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
<div id="wb_Form1" style="background-color: #000000;position:absolute;left:80px;top:30px;width:390px;height:376px;z-index:12;">
<form name="Form1" method="post" action="./index.jsp" id="Form1" onsubmit="return ValidateForm1()">
<input type="submit" id="Button1" name="" value="Zatwierdź" style="position:absolute;left:39px;top:295px;width:280px;height:50px;z-index:3;">
<input type="text" id="tytul" style="position:absolute;left:100px;top:15px;width:240px;height:25px;line-height:25px;z-index:4;" name="tytul" value="" spellcheck="false">
<input type="text" id="autor" style="position:absolute;left:100px;top:73px;width:240px;height:25px;line-height:25px;z-index:5;" name="autor" value="" spellcheck="false">
<input type="text" id="rok_wydania" style="position:absolute;left:100px;top:131px;width:240px;height:25px;line-height:25px;z-index:6;" name="rok_wydania" value="" spellcheck="false">
<select name="gatunek" size="1" id="gatunek" style="position:absolute;left:100px;top:189px;width:251px;height:35px;z-index:7;">
<option value="Fantastyka">Fantastyka</option>
<option value="Horror">Horror</option>
<option value="Przygodowa">Przygodowa</option>
<option value="Thriller">Thriller</option>
<option value="Kryminal">Kryminal</option>
<option value="Biografia">Biografia</option>
</select>
<div id="wb_Text11" style="position:absolute;left:260px;top:252px;width:29px;height:16px;text-align:right;z-index:8;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Nie</span></div>
<div id="wb_RadioButton1" style="position:absolute;left:240px;top:249px;width:20px;height:20px;z-index:9;">
<input type="radio" id="RadioButton1" name="obejrzane" value="Nie" checked style="position:absolute;left:0;top:0;"><label for="RadioButton1"></label></div>
<div id="wb_Text13" style="position:absolute;left:198px;top:252px;width:29px;height:16px;z-index:10;">
<span style="color:#000000;font-family:Arial;font-size:13px;">Tak</span></div>
<div id="wb_RadioButton2" style="position:absolute;left:170px;top:249px;width:20px;height:20px;z-index:11;">
<input type="radio" id="RadioButton2" name="obejrzane" value="Tak" style="position:absolute;left:0;top:0;"><label for="RadioButton2"></label></div>
</form>
</div>
   
<div id="wb_Text3" style="position:absolute;left:125px;top:0px;width:250px;height:23px;text-align:right;z-index:13;">
<span style="color:#ff4500;font-family:'Trebuchet MS';font-size:17px;"><strong>Filtrowanie biblioteki:</strong></span></div>
<div id="wb_Text4" style="position:absolute;left:120px;top:67px;width:64px;height:20px;text-align:right;z-index:14;">
<span style="color:#f8f8ff;font-family:'Trebuchet MS';font-size:15px;"><strong>Tytuł:</strong></span></div>
<div id="wb_Text5" style="position:absolute;left:120px;top:128px;width:64px;height:20px;text-align:right;z-index:15;">
<span style="color:#f8f8ff;font-family:'Trebuchet MS';font-size:15px;"><strong>Autor:</strong></span></div>
<div id="wb_Text6" style="position:absolute;left:72px;top:184px;width:111px;height:20px;text-align:right;z-index:16;">
<span style="color:#f8f8ff;font-family:'Trebuchet MS';font-size:15px;"><strong>Rok wydania:</strong></span></div>
<div id="wb_Text8" style="position:absolute;left:70px;top:241px;width:111px;height:20px;text-align:right;z-index:17;">
<span style="color:#f8f8ff;font-family:'Trebuchet MS';font-size:15px;"><strong>Gatunek:</strong></span></div>
<div id="wb_Text14" style="position:absolute;left:70px;top:292px;width:111px;height:20px;text-align:right;z-index:18;">
<span style="color:#f8f8ff;font-family:'Trebuchet MS';font-size:15px;"><strong>Obejrzany:</strong></span></div>
<div id="wb_Text14" style="position:absolute;left:124px;top:286px;width:111px;height:20px;text-align:right;z-index:18;">
<span style="color:#f8f8ff;font-family:'Trebuchet MS';font-size:15px;"><strong>tak</strong></span></div>
<div id="wb_Text14" style="position:absolute;left:201px;top:286px;width:111px;height:20px;text-align:right;z-index:18;">
<span style="color:#f8f8ff;font-family:'Trebuchet MS';font-size:15px;"><strong>nie </strong></span></div>

</div>
</div>
<div id="wb_Text2" style="position:absolute;left:0px;top:145px;width:250px;height:23px;z-index:29;">
<span style="color:#ff4406;font-family:'Trebuchet MS';font-size:17px;"><strong>Twoje filmy:</strong></span></div>
<%=wynik%>

</div>
<div id="PageHeader1" style="position:absolute;text-align:center;left:0px;top:0px;width:100%;height:88px;z-index:7777;">
<div id="PageHeader1_Container" style="width:994px;position:relative;margin-left:auto;margin-right:auto;text-align:left;">
<div id="wb_Image1" style="position:absolute;left:0px;top:21px;width:48px;height:48px;z-index:0;">
<a href="./index.jsp"><img src="images/icons8-taśma-filmowa-96.png" id="Image1" alt=""></a></div>
<div id="wb_Text1" style="position:absolute;left:68px;top:16px;width:269px;height:56px;z-index:1;">Domowa biblioteka filmowa online</div>
<div id="wb_MegaMenu2" style="position:absolute;left:467px;top:17px;width:558px;height:53px;z-index:2;">
   <ul class="ui-widget" id="MegaMenu2">
      <li>
      <a href="./index.jsp" class="button ui-state-default ui-state-active">Moje filmy</a>
      </li>
      <li>
      <a href="./add.jsp" class="button ui-state-default">Dodaj film</a>
      </li>
      <li>
      <a href="./register.jsp" class="button ui-state-default">Rejestracja</a>
      </li>
      <li>
      <a href="<%=link_adres%>" class="button ui-state-default"><%=link_tekst%></a>
      </li>
      
   </ul>
</div>
</div>
</div>
</body>
</html>



