({
	searchDetails : function(component, event, helper) {
        var searchKeyValue = component.get( "c.searchKey");
        component.set ("v.message" searchKeyValue);
		
	}
})