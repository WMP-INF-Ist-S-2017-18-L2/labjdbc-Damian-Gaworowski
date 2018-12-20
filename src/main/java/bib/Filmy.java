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
import java.util.ArrayList;
import java.util.List;

public class Filmy {

    private DatabaseConnection DBconnection = new DatabaseConnection();
    Connection session = DBconnection.connectDatabase();
    List<Integer> filmy = new ArrayList<Integer>();

    public Filmy(String tytul, String autor, String rok_wydania, String gatunek, String obejrzane, String uzytkownik) {

        String options = "";

        if (tytul != null && !tytul.equals("")) {
            options += " AND tytul LIKE '%" + tytul + "%'";
        }
        if (autor != null && !autor.equals("")) {
            options += " AND autor LIKE '%" + autor + "%'";
        }
        if (rok_wydania != null && !rok_wydania.equals("")) {
            options += " AND rok_wydania = '" + rok_wydania + "'";
        }
         if (gatunek != null && !gatunek.equals("")) {
            options += " AND gatunek = '" + gatunek + "'";
        }
         if (obejrzane != null && !obejrzane.equals("")) {
            options += " AND obejrzane = '" + obejrzane + "'";
        }

        try {
   
            Statement stmt = session.createStatement();

            ResultSet wynik2 = stmt.executeQuery("SELECT * FROM filmy WHERE uzytkownik ='" + uzytkownik + "'" + options + ";");

            while (wynik2.next()) {
                filmy.add(wynik2.getInt(1));
            }

        } catch (Exception e) {
        }

    }

    public List<Integer> getFilmy() {
        return filmy;
    }

}