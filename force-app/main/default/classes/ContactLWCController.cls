public with sharing class ContactLWCController {
    public ContactLWCController() {

    }

    @AuraEnabled
    public static List < Contact > fetchContactList ( String searchKey ) {
        String key = '%' + searchKey + '%';
        return [SELECT Id, Name FROM Contact WHERE Name LIKE :key  LIMIT 10];
    }
}
