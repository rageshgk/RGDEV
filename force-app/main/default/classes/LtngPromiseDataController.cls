public with sharing class LtngPromiseDataController {
    
    @AuraEnabled
    public static Map<String, Object> getColumnsAndData(
        String sObjectName, List<String> sObjectFieldsNames, String whereClause){
        Map<String, Object> recordDataMap = new Map<String, Object> ();
        try{
            Map<String, Schema.SObjectField> m = Schema.describeSObjects(sObjectName.split(','))[0].fields.getMap();
            List<Object> columns = new List<Object>();
            for ( String fieldName: sObjectFieldsNames ) {
                Schema.DescribeFieldResult dfr = m.get( fieldName ).getDescribe();
                Map<String, Object> column = new Map<String, Object>{
                    'label' => dfr.getLabel(),
                    'fieldName' => dfr.getName(),
                    'type' => String.valueOf( dfr.getType() ).toLowerCase(),
                    'sortable'=>true
                };
                columns.add( column );
            }
            String query = 'SELECT ' + String.join( sObjectFieldsNames, ', ') + ' FROM ' + sObjectName;
            if (!String.isBlank(whereClause)) {
                query += ' WHERE ' + whereClause;
            }
            
            List<SObject> records = Database.query( query );
            recordDataMap = new Map<String, Object>{
                'columns' => columns,
                'data' => records
            };
        } catch(Exception e) {
            System.debug ( ' Exception occured : ' +e.getMessage ());
            //AuraUtils.buildAuraHandledException(e);
        }
      return recordDataMap ;  
    }
}