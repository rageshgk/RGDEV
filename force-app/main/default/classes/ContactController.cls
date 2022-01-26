public with sharing class ContactController {
    
    @AuraEnabled
    public static List < Contact > getContacts () {
        List < Contact > contactList = new List < Contact > ();
        
        contactList = [SELECT Id, Name, MailingStreet, Phone, Email, LeadSource
                       FROM Contact ];
        return contactList;
    }
}