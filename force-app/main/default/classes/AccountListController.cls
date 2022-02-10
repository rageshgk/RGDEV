public with sharing class AccountListController {
    public AccountListController() {

    }

    @AuraEnabled
    public static List < Account > fetchAccountListByName ( String searchKey ) {
        String key = '%' + searchKey + '%';
        System.debug('searchKey' + searchKey);
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 10];
    }
}
