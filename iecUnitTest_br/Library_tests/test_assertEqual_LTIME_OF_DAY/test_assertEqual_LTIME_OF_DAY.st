PROGRAM _CYCLIC
    (*https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Library_tests/prg/test_assertEqual_LTIME_OF_DAY.md*)
    (*Run the test cases*)
    TEST_CASE_1_SETUP();
    TEST_CASE_1_EXEC();

    TEST_CASE_2_SETUP();
    TEST_CASE_2_EXEC();

    (*Instantiate the test runner*)
    testRunner(
    	Id := 24,
    	Name := 'assertEqual_LTIME_OF_DAY',
        RunTests := GVL.RunAll OR vRunAll,
    	ResetTests := GVL.ResetAll OR vResetAll,
    	TestCases:=vTestCases);

    (*Report the results to the collection global*)
    GVL.Results[testRunner.Id] := testRunner.Summary;
END_PROGRAM
