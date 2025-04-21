package finalProject;

public class DCC {
	private String name;
	private SurgeryRoom room;
	
	
	
	
	public DCC(String name) {
		super();
		
		this.name = name;
		this.room = new SurgeryRoom(name);
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	
}
