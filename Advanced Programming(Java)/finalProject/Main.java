package finalProject;

import java.util.Scanner;

public class Main {

	public static void main(String[] args){
		// TODO Auto-generated method stub
		
		CreateDCC creater = new CreateDCC();
		DCC dentalTest = creater.createDCC("ABC");
		DCCMed med = new Proxy();
		med.display();
		
		//ordinary attributes
		String type;String name; String address; int nationalNumber;int contactNumber;
		
		
		Scanner in = new Scanner(System.in);
		Scanner integer = new Scanner(System.in);
		Scanner in2 = new Scanner(System.in);
		Scanner integernew = new Scanner(System.in);
		
		
		//Objects
		ReciptionistInterface recip = new Reciptionist("Abdallah", "Amman", 2000442189,785326279 , "BlaBlaBla");
		
		String input;
		while(true) {
			int integerInput;

			System.out.println("Enter Job Description(Doctor, Nurse, Reciptionist):\n");

			input = in.next();

		switch(input) {//switch to choose the job
		case "Doctor":
			System.out.println("Enter 1 to add medicine");
			System.out.println("Enter 2 to add treatment description");
			integerInput = integer.nextInt();
			switch(integerInput) {
			case 1:
				System.out.println("Enter patient national number: ");
				integerInput= integer.nextInt();
				System.out.println("Enter medicine name and dose ");
				input = in.next();
				System.out.println(input+ integerInput);
				recip.addMedicine(integerInput, input);
				

				break;
			case 2:
				System.out.println("Enter patient national number: ");
				integerInput = integernew.nextInt();

				System.out.println("Enter treatment description for the patient: ");
				input = in.next();
				recip.treatmentDiscription(integerInput, input);
				break;
				default:
					System.out.println("invalid input");
			}
			



			break;
		case "Nurse":
			System.out.println("Enter 1 to print the daily report of the clinic: ");

			integerInput = integer.nextInt();
			switch(integerInput) {
			case 1:
				System.out.println("Daily report must be print on external file");
				recip.writePatientInfo();
				break;
				default:
					System.out.println("Invalid Input");
			}
			break;
		case "Reciptionist":
			System.out.println("Enter 1 to add patient");
			System.out.println("Enter 2 to print Bill to the patient");
			System.out.println("Enter 3 to print appointments");
			integerInput = integer.nextInt();
			switch(integerInput) {//switch to choose reciptionist process
			case 1:
				System.out.println("Enter patient name ");
				 name = in.next();
				System.out.println("Enter patient address ");
				address = in.next();
				System.out.println("Enter patient type (ordinary, student, consultant):  ");
				type = in2.next();
				
				switch(type) {//switch to choose patient type
				case "ordinary":
					System.out.println("Enter national number: ");
					nationalNumber = integer.nextInt();
					System.out.println("Enter contact number: ");
					contactNumber = integer.nextInt();
					recip.registration(type, name, address, nationalNumber, contactNumber);
					
					//					recip.printPatientDetails();
					break;
				case "student":
					System.out.println("Enter national number: ");
					nationalNumber = integer.nextInt();
					System.out.println("Enter contact number: ");
					contactNumber = integer.nextInt();
					recip.registration(type, name, address, nationalNumber, contactNumber);

					break;
				case "consultant":
					System.out.println("Enter national number: ");
					nationalNumber = integer.nextInt();
					System.out.println("Enter contact number: ");
					contactNumber = integer.nextInt();
					recip.registration(type, name, address, nationalNumber, contactNumber);

					break;
				default:
					System.out.println("Invalid Input");
				}
				break;
			case 2://if reciptionist choose second choice(print Bill)
				System.out.println("Enter patient National Number");
				nationalNumber = integer.nextInt();
				recip.printBill(nationalNumber);

				break;
			case 3:
				recip.printAppointment();
				recip.postAnnouncement("Your appointment has been determined, Check it now!!");
				break;
			}
			break;
		default:
			System.out.println("Invalid Input");
		}


		}
		
		
	}

}
