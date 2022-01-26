global class DailyLeadProcessor implements Schedulable {

    global void execute ( SchedulableContext SC ) {
        List < Lead > leadRecordUpdateList = new List < Lead > ();
        
        for ( Lead leadRecord : [ SELECT Id, Name, LeadSource From Lead Where LeadSource ='']) { 
            leadRecord.LeadSource  = 'Dreamforce';
            leadRecordUpdateList .add ( leadRecord  );
            
        }    
        
        Database.update ( leadRecordUpdateList  );   
    
    }

    

}