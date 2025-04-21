package finalProject;

import org.junit.Assert;
import org.junit.Test;

public class OrdinaryTest {

    @Test
    public void testOrdinaryDiscount() {
        Ordinary ordinary = new Ordinary("John", "123 Main St", 123456789, 987654321);

        double discount = ordinary.discount(987654321);
        Assert.assertEquals(10.0, discount, 0.0);
    }
}