public with sharing class ARBCaseListController {
    public ARBCaseListController() {

    }

    public static List < Case > fetchCaseRecordList () {
        List < Case > caseList = new List < Case > ();
        for ( Case caseRecord : [ SELECT Id, CaseNumber FROM Case WHERE CreatedDate = Today]) {
            caseList.add( caseRecord);
        }
        return caseList;
    }
}
