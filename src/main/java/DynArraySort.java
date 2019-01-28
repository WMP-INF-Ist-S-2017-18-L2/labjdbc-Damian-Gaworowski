/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author HP
 */
public class DynArraySort {
    private int[] table;
    private int currElems = 10;

    public DynArraySort(int maxSize) {
        table = new int[maxSize];
        currElems = 0;
    }

    

    public void add(int value) {
        if (currElems >= table.length) {
            int[] locTable = new int[table.length + 1];
            for (int i = 0; i < table.length; i++) {
                locTable[i] = table[i];
            }
            table = locTable;
        }
        table[currElems] = value;
        currElems++;
    }
private void swap(int one, int two) //Zamiana elementow tablicy
    {
        int temp = table[one];
        table[one] = table[two];
        table[two] = temp;
    }
    
    public void print() {
        for (int i = 0; i < currElems; i++) {
            System.out.print(table[i] + " ");
        }
        System.out.println();
    }

    public int size() {
        return currElems;
    }


    public void quickSort(int left, int right) {
        if (left < right) {
            int pivot = table[left];
            int s = left;
            for (int i = left + 1; i <= right; i++) {
                if (table[i] < pivot) {
                    s = s + 1;
                    swap(s, i);
                }
            }
            swap(left, s);

            quickSort(left, s - 1);
            quickSort(s + 1, right);
        }
    }
    public static void main(String[] args)
    {
        int maxSize = 2;

    DynArraySort array = new DynArraySort(maxSize); 	// tworzymy tablice
    
        //15 22 13 27 12 10 20 25 - dane dla metod sortowania
        array.add(15);
        array.add(22);
        array.add(13);
        array.add(27);
        array.add(12);
        array.add(10);
        array.add(20);
        array.add(25);

       


       array.quickSort(0,array.size()-1);


        array.print();
    }
}

   


