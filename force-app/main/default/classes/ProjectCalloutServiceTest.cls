@isTest
private class ProjectCalloutServiceTest {

    @TestSetup
    private static void setup() {
        ServiceTokens__c st = new ServiceTokens__c(
                name = ProjectCalloutService.PROJECT_SERVICE_TOKEN_NAME,
                Token__c = 'test-service-token'
        );
        insert st;
    }

    private static testMethod void testFailure() {
        Opportunity opp = createOpportunity();

        Test.startTest();
        Test.setMock(HttpCalloutMock.class, new ProjectCalloutServiceMockFailure());
        ProjectCalloutService.postOpportunityToPMS(new List<Id>{opp.Id});
        Test.stopTest();

        System.assertEquals('Resubmit Project', queryOpportunity(opp.Id).StageName);
    }

    private static testMethod void testSuccess() {
        Opportunity opp = createOpportunity();

        Test.startTest();
        Test.setMock(HttpCalloutMock.class, new ProjectCalloutServiceMock());
        ProjectCalloutService.postOpportunityToPMS(new List<Id>{opp.Id});
        Test.stopTest();

        System.assertEquals('Submitted Project', queryOpportunity(opp.Id).StageName);
    }

    private static Opportunity createOpportunity() {
        Account acc = new Account ();
        acc.Name = 'Last Name';
        insert acc;
        Opportunity opp = new Opportunity(
                Name = 'TestOpportunity',
                StageName = 'Closed Won',
                CloseDate = Date.today().addYears(1),
                AccountId = acc.Id
        );
        insert opp;
        return opp;
    }

    private static Opportunity queryOpportunity(Id oppId) {
        return [SELECT StageName FROM Opportunity WHERE Id =: oppId LIMIT 1];
    }
}