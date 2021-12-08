/**
 * @author Sean Lee
 * @date 2021-12-07
 * @description This is the test class of Core.
 */
@IsTest
private class CoreTest {
    @IsTest
    static void testGettingClassName() {
        Test.startTest();
        SubCore objSubCore = new SubCore();
        Test.stopTest();
        System.assertEquals(objSubCore.getLocalClassName(), SubCore.class.getName());
    }
    @IsTest
    static void testGettingMethodName() {
        Test.startTest();
        SubCore objSubCore = new SubCore();
        Test.stopTest();
        System.assertEquals(objSubCore.getLocalMethodName(), 'getLocalMethodName');
    }
    private virtual class SubCore extends Core {
        protected String getLocalClassName() {
            return getClassName();
        }
        protected String getLocalMethodName() {
            return getMethod();
        }
    }
}