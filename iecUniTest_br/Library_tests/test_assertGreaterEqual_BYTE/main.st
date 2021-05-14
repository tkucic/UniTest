PROGRAM _CYCLIC
    (*https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/Library_tests/prg/test_assertGreaterEqual_BYTE.md*)
    (*Run the test cases*)
    TEST_CASE_1_SETUP;
    TEST_CASE_1_EXEC;

    TEST_CASE_2_SETUP;
    TEST_CASE_2_EXEC;

    TEST_CASE_3_SETUP;
    TEST_CASE_3_EXEC;

    (*Instantiate the test runner*)
    testRunner(
    	Id := 72,
    	Name := 'assertGreaterEqual_BYTE',
        RunTests := gRunAll OR vRunAll,
    	ResetTests := gResetAll OR vResetAll,
    	TestCases:=vTestCases);

    (*Report the results to the collection global*)
    gResults[testRunner.Id] := testRunner.Summary;
END_PROGRAM
