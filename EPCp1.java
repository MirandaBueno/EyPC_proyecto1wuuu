package epcp1;

import java.util.Scanner;
import java.util.ArrayList;
import java.util.stream.Stream;
import java.io.BufferedReader;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.io.IOException;
import java.io.FileNotFoundException;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import java.io.FileInputStream;
import java.io.FileWriter;
import org.apache.poi.xssf.usermodel.XSSFSheet;


public class EPCp1 {
    public static int nLinea;
    public static void main(String[] args) throws IOException, FileNotFoundException{
        Scanner leer = new Scanner(System.in);
        
        //******************************** Abre código fuente *****************************************************
       // System.out.println("ruta:");
       // String ruta = leer.nextLine();
       // System.out.println("nombre:");
       // String nombre = leer.nextLine();
       // ruta=ruta+"\\"+nombre+".asc";
        
        ArrayList<Mnem> listaMnem=new ArrayList<Mnem>();
        //Path datos = Paths.get(ruta);
        Path programa=Paths.get("C:\\Users\\miran\\Desktop\\prueba.asc");
       
        //*********************** Lee el excel con los mnemonicos, opcode y bytes***********************************
        FileInputStream excelMnem=new FileInputStream("C:\\Users\\miran\\Downloads\\68HC11te.xlsx");
        XSSFWorkbook lectura=new XSSFWorkbook(excelMnem);
        XSSFSheet hoja=lectura.getSheetAt(1); //hoja 2
        int nFilas=hoja.getLastRowNum(); //cuantas filas 0-n
        
        for(int i=2;i<=nFilas;i++){
            Row fila=hoja.getRow(i); //cada fila
            int nCol=fila.getLastCellNum(); // columnas 1-m
            System.out.println(fila.getCell(0)+" "+fila.getCell(1)+" "+fila.getCell(3));
            
            System.out.println(i-1);
            
            
        }
        
        //******************** Crear codigos objeto *************************************
        FileWriter codObj,codObj2;
        codObj=new FileWriter("./codObj.lst");
        codObj2=new FileWriter("./codObj2.s19");
        
        codObj.write("***FASE 1***\n");
        
        
        
        
        BufferedReader bRDatos = Files.newBufferedReader(programa);
        
        Stream<String> progr=bRDatos.lines();
        int j=1;
        nLinea=0;
        
       progr.forEach(l -> {
           System.out.println(">"+l+"<");
           
            try {
                algo(l,codObj);
                //String[] linea = l.split("\\,");
                // Mnem mnemTemp = new Mnem(linea[0], linea[1], linea[2]);
                // listaMnem.add(mnemTemp);
            } catch (IOException ex) {
                
            }
        });
        
        //listaMnem.forEach(l-> System.out.println(l.mnem+" "+l.opCode+" "+l.bytes+"\n"));
        
        
        
    }
    
   public static void algo(String fila,FileWriter codObj) throws IOException{
        nLinea++;
        // 1 - comentario
        // 2 - etiqueta
        // 3 - instruccion
        // 4 - directiva
        
        //
        int tipo;
        codObj.write(nLinea+":");
        if(!fila.isBlank()){
            
            
            if(Character.isWhitespace(fila.charAt(0))){ //si esta separado de la izq es instruccion o directiva coment 
                String filaArch=fila.stripLeading();
                System.out.println(filaArch);
                String[] linea = fila.split("\\s+");
                for(int k=0;k<linea.length;k++){ // itera en cada "palabra" de la linea
                    if(linea[k].charAt(0)=='*'){ //es un comentario
                      
                    }else{
                    
                    }
                }
                    
                }else{ // es etiqueta o comentario
           
            
           
            }
       }else{// es una linea sin nada
           
           
       }

   }
   
   public static void esComentario(){
       
   }
}
