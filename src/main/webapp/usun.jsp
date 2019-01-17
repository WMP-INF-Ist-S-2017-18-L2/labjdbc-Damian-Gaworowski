<%--
    Author     : HP
--%>

<%@page import="bib.*"%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%
            String uzytkownik = "guest";
            if ((session.getAttribute("username") != null)) {
                uzytkownik = session.getAttribute("username").toString();
           }
            if (session.getAttribute("username") == null) {
                 out.print("<script> alert('Zaloguj sie jeśli chcesz edytować filmy') </script>");
           }
            else if ((request.getParameter("id") != null)) {
                int id = (Integer.parseInt(request.getParameter("id").toString()));
                Film film = new Film(id);
                String wlasciciel = film.getUzytkownik();
                if (wlasciciel.equals(uzytkownik)) {
                    film.deleteFilm(id);
                }
            }
            response.sendRedirect("./index.jsp");
        %>
    </head>
    <body>

    </body>
</html>