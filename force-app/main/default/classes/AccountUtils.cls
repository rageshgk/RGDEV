public class AccountUtils {

    public static List < Account > accountsByState ( String BillingStateString ) {
        return [ SELECT Id, Name FROM Account WHERE BillingState=: BillingStateString ];
    }

}