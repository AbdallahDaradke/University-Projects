package finalProject;

public class Ordinary extends Patient{

	public Ordinary(String name, String address, int nationalNumber, int contactNumber) {
		super(name, address, nationalNumber, contactNumber);
		// TODO Auto-generated constructor stub
	}

	public double discount(int nationalNumber){
		return getFees();
	}
	
	
	
}
