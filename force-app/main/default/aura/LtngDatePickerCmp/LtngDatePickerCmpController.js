({  
    doAction : function(cmp, event) {
        var params = event.getParam('arguments');
        if (params) {
            var param1 = params.parentparam1;
            alert(param1);
        }
    },
    scriptsLoaded : function(component, event, helper) {
        
          //Restrict past date selection in date picker  
			var dates = [new Date()];
            var month = new Date().getMonth()+1;
            var year = new Date().getFullYear();
            var array ;

            		var action = component.get("c.disableDates");
                    action.setParams({ 
                        "Month": month,
                        "Year": year
                    });                    
                    action.setCallback(this, function(a) {                        
                        var state = a.getState();
                        if (state === "SUCCESS") {
                            dates = a.getReturnValue();
							array = ["2019-08-23","2019-08-24","2019-08-25"]
                           
                        }
                    });
        
        			 $( '#datepickerId' ).datepicker({  
                                dateFormat: 'dd/mm/yy',
                                updateViewDate: false,
                                async: false,
                                onChangeMonthYear: function(year,month,inst) {
                                // Perform AJAX call and get the list
                                array = fetchArrayBasedonMonth( month, year );
                                    console.log ( ' fetch array based on month' + month+ 'month' + array);
                                     //$('#datepickerId').datepicker("refresh");
                                },
                                beforeShowDay: function (date) {
                                    var string = jQuery.datepicker.formatDate('yy-mm-dd', date);
                                    return [array.indexOf(string) == -1 ]
                                }
                                
                                
                                
                            });
        
                    $A.enqueueAction(action);
    function fetchArrayBasedonMonth ( month, year ){
        var action = component.get("c.disableDatesByMonth");
                    action.setParams({ 
                        "Month": month,
                        "Year": year
                    });                    
                    action.setCallback(this, function(a) {                        
                        var state = a.getState();
                        if (state === "SUCCESS") {
                            
                            dates = a.getReturnValue();   
                            console.log ( ' month ----' + month);
							if( month == 8 )
                            	array = ["2019-08-23","2019-08-24","2019-08-25"];
                            else if ( month == 10 ) {
                                array = ["2019-10-23","2019-10-24","2019-10-25"];
                            }
                        }
                    });
        
                    $A.enqueueAction(action);
        return array;
  		 }

        
        }
                
})