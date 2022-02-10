public with sharing class ContactController {
    
    @AuraEnabled
    public static List < Contact > getContacts () {
        List < Contact > contactList = new List < Contact > ();
        System.debug('changes for SFD-300');
        contactList = [SELECT Id, Name, MailingStreet, Phone, Email, LeadSource
                       FROM Contact ];
        return contactList;
    }
}