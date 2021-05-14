FUNCTION_BLOCK utTestSuite (* Enables running, resetting and reporting for tests cases defined of a POU under test *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fb/utTestSuite.md *)
    VAR_INPUT 
        Id : UINT; (*Id of the test object. Must be unique number*)
        Name : STRING[250]; (*Name of the test object*)
        RunTests : BOOL; (*Starts all tests that are in setup state. Sets state to running.*)
        ResetTests : BOOL; (*Sets state to setup on test cases that are ut_PASSED or ut_FAILED.*)
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
FUNCTION_BLOCK utTestReporter (* Provides feedback on the status of tests on a system scale *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fb/utTestReporter.md *)
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
FUNCTION assertFalse : BOOL (* Returns TRUE if condition is NOT TRUE *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertFalse.md *)
    VAR_INPUT 
        condition : BOOL; (*Variable to test*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_BOOL : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_BOOL.md *)
    VAR_INPUT 
        act : BOOL; (*Variable to test*)
        xp : BOOL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_BYTE : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_WORD : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DWORD : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_SINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_USINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_INT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_UINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_UDINT : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_REAL : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_LREAL : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_STRING : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_STRING.md *)
    VAR_INPUT 
        act : STRING; (*Variable to test*)
        xp : STRING; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_WSTRING : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_WSTRING.md *)
    VAR_INPUT 
        act : WSTRING; (*Variable to test*)
        xp : WSTRING; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_TIME : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DATE : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act = xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_BOOL : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_BOOL.md *)
    VAR_INPUT 
        act : BOOL; (*Variable to test*)
        xp : BOOL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_BYTE : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_WORD : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DWORD : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_SINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_USINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_INT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_UINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_UDINT : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_REAL : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_LREAL : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_STRING : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_STRING.md *)
    VAR_INPUT 
        act : STRING; (*Variable to test*)
        xp : STRING; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_WSTRING : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_WSTRING.md *)
    VAR_INPUT 
        act : WSTRING; (*Variable to test*)
        xp : WSTRING; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_TIME : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DATE : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertNotEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act <> xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertNotEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_BYTE : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_WORD : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DWORD : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_SINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_USINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_INT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_UINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_UDINT : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_REAL : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_LREAL : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_TIME : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DATE : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_DATE_AND_TIME : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreater_TIME_OF_DAY : BOOL (* Returns TRUE if act > xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreater_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_BYTE : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_WORD : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DWORD : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_SINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_USINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_INT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_UINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_UDINT : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_REAL : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_LREAL : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_TIME : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DATE : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertGreaterEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act >= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertGreaterEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_BYTE : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_WORD : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DWORD : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_SINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_USINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_INT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_UINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_UDINT : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_REAL : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_LREAL : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_TIME : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DATE : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_DATE_AND_TIME : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLess_TIME_OF_DAY : BOOL (* Returns TRUE if act < xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLess_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_BYTE : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_BYTE.md *)
    VAR_INPUT 
        act : BYTE; (*Variable to test*)
        xp : BYTE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_WORD : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_WORD.md *)
    VAR_INPUT 
        act : WORD; (*Variable to test*)
        xp : WORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DWORD : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_DWORD.md *)
    VAR_INPUT 
        act : DWORD; (*Variable to test*)
        xp : DWORD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_SINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_SINT.md *)
    VAR_INPUT 
        act : SINT; (*Variable to test*)
        xp : SINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_USINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_USINT.md *)
    VAR_INPUT 
        act : USINT; (*Variable to test*)
        xp : USINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_INT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_INT.md *)
    VAR_INPUT 
        act : INT; (*Variable to test*)
        xp : INT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_UINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_UINT.md *)
    VAR_INPUT 
        act : UINT; (*Variable to test*)
        xp : UINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_DINT.md *)
    VAR_INPUT 
        act : DINT; (*Variable to test*)
        xp : DINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_UDINT : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_UDINT.md *)
    VAR_INPUT 
        act : UDINT; (*Variable to test*)
        xp : UDINT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_REAL : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_REAL.md *)
    VAR_INPUT 
        act : REAL; (*Variable to test*)
        xp : REAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_LREAL : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_LREAL.md *)
    VAR_INPUT 
        act : LREAL; (*Variable to test*)
        xp : LREAL; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_TIME : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_TIME.md *)
    VAR_INPUT 
        act : TIME; (*Variable to test*)
        xp : TIME; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DATE : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_DATE.md *)
    VAR_INPUT 
        act : DATE; (*Variable to test*)
        xp : DATE; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : DT; (*Variable to test*)
        xp : DT; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertLessEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act <= xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertLessEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : TOD; (*Variable to test*)
        xp : TOD; (*Variable to test against*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_BOOL : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_BOOL.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF BOOL; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF BOOL; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO BOOL; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO BOOL; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_BYTE : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_BYTE.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF BYTE; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF BYTE; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO BYTE; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO BYTE; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_WORD : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_WORD.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF WORD; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF WORD; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO WORD; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO WORD; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DWORD : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_DWORD.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF DWORD; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF DWORD; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO DWORD; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO DWORD; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_SINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_SINT.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF SINT; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF SINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO SINT; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO SINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_USINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_USINT.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF USINT; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF USINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO USINT; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO USINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_INT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_INT.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF INT; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF INT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO INT; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO INT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_UINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_UINT.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF UINT; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF UINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO UINT; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO UINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_DINT.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF DINT; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF DINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO DINT; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO DINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_UDINT : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_UDINT.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF UDINT; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF UDINT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO UDINT; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO UDINT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_REAL : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_REAL.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF REAL; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF REAL; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO REAL; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO REAL; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_LREAL : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_LREAL.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF LREAL; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF LREAL; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO LREAL; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO LREAL; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_STRING : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_STRING.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF STRING; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF STRING; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO STRING; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO STRING; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_WSTRING : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_WSTRING.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF WSTRING; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF WSTRING; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO WSTRING; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO WSTRING; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_TIME : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_TIME.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF TIME; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF TIME; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO TIME; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO TIME; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DATE : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_DATE.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF DATE; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF DATE; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO DATE; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO DATE; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_DATE_AND_TIME : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_DATE_AND_TIME.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF DT; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF DT; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO DT; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO DT; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertArrayEqual_TIME_OF_DAY : BOOL (* Returns TRUE if act == xp. *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_TIME_OF_DAY.md *)
    VAR_INPUT 
        act : REFERENCE TO ARRAY[0..32000] OF TOD; (*Variable to test*)
        xp : REFERENCE TO ARRAY[0..32000] OF TOD; (*Variable to test against*)
        size : UINT; (*Size of the array (ADR(act))*)
    END_VAR
    VAR 
        i : UINT; (*Iterator variable*)
        vStop : UINT; (*Size of the array / End of iteration*)
        pt1 : REFERENCE TO TOD; (*Pointer to the element of the array act*)
        pt2 : REFERENCE TO TOD; (*Pointer to the element of the array xp*)
    END_VAR
END_FUNCTION
FUNCTION assertTrue : BOOL (* Returns TRUE if condition is TRUE *)(* https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertTrue.md *)
    VAR_INPUT 
        condition : BOOL; (*Variable to test*)
    END_VAR
END_FUNCTION
