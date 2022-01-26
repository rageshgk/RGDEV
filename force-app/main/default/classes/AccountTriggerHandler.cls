public class AccountTriggerHandler {

    public static void CreateAccounts (List < Account > accountList ) {
        List < Account > accountListInsert = new List < Account > ();
        for ( Account accRecord: accountList) {
            if ( accRecord.BillingState != null ) {
                accRecord.ShippingState = accRecord.BillingState; 
            }
        
        }
      
    }

}