
public class digit {
	int digit;
	
	void numberOne(int digit){
		
		if(digit == 10) {
			System.out.println("    _ ");
			System.out.println(" | | |");
			System.out.println(" | |_|");
			
		}
		else if(digit == 1)
			System.out.println("\n|\n|");
		else if(digit == 0) {
			System.out.println(" _ ");
			System.out.println("| |");
			System.out.println("|_|");
			
			
		}
		else if(digit == 2) {
			System.out.println(" _ ");
			System.out.println(" _|");
			System.out.println("|_");
		}
		else if(digit == 3) {
			System.out.println(" _ ");
			System.out.println(" _|");
			System.out.println(" _|");
		}
		else if(digit == 4) {
			
			System.out.println("|_|");
			System.out.println("  |");
		}
		else if(digit == 5) {
			System.out.println(" _");
			System.out.println("|_");
			System.out.println(" _|");
		}
		else if(digit == 6) {
			System.out.println(" _");
			System.out.println("|_");
			System.out.println("|_|");
		}
		else if(digit == 7) {
			System.out.println(" _");
			System.out.println("  |");
			System.out.println("  |");
		}
		else if(digit == 8) {
			System.out.println(" _");
			System.out.println("|_|");
			System.out.println("|_|");
		}
		else if(digit == 9) {
			System.out.println(" _");
			System.out.println("|_|");
			System.out.println("  |");
		}
		
	}
}
