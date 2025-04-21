package finalProject;

public class Consultant extends Patient{
	
	

	public Consultant(String name, String address, int nationalNumber, int contactNumber) {
		super(name, address, nationalNumber, contactNumber);
		// TODO Auto-generated constructor stub
	}

	public double discount(int nationalNumber){
		return 30-(getFees()*20/100);
	}
	
	
}
