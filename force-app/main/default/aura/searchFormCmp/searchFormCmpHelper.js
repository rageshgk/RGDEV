({
	searchDetails : function( cmp ) {
		var searchKeyValue = cmp.get( "c.searchKey");
        $A.get("e.c:searchTextEvent").setParams ("searchKey" : searchKeyValue).fire ();
	}
})