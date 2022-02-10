public with sharing class AccountListController {
    public AccountListController() {
        System.debug('Account list controller called');
    }

    @AuraEnabled
    public static List < Account > fetchAccountListByName ( String searchKey ) {
        String key = '%' + searchKey + '%';
        System.debug('searchKey' + searchKey);
        return [SELECT Id, Name, AccountNumber FROM Account WHERE Name LIKE :key  LIMIT 10];
    }
}
