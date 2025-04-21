package finalProject;

public class Student extends Patient{


	public Student(String name, String address, int nationalNumber, int contactNumber) {
		super(name, address, nationalNumber, contactNumber);
		// TODO Auto-generated constructor stub
	}

	public double discount(int nationalNumber){
		return getFees()*50/100;
	}
	
}
