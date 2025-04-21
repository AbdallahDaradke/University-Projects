package finalProject;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class CreateDCCTest {
    @Test
    void testCreateDCC() {
        CreateDCC creator = new CreateDCC();
        DCC dcc = creator.createDCC("ABC");
        assertNotNull(dcc);
        assertEquals("ABC", dcc.getName());
    }

    @Test
    void testCreateDCC_Null() {
        CreateDCC creator = new CreateDCC();
        DCC dcc = creator.createDCC(null);
        assertNull(dcc);
    }

    @Test
    void testCreateDCC_Empty() {
        CreateDCC creator = new CreateDCC();
        DCC dcc = creator.createDCC("");
        assertNull(dcc);
    }
}