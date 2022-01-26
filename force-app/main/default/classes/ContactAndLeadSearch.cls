public class ContactAndLeadSearch {

    public static List<List< SObject>> searchContactsAndLeads ( String searchParam ) {
    
        return [FIND :searchParam IN NAME FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName,LastName)];    
    }

}