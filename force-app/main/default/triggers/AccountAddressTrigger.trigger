trigger AccountAddressTrigger on Account ( before insert, before update) {
    
    for ( Account acctRecord : Trigger.New) {
        if ( acctRecord.Match_Billing_Address__c && acctRecord.billingpostalcode !=null) {
            acctRecord.billingpostalcode = acctRecord.shippingpostalcode;        
        }
    
    }

}