@isTest
private class LeadProcessorTest {
    @testSetup 
    static void setup() {
        List<Lead> leadRecords= new List<Lead>();
       
        for (Integer i=0;i<10;i++) {
            leadRecords.add(new Lead(Company='#'+i, 
                LeadSource='Web', LastName = 'Account '));
        }
        insert leadRecords;
        
    }
    static testmethod void test() {        
        Test.startTest();
        LeadProcessor  uca = new LeadProcessor ();
        Id batchId = Database.executeBatch(uca);
        Test.stopTest();
        // after the testing stops, assert records were updated properly
    }
    
}