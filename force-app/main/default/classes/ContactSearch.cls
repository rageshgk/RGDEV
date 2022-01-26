public class ContactSearch {

    public static List < Contact > searchForContacts ( String lName, String mailingPostalCode ) {
        return [SELECT Id,Name FROM Contact WHERE LastName =: lName AND MailingPostalCode =: mailingPostalCode];
    }

}