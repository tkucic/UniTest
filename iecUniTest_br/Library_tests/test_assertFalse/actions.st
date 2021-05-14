ACTION TEST_CASE_1_SETUP :
    IF vTestCases[0].state = utTestCaseStates.ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[0].id := 1;
    	vTestCases[0].desc[0] := 'RETURNS TRUE WHEN CONDITION FALSE';
        vTestCases[0].desc[1] := 'Tests if the function returns True if the condition is FALSE';
    	vTestCases[0].desc[2] := 'PASS IF: Return value is TRUE';
    	
    	(*Setup needed variables*)
    	vTestCase1_act := FALSE;
    END_IF
END_ACTION
ACTION TEST_CASE_1_EXEC :
    IF vTestCases[0].state = utTestCaseStates.ut_RUNNING THEN
    	(*Run the test case*)
    	IF assertFalse(vTestCase1_act) THEN
    		vTestCases[0].state := utTestCaseStates.ut_PASSED;
    		vTestCases[0].msg := 'Condition was False and function returned TRUE -> PASS';
    	ELSE
    		vTestCases[0].state := utTestCaseStates.ut_FAILED;
    		vTestCases[0].msg := 'Condition was False and function returned FALSE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_2_SETUP :
    IF vTestCases[1].state = utTestCaseStates.ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[1].id := 2;
        vTestCases[1].desc[0] := 'RETURNS FALSE WHEN CONDITION IS TRUE';
        vTestCases[1].desc[1] := 'Tests if the function returns False if the condition is TRUE';
    	vTestCases[1].desc[2] := 'PASS IF: Return value is FALSE';
    	
    	(*Setup needed variables*)
    	vTestCase2_act := TRUE;
    END_IF
END_ACTION
ACTION TEST_CASE_2_EXEC :
    IF vTestCases[1].state = utTestCaseStates.ut_RUNNING THEN
    	(*Run the test case*)
    	IF NOT assertFalse(vTestCase2_act) THEN
    		vTestCases[1].state := utTestCaseStates.ut_PASSED;
    		vTestCases[1].msg := 'Condition was True and function returned FALSE -> PASS';
    	ELSE
    		vTestCases[1].state := utTestCaseStates.ut_FAILED;
    		vTestCases[1].msg := 'Condition was True and function returned TRUE -> FAIL';
    	END_IF
    END_IF
END_ACTION
