public with sharing class ContactLWCController {
    public ContactLWCController() {
        System.debug('Changes for SFD-300');
        System.debug('Changes for SFD-298 ');
        System.debug('Changes for SFD-298 second change');
        System.debug('Changes for SFD-300 second change');
    }

    @AuraEnabled
    public static List < Contact > fetchContactList ( String searchKey ) {
        String key = '%' + searchKey + '%';
        return [SELECT Id, Name FROM Contact WHERE Name LIKE :key  LIMIT 10];
    }
}
