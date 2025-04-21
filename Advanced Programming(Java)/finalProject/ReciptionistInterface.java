package finalProject;

public interface ReciptionistInterface {
	
	void printBill(int nationalNumber);
	void printAppointment();
	void addMedicine(int nationalNumber, String medicine);
	void treatmentDiscription(int integerInput, String input);
	void writePatientInfo();
	void registration(String type, String name, String address, int nationalNumber, int contactNumber);
	 void postAnnouncement(String message);
	 void notifyObservers(String message);

}
