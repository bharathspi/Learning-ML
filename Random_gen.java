import java.io.FileWriter; 
import java.io.IOException; 
import java.lang.Math;
class Random_gen
{ 
    public static void main(String[] args) throws IOException 
    { 
  
        FileWriter fw=new FileWriter("C:/Users/bharath/Desktop/random_data_1.txt"); 
  
       for(int i=0;i<=99;i++){
       	double x=Math.random();
        Double d=new Double(x);
        String str = d.toString();
         fw.write(str);
         fw.write(",");
        double x1=Math.random();
        Double d1=new Double(10*x1);
        String str1 = d1.toString();
        fw.write(str1);
        fw.write("\n");
       }
  
        System.out.println("Writing successful"); 
      
        fw.close(); 
    } 
}