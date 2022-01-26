trigger ClosedOpportunityTrigger on Opportunity (after insert, after update ) {

    List < Task > taskList = new List < Task > ();
    
    for ( Opportunity oppRecord : Trigger.New ) {
        
        if ( oppRecord.StageName == 'Closed Won') {
            Task followUpTask = new Task ();
            followUpTask.Subject = 'Follow Up Test Task';
            followUpTask.whatId  = oppRecord.Id;
            taskList.add (followUpTask );
        }
    }
    
    try {
    
        Database.insert ( taskList );
    
    } catch ( DMLException DME ) {
        
    }

}