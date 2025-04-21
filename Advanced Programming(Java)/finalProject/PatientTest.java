package finalProject;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;

import org.junit.Assert;
//import org.junit.Test;

public class PatientTest {

    @Test
    public void testPatientConstructorAndGetters() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);

        Assert.assertEquals("John", patient.getName());
        Assert.assertEquals("123 Main St", patient.getAddress());
        Assert.assertEquals(123456789, patient.getNationalNumber());
        Assert.assertEquals(987654321, patient.getContactNumber());
        Assert.assertEquals(30.0, patient.getFees(), 0.0);
        Assert.assertNull(patient.getDiscription());
        Assert.assertNull(patient.getMedicine());
        Assert.assertNull(patient.getAppointments());
    }

    @Test
    public void testPatientSetters() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);

        patient.setDiscription("Fever");
        Assert.assertEquals("Fever", patient.getDiscription());

        patient.setMedicine("Ibuprofen 200mg");
        Assert.assertEquals("Ibuprofen 200mg", patient.getMedicine());

        patient.setAppointments("10-10:30");
        Assert.assertEquals("10-10:30", patient.getAppointments());
    }

    @Test
    public void testPatientAddMedicine() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);

        String medicine = patient.addMedicine("Ibuprofen 200mg");
        Assert.assertEquals("Ibuprofen 200mg", medicine);
        Assert.assertEquals("Ibuprofen 200mg", patient.getMedicine());
    }

    @Test
    public void testPatientDiscount() {
        Patient patient = new Patient("John", "123 Main St", 111, 987654321);

        double discount = patient.discount(111);
        Assert.assertEquals(30.0, discount,0.0);
    }
    @Test
    public void testPatientDiscount1() {
        Patient patient = new Ordinary("John", "123 Main St", 111, 987654321);

        double discount = patient.discount(111);
        Assert.assertEquals(30.0, discount,0.0);
    }
    @Test
    public void testPatientDiscount2() {
        Patient patient = new Student("John", "123 Main St", 111, 987654321);

        double discount = patient.discount(111);
        Assert.assertEquals(30.0, discount,0.0);
    }

    @Test
    public void testPatientUpdate() {
        Patient patient = new Patient("John", "123 Main St", 123456789, 987654321);

        patient.update("Important message");
        Assert.assertEquals("John Recieved an announcement: Important message ", outputStream.toString().trim());
    }
}