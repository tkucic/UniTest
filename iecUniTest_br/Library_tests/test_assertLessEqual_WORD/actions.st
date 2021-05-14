ACTION TEST_CASE_1_EXEC :
    IF vTestCases[0].state = utTestCaseStates.ut_RUNNING THEN
    	(*Run the test case*)
    	IF assertLessEqual_WORD(vTestCase1_act, vTestCase1_xp) THEN
    		vTestCases[0].state := utTestCaseStates.ut_PASSED;
    		vTestCases[0].msg := 'Parameter act was less than xp and function returned TRUE -> PASS';
    	ELSE
    		vTestCases[0].state := utTestCaseStates.ut_FAILED;
    		vTestCases[0].msg := 'Parameter act was less than xp and function returned FALSE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_2_SETUP :
    IF vTestCases[1].state = utTestCaseStates.ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[1].id := 2;
        vTestCases[1].desc[0] := 'RETURNS TRUE WHEN PARAMETER ACT EQUAL TO XP';
        vTestCases[1].desc[1] := 'Tests if the function returns True if the parameter act is equal to parameter xp';
    	vTestCases[1].desc[2] := 'PASS IF: Return value is TRUE';
    	
    	(*Setup needed variables*)
    	vTestCase2_act := REAL_TO_WORD(115.4);
    	vTestCase2_xp := REAL_TO_WORD(115.4);
    END_IF
END_ACTION
ACTION TEST_CASE_2_EXEC :
    IF vTestCases[1].state = utTestCaseStates.ut_RUNNING THEN
    	(*Run the test case*)
    	IF assertLessEqual_WORD(vTestCase2_act, vTestCase2_xp) THEN
    		vTestCases[1].state := utTestCaseStates.ut_PASSED;
    		vTestCases[1].msg := 'Parameter act was equal to xp and function returned TRUE -> PASS';
    	ELSE
    		vTestCases[1].state := utTestCaseStates.ut_FAILED;
    		vTestCases[1].msg := 'Parameter act was equal to xp and function returned FALSE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_1_SETUP :
    IF vTestCases[0].state = utTestCaseStates.ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[0].id := 1;
    	vTestCases[0].desc[0] := 'RETURNS TRUE WHEN PARAMETER ACT LESS THAN XP';
        vTestCases[0].desc[1] := 'Tests if the function returns True if the parameter act is less than parameter xp';
    	vTestCases[0].desc[2] := 'PASS IF: Return value is TRUE';
    	
    	(*Setup needed variables*)
    	vTestCase1_act := REAL_TO_WORD(85.4);
    	vTestCase1_xp := REAL_TO_WORD(115.4);
    END_IF
END_ACTION
ACTION TEST_CASE_3_SETUP :
    IF vTestCases[2].state = utTestCaseStates.ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[2].id := 3;
        vTestCases[2].desc[0] := 'RETURNS FALSE WHEN PARAMETER ACT GREATER THAN XP';
        vTestCases[2].desc[1] := 'Tests if the function returns False if the parameter act is greater than parameter xp';
    	vTestCases[2].desc[2] := 'PASS IF: Return value is FALSE';
    	
    	(*Setup needed variables*)
    	vTestCase3_act := REAL_TO_WORD(115.4);
    	vTestCase3_xp := REAL_TO_WORD(85.4);
    END_IF
END_ACTION
ACTION TEST_CASE_3_EXEC :
    IF vTestCases[2].state = utTestCaseStates.ut_RUNNING THEN
    	(*Run the test case*)
    	IF NOT assertLessEqual_WORD(vTestCase3_act, vTestCase3_xp) THEN
    		vTestCases[2].state := utTestCaseStates.ut_PASSED;
    		vTestCases[2].msg := 'Parameter act was greater than xp and function returned FALSE -> PASS';
    	ELSE
    		vTestCases[2].state := utTestCaseStates.ut_FAILED;
    		vTestCases[2].msg := 'Parameter act was greater than xp and function returned TRUE -> FAIL';
    	END_IF
    END_IF
END_ACTION
