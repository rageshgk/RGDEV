{
    fireComponentEvent : function(cmp, event) {
      
        var cmpEvent = cmp.getEvent("cmpEvent");
       
        cmpEvent.setParams({
            "msg" : "Comp A Published.... " +
            "Passing......." });
        cmpEvent.fire();
    }
}