public class UserProfileController {

    @AuraEnabled 
    public static List<User> getUserProfiles(){
        return [SELECT Id,Address ,BannerPhotoUrl,CompanyName,Department,Email,FirstName , LastName ,FullPhotoUrl 
                FROM User];
    }
}