public with sharing class AccountController {
  public static List<Account> getAllActiveAccounts() {
    System.debug('changes for account');
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
}