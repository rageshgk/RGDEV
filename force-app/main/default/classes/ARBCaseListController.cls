public with sharing class ARBCaseListController {
    public ARBCaseListController() {

    }

    public static List < Case > fetchCaseRecordList () {
        List < Case > caseList = new List < Case > ();
        for ( Case caseRecord : [ SELECT Id, CaseNumber FROM Case WHERE CreatedDate = Today]) {
            caseList.add( caseRecord);
        }
        System.debug('changes for SFD-298');
        return caseList;
    }
}
