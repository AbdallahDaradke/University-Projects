package finalProject;

public class CreateDCC {

	
	public DCC createDCC(String clinic) {
		
		if(clinic == null || clinic.isEmpty())
			return null;
		else
			return new DCC("ABC");
		
	}
}
