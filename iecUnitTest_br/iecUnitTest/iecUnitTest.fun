FUNCTION_BLOCK utTestSuite (* Enables running, resetting and reporting for tests cases defined of a POU under test *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fb/utTestSuite.md *)
    VAR_INPUT 
        Id : UINT; (*Id of the test object. Must be unique number*)
        Name : STRING[250]; (*Name of the test object*)
        RunTests : BOOL; (*Starts all tests that are in setup state. Sets state to running.*)
        ResetTests : BOOL; (*Sets state to setup on test cases that are PASSED or FAILED.*)
    END_VAR
    VAR_IN_OUT 
        TestCases : ARRAY[0..20] OF utTestCase; (*Array of test case definition*)
    END_VAR
    VAR_OUTPUT 
        Summary : utTestCaseSummary; (*Summary of the test results*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        runCmd : R_TRIG; (*Trigger to prevent constant run commands*)
        resetCmd : R_TRIG; (*Trigger to prevent constant reset commands*)
    END_VAR
END_FUNCTION_BLOCK
FUNCTION_BLOCK utTestReporter (* Provides feedback on the status of tests on a system scale *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fb/utTestReporter.md *)
    VAR_IN_OUT 
        Results : ARRAY[0..500] OF utTestCaseSummary; (*Summaries of tests for each POU under test*)
    END_VAR
    VAR_OUTPUT 
        NrPousUnderTest : UINT; (*Total number of POUs under test*)
        NrOfTests : UINT; (*Total number of tests*)
        NrTestsPassed : UINT; (*Number of tests passed*)
        NrTestsFailed : UINT; (*Number of tests failed*)
        PassRate : REAL; (*Total pass rate*)
        TestsInProgress : BOOL; (*Indicates that one or more tests are in progress*)
        Error : BOOL; (*Indicates that one or more tests are in error state*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
    END_VAR
END_FUNCTION_BLOCK
FUNCTION assertFalse : BOOL (* Returns TRUE if condition is NOT TRUE *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertFalse.md *)
    VAR_INPUT 
        condition : BOOL; (*Variable to test*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_BOOL : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_BOOL.md *)
    VAR_INPUT 
        act : BOOL; (*Variable to test*)
        xp : BOOL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_BYTE : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_WORD : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DWORD : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LWORD : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_LWORD.md *)
    VAR_INPUT 
        act : LWORD; (*Variable to test*)
        xp : LWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_SINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_USINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_INT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_UINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_UDINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_LINT.md *)
    VAR_INPUT 
        act : LINT; (*Variable to test*)
        xp : LINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_ULINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_ULINT.md *)
    VAR_INPUT 
        act : ULINT; (*Variable to test*)
        xp : ULINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_REAL : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LREAL : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_STRING : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_STRING.md *)
    VAR_INPUT 
        act : STRING; (*Variable to test*)
        xp : STRING; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_WSTRING : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_WSTRING.md *)
    VAR_INPUT 
        act : wstring; (*Variable to test*)
        xp : wstring; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_TIME : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LTIME : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_LTIME.md *)
    VAR_INPUT 
        act : LTIME; (*Variable to test*)
        xp : LTIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DATE : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LDATE : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_LDATE.md *)
    VAR_INPUT 
        act : LDATE; (*Variable to test*)
        xp : LDATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LDATE_AND_TIME : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_LDATE_AND_TIME.md *)
    VAR_INPUT 
        act : LDATE_AND_TIME; (*Variable to test*)
        xp : LDATE_AND_TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LTIME_OF_DAY : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertEqual_LTIME_OF_DAY.md *)
    VAR_INPUT 
        act : LTIME_OF_DAY; (*Variable to test*)
        xp : LTIME_OF_DAY; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_BOOL : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_BOOL.md *)
    VAR_INPUT 
        act : BOOL; (*Variable to test*)
        xp : BOOL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_BYTE : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_WORD : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DWORD : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LWORD : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_LWORD.md *)
    VAR_INPUT 
        act : LWORD; (*Variable to test*)
        xp : LWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_SINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_USINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_INT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_UINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_UDINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_LINT.md *)
    VAR_INPUT 
        act : LINT; (*Variable to test*)
        xp : LINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_ULINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_ULINT.md *)
    VAR_INPUT 
        act : ULINT; (*Variable to test*)
        xp : ULINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_REAL : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LREAL : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_STRING : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_STRING.md *)
    VAR_INPUT 
        act : STRING; (*Variable to test*)
        xp : STRING; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_WSTRING : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_WSTRING.md *)
    VAR_INPUT 
        act : wstring; (*Variable to test*)
        xp : wstring; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_TIME : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LTIME : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_LTIME.md *)
    VAR_INPUT 
        act : LTIME; (*Variable to test*)
        xp : LTIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DATE : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LDATE : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_LDATE.md *)
    VAR_INPUT 
        act : LDATE; (*Variable to test*)
        xp : LDATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LDATE_AND_TIME : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_LDATE_AND_TIME.md *)
    VAR_INPUT 
        act : LDATE_AND_TIME; (*Variable to test*)
        xp : LDATE_AND_TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LTIME_OF_DAY : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertNotEqual_LTIME_OF_DAY.md *)
    VAR_INPUT 
        act : LTIME_OF_DAY; (*Variable to test*)
        xp : LTIME_OF_DAY; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_BYTE : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_WORD : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DWORD : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LWORD : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_LWORD.md *)
    VAR_INPUT 
        act : LWORD; (*Variable to test*)
        xp : LWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_SINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_USINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_INT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_UINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_UDINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_LINT.md *)
    VAR_INPUT 
        act : LINT; (*Variable to test*)
        xp : LINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_ULINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_ULINT.md *)
    VAR_INPUT 
        act : ULINT; (*Variable to test*)
        xp : ULINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_REAL : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LREAL : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_TIME : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LTIME : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_LTIME.md *)
    VAR_INPUT 
        act : LTIME; (*Variable to test*)
        xp : LTIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DATE : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LDATE : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_LDATE.md *)
    VAR_INPUT 
        act : LDATE; (*Variable to test*)
        xp : LDATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DATE_AND_TIME : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LDATE_AND_TIME : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_LDATE_AND_TIME.md *)
    VAR_INPUT 
        act : LDATE_AND_TIME; (*Variable to test*)
        xp : LDATE_AND_TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_TIME_OF_DAY : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LTIME_OF_DAY : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreater_LTIME_OF_DAY.md *)
    VAR_INPUT 
        act : LTIME_OF_DAY; (*Variable to test*)
        xp : LTIME_OF_DAY; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_BYTE : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_WORD : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DWORD : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LWORD : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_LWORD.md *)
    VAR_INPUT 
        act : LWORD; (*Variable to test*)
        xp : LWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_SINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_USINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_INT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_UINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_UDINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_LINT.md *)
    VAR_INPUT 
        act : LINT; (*Variable to test*)
        xp : LINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_ULINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_ULINT.md *)
    VAR_INPUT 
        act : ULINT; (*Variable to test*)
        xp : ULINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_REAL : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LREAL : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_TIME : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LTIME : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_LTIME.md *)
    VAR_INPUT 
        act : LTIME; (*Variable to test*)
        xp : LTIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DATE : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LDATE : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_LDATE.md *)
    VAR_INPUT 
        act : LDATE; (*Variable to test*)
        xp : LDATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LDATE_AND_TIME : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_LDATE_AND_TIME.md *)
    VAR_INPUT 
        act : LDATE_AND_TIME; (*Variable to test*)
        xp : LDATE_AND_TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LTIME_OF_DAY : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertGreaterEqual_LTIME_OF_DAY.md *)
    VAR_INPUT 
        act : LTIME_OF_DAY; (*Variable to test*)
        xp : LTIME_OF_DAY; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_BYTE : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_WORD : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DWORD : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LWORD : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_LWORD.md *)
    VAR_INPUT 
        act : LWORD; (*Variable to test*)
        xp : LWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_SINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_USINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_INT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_UINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_UDINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_LINT.md *)
    VAR_INPUT 
        act : LINT; (*Variable to test*)
        xp : LINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_ULINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_ULINT.md *)
    VAR_INPUT 
        act : ULINT; (*Variable to test*)
        xp : ULINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_REAL : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LREAL : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_TIME : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LTIME : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_LTIME.md *)
    VAR_INPUT 
        act : LTIME; (*Variable to test*)
        xp : LTIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DATE : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LDATE : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_LDATE.md *)
    VAR_INPUT 
        act : LDATE; (*Variable to test*)
        xp : LDATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DATE_AND_TIME : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LDATE_AND_TIME : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_LDATE_AND_TIME.md *)
    VAR_INPUT 
        act : LDATE_AND_TIME; (*Variable to test*)
        xp : LDATE_AND_TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_TIME_OF_DAY : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LTIME_OF_DAY : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLess_LTIME_OF_DAY.md *)
    VAR_INPUT 
        act : LTIME_OF_DAY; (*Variable to test*)
        xp : LTIME_OF_DAY; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_BYTE : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_WORD : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DWORD : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LWORD : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_LWORD.md *)
    VAR_INPUT 
        act : LWORD; (*Variable to test*)
        xp : LWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_SINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_USINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_INT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_UINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_UDINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_LINT.md *)
    VAR_INPUT 
        act : LINT; (*Variable to test*)
        xp : LINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_ULINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_ULINT.md *)
    VAR_INPUT 
        act : ULINT; (*Variable to test*)
        xp : ULINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_REAL : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LREAL : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_TIME : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LTIME : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_LTIME.md *)
    VAR_INPUT 
        act : LTIME; (*Variable to test*)
        xp : LTIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DATE : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LDATE : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_LDATE.md *)
    VAR_INPUT 
        act : LDATE; (*Variable to test*)
        xp : LDATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LDATE_AND_TIME : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_LDATE_AND_TIME.md *)
    VAR_INPUT 
        act : LDATE_AND_TIME; (*Variable to test*)
        xp : LDATE_AND_TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LTIME_OF_DAY : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertLessEqual_LTIME_OF_DAY.md *)
    VAR_INPUT 
        act : LTIME_OF_DAY; (*Variable to test*)
        xp : LTIME_OF_DAY; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_BOOL : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_BOOL.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF BOOL; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF BOOL; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO BOOL; (*Pointer to the element of the array act*)
        pt2 : POINTER TO BOOL; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_BYTE : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_BYTE.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF BYTE; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF BYTE; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO BYTE; (*Pointer to the element of the array act*)
        pt2 : POINTER TO BYTE; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_WORD : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_WORD.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF WORD; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF WORD; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO WORD; (*Pointer to the element of the array act*)
        pt2 : POINTER TO WORD; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DWORD : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_DWORD.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF DWORD; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF DWORD; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO DWORD; (*Pointer to the element of the array act*)
        pt2 : POINTER TO DWORD; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LWORD : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LWORD.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF LWORD; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF LWORD; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO LWORD; (*Pointer to the element of the array act*)
        pt2 : POINTER TO LWORD; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_SINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_SINT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF SINT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF SINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO SINT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO SINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_USINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_USINT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF USINT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF USINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO USINT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO USINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_INT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_INT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF INT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF INT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO INT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO INT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_UINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_UINT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF UINT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF UINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO UINT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO UINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_DINT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF DINT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF DINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO DINT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO DINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_UDINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_UDINT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF UDINT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF UDINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO UDINT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO UDINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LINT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF LINT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF LINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO LINT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO LINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_ULINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_ULINT.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF ULINT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF ULINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO ULINT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO ULINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_REAL : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_REAL.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF REAL; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF REAL; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO REAL; (*Pointer to the element of the array act*)
        pt2 : POINTER TO REAL; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LREAL : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LREAL.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF LREAL; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF LREAL; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO LREAL; (*Pointer to the element of the array act*)
        pt2 : POINTER TO LREAL; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_STRING : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_STRING.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF STRING; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF STRING; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO STRING; (*Pointer to the element of the array act*)
        pt2 : POINTER TO STRING; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_WSTRING : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_WSTRING.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF wstring; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF wstring; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO wstring; (*Pointer to the element of the array act*)
        pt2 : POINTER TO wstring; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_TIME : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_TIME.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF TIME; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF TIME; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO TIME; (*Pointer to the element of the array act*)
        pt2 : POINTER TO TIME; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LTIME : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LTIME.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF LTIME; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF LTIME; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO LTIME; (*Pointer to the element of the array act*)
        pt2 : POINTER TO LTIME; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DATE : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_DATE.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF DATE; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF DATE; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO DATE; (*Pointer to the element of the array act*)
        pt2 : POINTER TO DATE; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LDATE : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LDATE.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF LDATE; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF LDATE; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO LDATE; (*Pointer to the element of the array act*)
        pt2 : POINTER TO LDATE; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF DT; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF DT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO DT; (*Pointer to the element of the array act*)
        pt2 : POINTER TO DT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LDATE_AND_TIME : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LDATE_AND_TIME.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF LDATE_AND_TIME; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF LDATE_AND_TIME; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO LDATE_AND_TIME; (*Pointer to the element of the array act*)
        pt2 : POINTER TO LDATE_AND_TIME; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF TOD; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF TOD; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO TOD; (*Pointer to the element of the array act*)
        pt2 : POINTER TO TOD; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LTIME_OF_DAY : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LTIME_OF_DAY.md *)
    VAR_INPUT 
        act : POINTER TO ARRAY[0..32000] OF LTIME_OF_DAY; (*Variable to test*)
        xp : POINTER TO ARRAY[0..32000] OF LTIME_OF_DAY; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : POINTER TO LTIME_OF_DAY; (*Pointer to the element of the array act*)
        pt2 : POINTER TO LTIME_OF_DAY; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertTrue : BOOL (* Returns TRUE if condition is TRUE *)(* https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertTrue.md *)
    VAR_INPUT 
        condition : BOOL; (*Variable to test*)
    END_VAR
END_FUNCTION
