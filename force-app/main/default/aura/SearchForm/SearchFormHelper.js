({
	searchDetails : function( cmp ) {
		var searchKey = cmp.get("v.searchKey");
        var searchEvent = $A.get("e.c:SearchEvent");
        searchEvent.setParams ({searchKey: searchKey}).fire();
	}
})