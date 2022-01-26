public class StringArrayTest {

public static List < String > generateStringArray ( Integer total ) {

    List < String > stringList = new List < String > ();
    for ( Integer i = 0;i< total; i++) {
        stringList.add('Test '+i);
    }
    
    System.debug ( stringList);
    return stringList;
}

}