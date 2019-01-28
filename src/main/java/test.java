/*
 * To change this license header, choose License Headers in Project Properties.

 */

/**
 *
 * @author HP
 */
public class test {
    private int[] table;
    private int nElems=10;
    
    public test(int MaxSize){
        table=new int[MaxSize];
        nElems=0;
        
    }
    
    public void add(int value){
    if(nElems>=table.length){
        int[] locTable = new int[table.length + 1];
        for(int i=0;i<table.length;i++){
            locTable[i]=table[i];
            
        }
        table=locTable;
                
    }
    table[nElems]=value;
    nElems++;
    
    }
    public void print (){
        for(int i=0;i<nElems;i++){
            System.out.println(table[i]+" ");
            
        }
        System.out.println();
    }
    
    public int size(){
        return nElems;
    }
    public void swap(int one,int two){
        int temp=table[one];
        table[one]=table[two];
        table[two]=temp;
        
    }
    public void quickSort(int left,int rigth){
        if(left<rigth){
            int pivot = table [left];
            int s = left;
            for(int i=left+1;i<=rigth;i++){
                if(table[i]<pivot){
                    s=s+1;
                    swap(s,i);
                }
            }
            swap (s,left);
            
            quickSort(left,s-1);
            quickSort(s+1,rigth);
                   
        }}
    public static void main(String[] args){
        int MaxSize=2;
        
        test array= new test(MaxSize);
        array.add(2);
        array.add(7);
        array.add(5);
        array.add(1);
        array.add(3);
        
        
        array.quickSort(0,array.size()-1);
        array.print();
        
        
            
            
            
            
        }
    }
    

