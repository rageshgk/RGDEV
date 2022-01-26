({
	searchRecords : function(component, event) {
    var searchKey = event.getParam("searchKey");
    component.set('v.msg',
                  'You searched for the term [' + searchKey +
                  '] - ');
	}
})