package bib;

import java.sql.*;

public class NoweKonto {

    private DatabaseConnection DBconnection = new DatabaseConnection();

    public int createAccount(String username, String password) {

        Connection session = DBconnection.connectDatabase();
        int wynik = 0;
        try {
            Statement stmt = session.createStatement();

            ResultSet rs = stmt.executeQuery("SELECT login FROM konta WHERE login = '" + username + "';");
            while (rs.next()) {

                return 2;

            }

            int success = stmt.executeUpdate("INSERT INTO konta (login, haslo) VALUES ('" + username
                    + "', '" + password
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
