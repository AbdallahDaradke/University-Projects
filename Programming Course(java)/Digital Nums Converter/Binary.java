import java.util.Scanner;

class Binary{
public static void main(String[] args) {

    double sum = 0;
    double decimal;

    int [] binary = {1,0,1,0,1,1,0,0,1};
    int n =1;
    for(int i = binary.length; i >=1 ; i--) {
    	
    					//[6]				*				32							
        decimal = binary[binary.length - i] * (Math.pow(2, binary.length - n ));
        sum = decimal + sum;
        n++;
    }
   
    System.out.println("= "+ sum+ " in decimal");
     
    int num1 = -1;
    Scanner in = new Scanner(System.in);
    
    num1 = in.nextInt();
    digit d1 = new digit();
    digit d2 = new digit();
    
    d1.numberOne(num1);
    
    int num2 = -1;
    
    num2 = in.nextInt();
    d2.numberOne(num2);
    
    
    }
}