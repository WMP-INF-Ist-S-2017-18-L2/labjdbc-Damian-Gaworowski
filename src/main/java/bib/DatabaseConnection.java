package bib;

import java.sql.*;

public class DatabaseConnection {

    Connection con;

    public Connection connectDatabase() {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://sql.serwer1812588.home.pl:3306/29537652_biblioteka", "29537652_biblioteka", "Damianded0!");
            return con;

        } catch (Exception e) {

            return null;
        }

    }

    public String a() {

        Connection sesja = connectDatabase();
        String wynik = "";
        try {
            Statement stmt = sesja.createStatement();

            ResultSet rs = stmt.executeQuery("select * from  where tytul = 'asd';");
            while (rs.next()) {

                wynik = rs.getString(2);

            }
        } catch (Exception e) {
            return e.toString();
        }
        return wynik;
    }

}
