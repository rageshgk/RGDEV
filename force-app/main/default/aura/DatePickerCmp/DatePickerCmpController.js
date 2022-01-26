({
    doInit : function(component, event, helper) {
        var today = new Date();
        var currentDate = today.getFullYear() + "/" + (today.getMonth() + 1) + "/" + today.getDate();
        component.set('v.today',currentDate );
    	var oDate = component.find("oDate");
        oDate.set("v.value", currentDate);
    },

    setOutput : function(component, event, helper) {
    	var cmpMsg = component.find("msg");
    	$A.util.removeClass(cmpMsg, 'hide');
        var expdate = component.find("expdate").get("v.value");

        var oDate = component.find("oDate");
        oDate.set("v.value", expdate);

    }
})