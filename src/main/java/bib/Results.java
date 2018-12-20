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



import java.util.ArrayList;
import java.util.List;

public class Results {

    List<Integer> filmy = new ArrayList<Integer>();
    String results = "";


    public Results(List<Integer> filmy) {
        try {

            int i=0;
            for (int film_id: filmy) {
                i++;
                Film film = new Film(film_id);
                String wynik = film.getWynik(i);
                results += wynik;
                
            }
            
            

        } catch (Exception e) {
        }

    }

   

    public String getResults() {

return results;

    }

}