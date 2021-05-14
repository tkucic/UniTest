ACTION TEST_CASE_1_SETUP :
    IF vTestCases[0].state = utTestCaseStates.SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[0].id := 1;
    	vTestCases[0].desc[0] := 'RETURNS TRUE WHEN PARAMETERS NOT EQUAL';
        vTestCases[0].desc[1] := 'Tests if the function returns True if the passed in parameters do not hold the same value';
    	vTestCases[0].desc[2] := 'PASS IF: Return value is TRUE';
    	
    	(*Setup needed variables*)
    	vTestCase1_act := REAL_TO_TIME(115.4);
    	vTestCase1_xp := REAL_TO_TIME(-85.4);
    END_IF
END_ACTION
ACTION TEST_CASE_1_EXEC :
    IF vTestCases[0].state = utTestCaseStates.RUNNING THEN
    	(*Run the test case*)
    	IF assertNotEqual_TIME(vTestCase1_act, vTestCase1_xp) THEN
    		vTestCases[0].state := utTestCaseStates.PASSED;
    		vTestCases[0].msg := 'Passed parameters were not equal and function returned TRUE -> PASS';
    	ELSE
    		vTestCases[0].state := utTestCaseStates.FAILED;
    		vTestCases[0].msg := 'Passed parameters were not equal and function returned FALSE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_2_SETUP :
    IF vTestCases[1].state = utTestCaseStates.SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[1].id := 2;
    	vTestCases[1].desc[0] := 'RETURNS FALSE WHEN PARAMETERS EQUAL';
        vTestCases[1].desc[1] := 'Tests if the function returns False if the passed in parameters hold the same value';
    	vTestCases[1].desc[2] := 'PASS IF: Return value is FALSE';
    	
    	(*Setup needed variables*)
    	vTestCase2_act := REAL_TO_TIME(115.4);
    	vTestCase2_xp := REAL_TO_TIME(115.4);
    END_IF
END_ACTION
ACTION TEST_CASE_2_EXEC :
    IF vTestCases[1].state = utTestCaseStates.RUNNING THEN
    	(*Run the test case*)
    	IF NOT assertNotEqual_TIME(vTestCase2_act, vTestCase2_xp) THEN
    		vTestCases[1].state := utTestCaseStates.PASSED;
    		vTestCases[1].msg := 'Passed parameters were equal and function returned FALSE -> PASS';
    	ELSE
    		vTestCases[1].state := utTestCaseStates.FAILED;
    		vTestCases[1].msg := 'Passed parameters were equal and function returned TRUE -> FAIL';
    	END_IF
    END_IF
END_ACTION
