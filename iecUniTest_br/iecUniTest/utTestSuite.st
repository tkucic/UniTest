FUNCTION_BLOCK utTestSuite
    (*https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fb/utTestSuite.md*)
    (*Copy name of object under test*)
    Summary.Id := Id;
    Summary.Name := Name;

    (*Handle commands to start*)
    runCmd(CLK:=RunTests);
    resetCmd(CLK:=ResetTests);

    (*Calculate total number of tests and other flags*)
    Summary.TotalTests := 0;
    Summary.TestsPassed := 0;
    Summary.TestsFailed := 0; 
    Summary.TestsRunning := FALSE;
    FOR i:=0 TO 20 DO
    	IF TestCases[i].id > 0 THEN
    		Summary.TotalTests := Summary.TotalTests + 1;
    	END_IF
    	(*Start the test if the Run command is true, the test exists and it is in setup state*)
    	IF TestCases[i].id > 0 AND TestCases[i].state = ut_SETUP AND runCmd.Q THEN
    		TestCases[i].state := ut_RUNNING;
    	END_IF
    	
    	(*Reset the test if the test exists and its ut_PASSED or ut_FAILED*)
    	IF TestCases[i].id > 0 AND TestCases[i].state > ut_RUNNING AND resetCmd.Q THEN
    		TestCases[i].state := ut_SETUP;
    	END_IF
    	
    	(*Check the states of the test cases*)
    	IF TestCases[i].state = ut_RUNNING THEN
    		Summary.TestsRunning := TRUE;
    	END_IF
    	IF TestCases[i].state = ut_PASSED THEN
    		Summary.TestsPassed := Summary.TestsPassed + 1;
    	END_IF
    	IF TestCases[i].state = ut_FAILED THEN
    		Summary.TestsFailed := Summary.TestsFailed + 1;
    	END_IF
    END_FOR

    (*Error if number of tests defined is 0*)
    IF Summary.TotalTests = 0 THEN
    	Summary.Error := ut_NO_TEST_CASES_DEFINED;
    	RETURN;
    END_IF

    (*Calculate the pass rate if all tests have finished*)
    IF NOT Summary.TestsRunning THEN
    	Summary.PassRate := (Summary.TestsPassed / UINT_TO_REAL(Summary.TotalTests)) * 100.0;
    ELSE
    	Summary.PassRate := 0;
    END_IF
END_FUNCTION_BLOCK
