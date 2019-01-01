/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bib;

/**
 *
 * @author HP
 */
import java.sql.*;

public class Film {

    private DatabaseConnection DBconnection = new DatabaseConnection();
    Connection session = DBconnection.connectDatabase();
    String tytul = "";
    String autor = "";
    String rok_wydania = "";
    String minuty = "";
    String obejrzane = "";
    String gatunek = "";
    String okladka = "";
    String wynik = "";
    String uzytkownik = "";
    int id = 0;

    public Film(int id) {
        try {
            Statement stmt = session.createStatement();

            ResultSet wynik2 = stmt.executeQuery("SELECT * FROM filmy WHERE id ='" + id + "';");

            while (wynik2.next()) {
                this.id = id;
                tytul = wynik2.getString(2);
                autor = wynik2.getString(3);
                minuty = wynik2.getString(4);
                obejrzane = wynik2.getString(5);
                gatunek = wynik2.getString(6);
                rok_wydania = wynik2.getString(7);
                okladka = wynik2.getString(8);
                uzytkownik = wynik2.getString(9);

            }

        } catch (Exception e) {
        }

    }

    public int deleteFilm(int id) {
        try {
            Statement stmt = session.createStatement();

            int success = stmt.executeUpdate("DELETE FROM filmy WHERE id ='" + id + "';");

            if (success == 1) {
                return 1;

            } else {
                return 0;
            }

        } catch (Exception e) {
            return 0;
        }

    }

    public int addFilm(String tytul, String autor, String rok, String minuty, String obejrzane, String gatunek, String okladka) {

        Connection session = DBconnection.connectDatabase();
        try {
            Statement stmt = session.createStatement();

            int success = stmt.executeUpdate("INSERT INTO filmy (tytul,autor,rok_wydania,minuty,gatunek,obejrzane, okladka, uzytkownik) VALUES ('" + tytul
                    + "', '" + autor
                    + "', '" + rok
                    + "', '" + minuty
                    + "', '" + gatunek
                    + "', '" + obejrzane
                    + "', '" + okladka
                    + "', '" + uzytkownik
                    + "');");
            if (success == 1) {
                return 1;
            } else {
                return 0;
            }

        } catch (Exception e) {
            return 0;
        }

}
    }

    public int editFilm(String tytul, String autor, String rok_wydania, String minuty, String obejrzane, String gatunek, String okladka) {
        try {
            Statement stmt = session.createStatement();

            int success = stmt.executeUpdate("UPDATE filmy SET tytul = '" + tytul
                    + "', autor = '" + autor
                    + "', rok_wydania = '" + rok_wydania
                    + "', minuty = '" + minuty
                    + "', obejrzane = '" + obejrzane
                    + "', gatunek = '" + gatunek
                    + "', okladka = '" + okladka
                    + "', uzytkownik = '" + uzytkownik
                    + "' WHERE id ='" + id + "';");

            if (success == 1) {
                return 1;

            } else {
                return 0;
            }

        } catch (Exception e) {
            return 0;
        }

    }

    public String getTytul() {

        return tytul;
    }

    public String getAutor() {

        return autor;
    }

    public String getUzytkownik() {

        return uzytkownik;
    }

    public String getMinuty() {

        return minuty;
    }

    public String getObejrzane() {

        return obejrzane;
    }

    public String getGatunek() {

        return gatunek;
    }

    public String getRok_wydania() {

        return rok_wydania;
    }

    public String getOkladka() {

        return okladka;
    }

    public int getID() {

        return id;
    }

    public String getWynik(int pozycja) {

        int wysokosc = 209 * pozycja;

        wynik = "<div id=\"Layer4\" style=\"position:absolute;left:0px;top:" + wysokosc + "px;width:524px;height:166px;text-align:left;\">"
                + "<div id=\"wb_Image4\" style=\"position:absolute;left:0px;top:1px;width:110px;height:165px;z-index:27;\">"
                + "<img src='" + okladka + "' id=\"Image4\" alt=\"\"></div>"
                + "<div id=\"wb_Text34\" style=\"position:absolute;left:123px;top:1px;width:324px;height:16px;z-index:28;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong>Tytuł:</strong></span><span style=\"color:#000000;font-family:Arial;font-size:13px;\"><strong> </strong></span><span style=\"color:#00AAF9;font-family:Arial;font-size:13px;\"><strong>" + tytul + "</strong></span></div>"
                + "<div id=\"wb_Text35\" style=\"position:absolute;left:123px;top:31px;width:324px;height:16px;z-index:29;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong>Autor:</strong></span><span style=\"color:#000000;font-family:Arial;font-size:13px;\"><strong> </strong></span><span style=\"color:#00AAF9;font-family:Arial;font-size:13px;\"><strong>" + autor + "</strong></span></div>"
                + "<div id=\"wb_Text36\" style=\"position:absolute;left:123px;top:61px;width:324px;height:16px;z-index:30;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong>Gatunek:</strong></span><span style=\"color:#000000;font-family:Arial;font-size:13px;\"><strong> </strong></span><span style=\"color:#00AAF9;font-family:Arial;font-size:13px;\"><strong>" + gatunek + "</strong></span></div>"
                + "<div id=\"wb_Text37\" style=\"position:absolute;left:123px;top:91px;width:381px;height:16px;z-index:31;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong>Rok wydania:</strong></span><span style=\"color:#000000;font-family:Arial;font-size:13px;\"><strong> </strong></span><span style=\"color:#00AAF9;font-family:Arial;font-size:13px;\"><strong>" + rok_wydania + "</strong></span></div>"
                + "<div id=\"wb_Text38\" style=\"position:absolute;left:123px;top:121px;width:381px;height:16px;z-index:32;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong>Liczba minut:</strong></span><span style=\"color:#000000;font-family:Arial;font-size:13px;\"><strong> </strong></span><span style=\"color:#00AAF9;font-family:Arial;font-size:13px;\"><strong>" + minuty + "</strong></span></div>"
                + "<div id=\"wb_Text39\" style=\"position:absolute;left:123px;top:150px;width:381px;height:16px;z-index:33;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong>Obejrzane:</strong></span><span style=\"color:#000000;font-family:Arial;font-size:13px;\"><strong> </strong></span><span style=\"color:#00AAF9;font-family:Arial;font-size:13px;\"><strong>" + obejrzane + "</strong></span></div>"
                + "<div id=\"wb_Text40\" style=\"position:absolute;left:447px;top:1px;width:77px;height:16px;text-align:right;z-index:34;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong><a href=./edit.jsp?id=" + id + ">Edytuj</a></strong></span></div>"
                + "<div id=\"wb_Text41\" style=\"position:absolute;left:447px;top:31px;width:77px;height:16px;text-align:right;z-index:35;\">"
                + "<span style=\"color:#646464;font-family:Arial;font-size:13px;\"><strong><a href=./delete.jsp?id=" + id + ">Usuń</a></strong></span></div>"
                + "</div>";

        return wynik;

    }

}
