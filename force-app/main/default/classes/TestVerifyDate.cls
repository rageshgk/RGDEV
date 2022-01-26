@isTest
private class TestVerifyDate {
    @isTest static void thirtyDaysMethod() {
        Date thirtyDaysTrue = VerifyDate.CheckDates(Date.today(), Date.newInstance(2018,11,27));
        Date thirtyDaysFalse = VerifyDate.CheckDates(Date.today()-30, Date.newInstance(2018,11,27));
        System.assertEquals(Date.newInstance(2018,11,27),thirtyDaysTrue);
    }

    @isTest static void endOfMonthMethod() {
        Date endOfMonth = VerifyDate.CheckDates(Date.today(), Date.newInstance(2018,11,27));
        System.assertEquals(Date.newInstance(2018,11,27),endOfMonth);
    }   

}