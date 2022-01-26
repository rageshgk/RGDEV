public with sharing class AccountLWCController {

    @AuraEnabled
    public static List < Account > fetchAccountList ( String searchKey ) {
        String key = '%' + searchKey + '%';
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 10];
    }
}