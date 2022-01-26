public class AccountHandler {

    public static Account insertNewAccount ( String acctName ) {
        Account acctRecord = new Account();
        acctRecord.Name = acctName;
        try {
            insert acctRecord;
        } catch ( DMLException DMLEx ) {
            return null;
        
        }
        
        return acctRecord;
    
    }

}