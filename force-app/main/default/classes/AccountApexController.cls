public class AccountApexController {

    //if sobject is specific for eg:Account,then you use List<Account> acc
    @AuraEnabled
    public static String insertAccounts(List<sObject> acc){
        try{
            insert acc;
            System.debug('accccc'+acc);
            return 'success';
        }
        catch(Exception Ex ){
           System.debug( 'Error ' + Ex.getMessage());
        }
        return '';        
    }
}