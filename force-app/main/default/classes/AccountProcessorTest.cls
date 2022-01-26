@isTest
private class AccountProcessorTest {


    public static testMethod void updateTestAccountContactsNum () {
        Account testAccount = new Account ();
        testAccount.Name= 'John Smith';
        testAccount.Industry= 'Communications';
        insert testAccount;
        
        Contact testContact = new Contact ();
        testContact.firstName = 'John';
        testContact.lastName = 'Smith';
        testContact.AccountId = testAccount.Id;
        insert testContact;
        
        Test.startTest();
        AccountProcessor.countContacts ( new List <Id > {testAccount.Id});
        Test.stopTest();
    
    }

}