PROGRAM _CYCLIC
    (*https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Library_tests/prg/test_assertGreaterEqual_LTIME.md*)
    (*Run the test cases*)
    TEST_CASE_1_SETUP();
    TEST_CASE_1_EXEC();

    TEST_CASE_2_SETUP();
    TEST_CASE_2_EXEC();

    TEST_CASE_3_SETUP();
    TEST_CASE_3_EXEC();

    (*Instantiate the test runner*)
    testRunner(
    	Id := 87,
    	Name := 'assertGreaterEqual_LTIME',
        RunTests := GVL.RunAll OR vRunAll,
    	ResetTests := GVL.ResetAll OR vResetAll,
    	TestCases:=vTestCases);

    (*Report the results to the collection global*)
    GVL.Results[testRunner.Id] := testRunner.Summary;
END_PROGRAM
