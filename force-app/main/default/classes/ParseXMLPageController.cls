public class ParseXMLPageController {

    public List < String > childNodeList {get;set;}
    public String jsonFromXML {get;set;}
    
    public ParseXMLPageController  () {
    

 
 StaticResource srObject = [select id,body from StaticResource Where Name = 'XMLSample'];
String xml= srObject.body.toString();


 
 /*Dom.Document doc = new Dom.Document();
            doc.load(xml);
            Dom.XMLNode address = doc.getRootElement();
            childNodeList = new List < String > ();
            for(Dom.XMLNode child : address.getChildElements()) {
                childNodeList.add (child.getText());
            }
            
            
            //jsonFromXML =XMLParser.xmlToJson ( xml ); 
            System.debug ( 'XML to JSON ' + childNodeList);*/
            
            
            /*Xmlstreamreader reader = new Xmlstreamreader(xml);
            
            while(reader.hasNext()) {
            if (reader.getEventType() == XmlTag.START_ELEMENT) {
                if ('DocResponse' == reader.getLocalName()) {
                    System.debug(' under docResponse'+ reader.getAttributeValue(null, 'DocMasterBOL'));
                }
            }
            reader.next();
            } */
            Dom.Document doc = new Dom.Document();
              doc.load(xml);
              Dom.XMLNode root = doc.getRootElement();
              //Dom.XMLNode commandElement = doc.getRootElement();
              Dom.XMLNode commandElement = root.getChildElement('DocResponse', null);
             System.debug(' COunt of attributes ' + commandElement.getAttributeCount());

            for(Dom.XMLNode child : commandElement.getChildren()) {
               if (child.getAttribute('type', null) != null) {
                   
               }
            }
            
    
    
    }


}