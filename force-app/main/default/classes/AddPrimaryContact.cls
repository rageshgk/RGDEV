public class AddPrimaryContact implements Queueable {

    private Contact contactRecord;
    private String stateString;

    public AddPrimaryContact ( Contact contactRec, String billingState ) {
        this.contactRecord = contactRec;
        this.stateString = billingState;
    }
    
    public void execute ( QueueableContext QC ){
        List < Contact > contactRecordtoInsert = new List < Contact > ();
        for ( Account accountRec : [SELECT Id, Name,billingState  FROM Account WHERE billingState =:stateString LIMIT 200]) {
            
            contact contactRecord = new contact();
            contactRecord = this.contactRecord .clone(false, false, false, false);
            contactRecord .AccountId = accountRec .Id;
            
            contactRecordtoInsert.add ( contactRecord );
        }
        
        Database.insert ( contactRecordtoInsert );
        
        
    }

}