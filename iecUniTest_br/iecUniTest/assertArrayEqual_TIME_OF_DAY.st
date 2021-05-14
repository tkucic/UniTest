FUNCTION assertArrayEqual_TIME_OF_DAY
    (*https://github.com/tkucic/iecUniTest/blob/main/docs/docs/ns/iecUniTest/fc/assertArrayEqual_TIME_OF_DAY.md*)
    vStop := (size / SIZEOF(act[0])) - 1;

    FOR i:=0 TO vStop DO
    	pt1 ACCESS ADR(act[i]);
    	pt2 ACCESS ADR(xp[i]);
    	IF pt1 <> pt2 THEN
    		assertArrayEqual_TIME_OF_DAY := FALSE;
    		RETURN;
    	END_IF
    END_FOR
    (*If we reach here, all elements are equal*)
    assertArrayEqual_TIME_OF_DAY := TRUE;
    RETURN;

END_FUNCTION
