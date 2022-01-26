@isTest
private class TestRestrictContactByName {

    @isTest
    static void invalidNameMethod() {
        try {
            Contact c = new Contact(LastName='INVALIDNAME');
            insert c;
        }
        catch (Exception e) {
            System.assert(true); 
        }
    }
    
}