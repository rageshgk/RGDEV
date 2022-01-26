global class LeadProcessor implements Database.Batchable <Sobject> {

    global List < Lead > leadReordUpdateList = new List < Lead >();

    global Database.QueryLocator start ( Database.BatchableContext BC ) {
    
        return Database.getQueryLocator ('SELECT Id,LeadSource FROM Lead');
    
    }
    global void execute ( Database.BatchableContext BC, List < Lead > leadRecordsList  ) {
        
        for ( Lead leadRec : leadRecordsList  ) {
            leadRec.LeadSource ='Dreamforce';
            leadReordUpdateList.add (leadRec );
        }    
    }
    global void finish( Database.BatchableContext BC ) {
    
        Database.update (leadReordUpdateList);
    
    }

}