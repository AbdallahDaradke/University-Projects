package finalProject;

public  class Patient{
	private String name;
	private String medicine;
	private String address;
	private int nationalNumber;
	private int contactNumber;
	private final double fees = 30;
	private  String discription;
	private String appointments;
	
	
	



	//Constructor
	public Patient(String name, String address, int nationalNumber, int contactNumber) {
		super();
		this.name = name;
		this.address = address;
		this.nationalNumber = nationalNumber;
		this.contactNumber = contactNumber;
		
	}
	
	
	
	
	

	//setters and getters
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
	public double getFees() {
		return fees;
	}
	
	public String getAppointments() {
		return appointments;
	}

	public void setAppointments(String appointments) {
		this.appointments = appointments;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getMedicine() {
		return medicine;
	}

	public String addMedicine(String MedicineName) {
		
		return MedicineName;
	}



	public void setMedicine(String medicine) {
		
		this.medicine = medicine;
	}

	
	
	
	
	public double discount(int nationalNumber) {
		return getFees();
	}
 
	
	public void update(String message) {
		System.out.println(name +" Recieved an announcement: " +message );
	}
	
	


}
