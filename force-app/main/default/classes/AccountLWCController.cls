public with sharing class AccountLWCController {

    @AuraEnabled
    public static List < Account > fetchAccountList ( String searchKey ) {
        String key = '%' + searchKey + '%';
        System.debug('changes for SFD-298');
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 10];
    }
}