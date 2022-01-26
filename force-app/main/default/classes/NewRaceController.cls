public with sharing class NewRaceController {

    @AuraEnabled
    public static Race__c newRaceDB( Race__c race ) {
        try {
            System.debug ( ' raceRecord is ' + race );
            insert race;
        } catch ( Exception Exp ) {
            System.debug ( ' raceRecord cannot be inserted : ' + Exp.getMessage() );
        }
       
        
        return race;
    }
   
}