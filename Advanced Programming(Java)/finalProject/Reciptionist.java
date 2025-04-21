package finalProject;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Random;


import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
//import java.util.Scanner;
import java.time.LocalTime;

//import javax.swing.text.html.HTMLDocument.HTMLReader.IsindexAction;

public class Reciptionist extends Employee implements ReciptionistInterface  {
	
//	Scanner in = new Scanner(System.in);
	
	private ArrayList<Patient> patient;
	
	
	//constructor
	
	
	public void printAppointment() {
		int i = 0;
		String [] appointment = {"10-10:30","10:30-11","11-11:30","11:30-12","12-12:30",
				"12:30-1","1-1:30","1:30-2","2-2:30","2:30-3","3-3:30","3:30-4","4-4:30","4:30-5","5-5:30","5:30-6","6-6:30"}; 
		for(Patient p : patient) {
			
		
				p.setAppointments(appointment[i]);
				System.out.println(p.getName() + " " + p.getAppointments());
				
			
			
			i++;
		}
	}
	
	
	



	public Reciptionist(String name, String address, int nationalNumber, int contactNumber, String jobDescription) {
		super(name, address, nationalNumber, contactNumber, jobDescription);
		patient = new ArrayList<Patient>();	
		}



	//methods
	
	
	public void addMedicine(int nationalNumber, String medicine) {
		for(Patient p:patient) {
			if(p.getNationalNumber() == nationalNumber)
			{
				
				p.setMedicine(medicine);
			    
			}	
			
		
		}
		
	}
	public void treatmentDiscription(int nationalNumber, String discription) {
		int i = 0;
		for(Patient p:patient) {
			if(patient.get(i).getNationalNumber() == nationalNumber)
				p.setDiscription(discription);
			else
				System.out.println("invalid output");
			i++;
		}
		
	}
	
	
	public void registration(String type, String name, String address, int nationalNumber, int contactNumber) {
		if(type.contains("ordinary"))
		patient.add(new Ordinary(name, address, nationalNumber, contactNumber));
		else if(type.contains("student"))
		patient.add( new Student(name, address, nationalNumber, contactNumber));
		else if(type.contains("consultant"))
			patient.add(new Consultant(name, address, nationalNumber, contactNumber));
	}
	
	
	
	public void printBill(int nationalNumber) {
		for(Patient pp:patient)
		{
//calculate bill has an issue
			if(nationalNumber == pp.getNationalNumber())
		System.out.println("Dear " + pp.getName() + " Your bill amount is " + pp.discount(nationalNumber) );
		
		}
		}
	
	
	
	
	

	
		
	


	public ArrayList<Patient> getPatient() {
		return patient;
	}






	public void setPatient(ArrayList<Patient> patient) {
		this.patient = patient;
	}






	public void writePatientInfo() {
		try {
			FileWriter writer = new FileWriter("file.txt");
			BufferedWriter write = new BufferedWriter(writer);	
			for(Patient p:patient) {
				write.write(Integer.toString(p.getNationalNumber()));
				write.newLine();
				write.write(p.getName());
				write.newLine();
				write.write(p.getMedicine());
				write.newLine();
				write.write(p.getDiscription());
				
				write.newLine();
				write.write(p.getAppointments());
				
				
				
				
			}
				
			
			write.close();

			}
			
			catch(IOException e) {
				e.printStackTrace();
			}
		
	}
//	
//	
	public void postAnnouncement(String message) {
        System.out.println("DCC posted an announcement: " + message);
        notifyObservers(message);
    }




//
//
//	
//
//
//
//
//
//
	
	@Override	
	 public void notifyObservers(String message) 
	    {
	        for (Patient p : patient) 
	        {
	           p.update(message);
	        }
	    }






	




	






	





}
