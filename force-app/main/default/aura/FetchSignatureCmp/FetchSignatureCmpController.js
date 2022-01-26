({
 doinit : function(component, event, helper) {      
      var action=  component.get('c.fetchCurrentSignatureList');  // Calling apex method
      //var hexInput;
	  action.setCallback(this,function(response) {
          var state=response.getState();
		  if(state==='SUCCESS'){	
              var signatureList = response.getReturnValue();
              convertHexToImage ( signatureList );
              }
        });
		
		function convertHexToImage( signatureStringList) {
			
               for (var j= 0; j< signatureStringList.length; j++) {
                   var hexInput = signatureStringList[j];
                   var cleaned_hex = hexInput;
                   var binary = new Array();
                   for (var i=0; i<cleaned_hex.length/2; i++) {
                      var h = cleaned_hex.substr(i*2, 2);
                      binary[i] = parseInt(h,16);        
                   }
                   var byteArray = new Uint8Array(binary);
             	   var divId = document.getElementById("SignatureContainer1");//component.find ('SignatureContainer');
                   var a = window.document.createElement('img');
                   a.src = window.URL.createObjectURL(new Blob([byteArray], { type: 'application/octet-stream' }));
                   divId.appendChild(a);
                   var newLine = window.document.createElement('br');
                   divId.appendChild(newLine);
     			}
              
                // Append anchor to body.
                
		}
  $A.enqueueAction(action);    
 }
})