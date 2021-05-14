FUNCTION_BLOCK utTestReporter
    (*https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fb/utTestReporter.md*)
    (*Reset totals*)
    NrPousUnderTest := 0;
    NrOfTests := 0;
    NrTestsPassed := 0;
    NrTestsFailed := 0;
    PassRate := 0;
    TestsInProgress := FALSE;
    Error := FALSE;

    (*Count totals*)
    FOR i:=0 TO 500 DO
    	IF Results[i].Id > 0 THEN
    		(*Count existing POUs under test*)
    		NrPousUnderTest := NrPousUnderTest + 1;
    		(*Count the pass rate. Needs to be divided in the end by the number of total tests*)
    		PassRate := PassRate + Results[i].PassRate;
    		(*Count the number of tests*)
    		NrOfTests := NrOfTests + Results[i].TotalTests;
    		(*Count the number of tests passed*)
    		NrTestsPassed := NrTestsPassed + Results[i].TestsPassed;
    		(*Count the number of tests failed*)
    		NrTestsFailed := NrTestsFailed + Results[i].TestsFailed;
    		
    		(*Indicators*)
    		IF Results[i].TestsRunning THEN
    			TestsInProgress := TRUE;
    		END_IF
    		IF Results[i].Error <> ut_NO_ERROR THEN
    			Error := TRUE;
    		END_IF
    	END_IF
    END_FOR
    PassRate := PassRate / NrPousUnderTest;
END_FUNCTION_BLOCK
