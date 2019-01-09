package bib;

import java.sql.*;

public class DatabaseConnection {

    Connection con;

    public Connection connectDatabase() {

        try {

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://node60184-env-1413262.unicloud.pl:3306/biblioteka", "root", "4iTwGYccD4");
            return con;

          /*  Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/biblioteka?useSSL=false", "biblioteka", "biblioteka");
            return con;*/

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
