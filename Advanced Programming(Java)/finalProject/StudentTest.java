package finalProject;
import org.junit.Assert;
import org.junit.Test;

public class StudentTest {

    @Test
    public void testStudentDiscount() {
        Student student = new Student("Alice", "123 Main St", 987654321, 123456789);

        double discount = student.discount(987654321);
        Assert.assertEquals(15.0, discount, 0.0);
    }
}