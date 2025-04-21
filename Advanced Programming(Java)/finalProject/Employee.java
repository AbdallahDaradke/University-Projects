package finalProject;



public abstract class Employee {
	
	private String name;
	private String address;
	private int nationalNumber;
	private int contactNumber;
	private String jobDescription;
	
	
	
	
	
	//Constructor
	
	public Employee(String name, String address, int nationalNumber, int contactNumber, String jobDescription) {
		super();
		this.name = name;
		this.address = address;
		this.nationalNumber = nationalNumber;
		this.contactNumber = contactNumber;
		this.jobDescription = jobDescription;
	}
	
	
	
	
	
	//Setters and getters
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getNationalNumber() {
		return nationalNumber;
	}
	public void setNationalNumber(int nationalNumber) {
		this.nationalNumber = nationalNumber;
	}
	public int getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(int contactNumber) {
		this.contactNumber = contactNumber;
	}
	public String getJobDescription() {
		return jobDescription;
	}
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	
	
	
}
