public with sharing class SearchResultsController {
	
	@AuraEnabled 
	public static List < Account > getAccounts () {
		List < Account > accountRecordList = [ SELECT Id,Name, Website, Phone, OwnerId FROM Account Limit 5];
		return accountRecordList;
	}
    
    @AuraEnabled 
	public static List < Contact > getContacts () {
		List < Contact > contactRecordList = [ SELECT Id, Name, Phone, Email, Title FROM Contact Limit 5];
		return contactRecordList;
	}
	
	@AuraEnabled 
	public static List < Lead > getLeads () {
		List < Lead > leadRecordList = [ SELECT Id, Name, Company, Email, Status, Phone FROM Lead Limit 5];
		return leadRecordList;
	}
	
}