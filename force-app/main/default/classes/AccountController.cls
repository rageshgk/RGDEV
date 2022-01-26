public with sharing class AccountController {
  public static List<Account> getAllActiveAccounts() {
    System.debug('changes committed in branch...');
    return [SELECT Id,Name,Active__c FROM Account WHERE Active__c = 'Yes'];
  }
}