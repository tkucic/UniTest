PROGRAM _CYCLIC
    (*https://github.com/tkucic/UniTest/blob/main/docs/docs/ns/Library_tests/prg/test_assertGreaterEqual_DINT.md*)
    (*Run the test cases*)
    TEST_CASE_1_SETUP;
    TEST_CASE_1_EXEC;

    TEST_CASE_2_SETUP;
    TEST_CASE_2_EXEC;

    TEST_CASE_3_SETUP;
    TEST_CASE_3_EXEC;

    (*Instantiate the test runner*)
    testRunner(
    	Id := 80,
    	Name := 'assertGreaterEqual_DINT',
        RunTests := gRunAll OR vRunAll,
    	ResetTests := gResetAll OR vResetAll,
    	TestCases:=vTestCases);

    (*Report the results to the collection global*)
    gResults[testRunner.Id] := testRunner.Summary;
END_PROGRAM
