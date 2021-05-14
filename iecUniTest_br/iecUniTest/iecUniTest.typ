TYPE
    utTestCase :    STRUCT
        id : UINT; (*Identifier of the test*)
        desc : ARRAY[0..4] OF STRING[255]; (*Description of the test case*)
        state : utTestCaseStates; (*State of the test*)
        msg : STRING[255]; (*Result of the test*)
    END_STRUCT;
    utTestCaseStates :
    (
        ut_SETUP := 0, (**)
        ut_RUNNING := 1, (**)
        ut_PASSED := 2, (**)
        ut_FAILED := 3 (**)
    );        
    utTestCaseSummary :    STRUCT
        Id : UINT; (*Id of the test object. Must be unique number*)
        Name : STRING[250]; (*Name of the test object*)
        TotalTests : UINT; (*Total number of tests existing*)
        TestsPassed : UINT; (*Number of tests passed*)
        TestsFailed : UINT; (*Number of tests failed*)
        PassRate : REAL; (*Pass rate % of the tests*)
        TestsRunning : BOOL; (*One or more tests are running*)
        Error : utErrors; (*Error code if error occured*)
    END_STRUCT;
    utErrors :
    (
        ut_NO_ERROR := 0, (**)
        ut_NO_TEST_CASES_DEFINED := 100 (**)
    );        
END_TYPE