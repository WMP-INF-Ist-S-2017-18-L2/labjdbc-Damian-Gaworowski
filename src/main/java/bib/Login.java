package bib;

import java.sql.*;

public class Login {

    private DatabaseConnection DBconnection = new DatabaseConnection();

    public Boolean checkLogin(String username, String password) {

        Connection session = DBconnection.connectDatabase();
        Boolean wynik = false;
        try {
            Statement stmt = session.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT login FROM konta WHERE haslo = '" + password + "';");
            while (rs.next()) {

                wynik = true;

            }

        } catch (Exception e) {
        }
        return wynik;
    }

}
