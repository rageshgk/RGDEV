public class DisplayDeliveryTrackImageController {
	
    //ApexMethod
@AuraEnabled
	public static list<Attachment> returnAttList(){
        //Id parentId
    

    return [select Id, Name,Body, ContentType from Attachment 
            where parentid='0032800001EXXanAAH' and ContentType in ('image/png', 'image/jpeg', 'image/gif')];
}
}