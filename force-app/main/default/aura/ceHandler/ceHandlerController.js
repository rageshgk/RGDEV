{
    handleComponentEvent : function(cmp, event) {
        var message = event.getParam("msg");
		 debugger;
        // set the handler attributes based on event data
        cmp.set("v.messageFromEvent", message);
        var numEventsHandled = parseInt(cmp.get("v.numEvents")) + 1;
        cmp.set("v.numEvents", numEventsHandled);
    }
}