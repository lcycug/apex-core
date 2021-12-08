/**
 * @author Sean Lee
 * @date 2021-12-07
 * @description This class is used to serve as Core.
 */
@SuppressWarnings('PMD.EmptyStatementBlock')
public abstract inherited sharing class Core {
    private static final String CLASS_DOT_PREFIX = 'Class.';
    private static final String COLON = ':';
    private static final String DOT = '.';
    private static final String NEW_LINE = '\n';
    /**
     * @description This method is used to get the contextual class name.
     * @return the class name string
     */
    public static String getClassName() {
        return getClassName(new DmlException().getStackTraceString().substringAfter(NEW_LINE));
    }
    /**
     * @description This method is usd to return the contextual method name.
     * @return the method name string
     */
    public static String getMethod() {
        return getMethod(new DmlException().getStackTraceString().substringAfter(NEW_LINE));
    }
    private static String getClassName(String strLine) {
        if (strLine.startsWith(CLASS_DOT_PREFIX)) {
            strLine = strLine.substringAfter(CLASS_DOT_PREFIX);
        }
        return strLine.substringBefore(COLON).substringBeforeLast(DOT);
    }
    private static String getMethod(String strLine) {
        return strLine.substringBefore(COLON).substringAfterLast(DOT);
    }
}