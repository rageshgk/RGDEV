@isTest
private class Calculator_Tests {

    @isTest
    public static void divide_does_divide() {
        Calculator.divide(3, 2);
    }
    
    @isTest
    public static void divide_throws_exception_for_division_by_zero() {
        Boolean caught = false;
        try {
            Calculator.divide(1, 0);
            
        } catch (Calculator.CalculatorException e) {
            System.assertEquals('you still can\'t divide by zero', e.getMessage(), 'caught the right exception');
            caught = true;
        }
        System.assert(caught, 'threw expected exception');
    }
    
    @isTest
    public static void operationsMethod() {
        Calculator.addition(3, 2);
        Calculator.subtraction(3, 2);
        Calculator.multiply(3, 2);
        
        try {
            Calculator.divide(-5, 2);
            Calculator.multiply(0, 0);
        
        } catch ( Calculator.CalculatorException e ) {
        
        }
        
        try {
            Calculator.multiply(0, 0);
        
        } catch ( Calculator.CalculatorException e ) {
        
        }
        
        
    }
    
}