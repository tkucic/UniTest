ACTION TEST_CASE_1_EXEC :
    IF vTestCases[0].state = ut_RUNNING THEN
    	(*Run the test case*)
    	IF assertArrayEqual_LREAL(ADR(vTestCase1_act), ADR(vTestCase1_xp), SIZEOF(vTestCase1_act)) THEN
    		vTestCases[0].state := ut_PASSED;
    		vTestCases[0].msg := 'Arrays were equal and function returned TRUE -> PASS';
    	ELSE
    		vTestCases[0].state := ut_FAILED;
    		vTestCases[0].msg := 'Arrays were equal and function returned FALSE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_2_SETUP :
    IF vTestCases[1].state = ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[1].id := 2;
    	vTestCases[1].desc[0] := 'RETURNS FALSE WHEN ARRAYS NOT EQUAL';
        vTestCases[1].desc[1] := 'Tests if the function returns False if the passed in arrays are not identical';
    	vTestCases[1].desc[2] := 'PASS IF: Return value is FALSE';
    	
    	(*Setup needed variables*)
    	FOR j:=0 TO 70 DO
    		vTestCase2_act[j] := UINT_TO_LREAL(35 * BOOL_TO_UINT(j MOD 2 = 0));
    		vTestCase2_xp[j] := UINT_TO_LREAL(35 * BOOL_TO_UINT(j MOD 2 <> 0));
    	END_FOR
    END_IF
END_ACTION
ACTION TEST_CASE_2_EXEC :
    IF vTestCases[1].state = ut_RUNNING THEN
    	(*Run the test case*)
    	IF NOT assertArrayEqual_LREAL(ADR(vTestCase2_act), ADR(vTestCase2_xp), SIZEOF(vTestCase2_act)) THEN
    		vTestCases[1].state := ut_PASSED;
    		vTestCases[1].msg := 'Arrays were not equal and function returned FALSE -> PASS';
    	ELSE
    		vTestCases[1].state := ut_FAILED;
    		vTestCases[1].msg := 'Arrays were not equal and function returned TRUE -> FAIL';
    	END_IF
    END_IF
END_ACTION
ACTION TEST_CASE_1_SETUP :
    IF vTestCases[0].state = ut_SETUP THEN
    	(*Setup the test case information*)
    	vTestCases[0].id := 1;
    	vTestCases[0].desc[0] := 'RETURNS TRUE WHEN ARRAYS EQUAL';
        vTestCases[0].desc[1] := 'Tests if the function returns True if the passed in arrays are identical';
    	vTestCases[0].desc[2] := 'PASS IF: Return value is TRUE';
    	
    	(*Setup needed variables*)
    	FOR i:=0 TO 70 DO
    		vTestCase1_act[i] := UINT_TO_LREAL(35 * BOOL_TO_UINT(i MOD 2 = 0));
    		vTestCase1_xp[i] := UINT_TO_LREAL(35 * BOOL_TO_UINT(i MOD 2 = 0));
    	END_FOR
    END_IF
END_ACTION
