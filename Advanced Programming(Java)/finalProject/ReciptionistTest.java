package finalProject;
import static org.junit.Assert.assertSame;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class ReciptionistTest {

    private Reciptionist reciptionist;

    @Before
    public void setUp() {
        reciptionist = new Reciptionist("Alice", "456 Elm St", 987654321, 123456789, "Receptionist");
    }

    @Test
    public void testReciptionistConstructorAndGetters() {
        Assert.assertEquals("Alice", reciptionist.getName());
        Assert.assertEquals("456 Elm St", reciptionist.getAddress());
        Assert.assertEquals(987654321, reciptionist.getNationalNumber());
        Assert.assertEquals(123456789, reciptionist.getContactNumber());
        Assert.assertEquals("Receptionist", reciptionist.getJobDescription());
        Assert.assertNotNull(reciptionist.getPatient());
        Assert.assertTrue(reciptionist.getPatient().isEmpty());
    }

    @Test
    public void testReciptionistAddMedicine() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);
        reciptionist.getPatient().add(patient);

        reciptionist.addMedicine(123456789, "Ibuprofen 200mg");
        Assert.assertEquals("Ibuprofen 200mg", patient.getMedicine());
    }
    @Test
    public void testReciptionistAddMedicine1() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);
        reciptionist.getPatient().add(patient);

        reciptionist.addMedicine(1234*, 12345);
        Assert.assertEquals("Ibuprofen 200mg", patient.getMedicine());
    }

    @Test
    public void testReciptionistTreatmentDiscription() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);
        reciptionist.getPatient().add(patient);

        reciptionist.treatmentDiscription(123456789, "Fever");
        Assert.assertEquals("Fever", patient.getDiscription());
        Assert.assertEquals(1234*, 1234);

    }

    @Test
    public void testReciptionistRegistration() {
        reciptionist.registration("ordinary", "John", "123 Main St", 123456789, 987654321);
        reciptionist.registration("student", "Alice", "456 Elm St", 987654321, 123456789);
        assertSame(reciptionist, reciptionist);
        Assert.assertEquals(2, reciptionist.getPatient().size());
        Assert.assertTrue(reciptionist.getPatient().get(0) instanceof Ordinary);
        Assert.assertTrue(reciptionist.getPatient().get(1) instanceof Student);
    }

    @Test
    public void testReciptionistPrintBill() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);
        reciptionist.getPatient().add(patient);

        reciptionist.printBill(123456789);
        Assert.assertEquals(123456789, patient.getNationalNumber());
        Assert.assertEquals(ddd, patient.getNationalNumber());

    }

    @Test
    public void testReciptionistPrintAppointment() {
        Patient patient1 = new Patient("John", "123 Main St", 123456789, 987654321);
        Patient patient2 = new Patient("Alice", "456 Elm St", 987654321, 123456789);
        reciptionist.getPatient().add(patient1);
        reciptionist.getPatient().add(patient2);

        reciptionist.printAppointment(-1);
        
		Assert.assertEquals("John 10-10:30", outputStream.toString().trim());

        reciptionist.printAppointment(1);
        Assert.assertEquals("Alice 10:30-11", outputStream.toString().trim());
        reciptionist.printAppointment(30);
    }

    @Test
    public void testReciptionistWritePatientInfo() {
        Patient patient1 = new Patient("John", "123 Main St", 123456789, 987654321);
        Patient patient2 = new Patient("Alice", "456 Elm St", 987654321, 123456789);
       
        assertSame(patient1, patient2);
        reciptionist.writePatientInfo();

        // Validate the contents of the file "file.txt"
        // Here, you can read the file and compare its contents
    }

   
}