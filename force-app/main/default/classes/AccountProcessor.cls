public class AccountProcessor {

    @future 
    public static void countContacts ( List < Id > accountIds ) {
        List < Account > updateAccountList = new List < Account> ();
    
        for ( Account acctRecord : [ SELECT Id, Name, (SELECT Id FROM Contacts) FROM Account]) {
            acctRecord.Number_of_Contacts__c = acctRecord.contacts.size();
            updateAccountList.add ( acctRecord );
        }
    
       Database.update ( updateAccountList );
    } 

}