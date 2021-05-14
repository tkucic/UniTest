FUNCTION assertArrayEqual_REAL
    (*https://github.com/tkucic/UniTest/blob/main/docs/docs/ns/UniTest/fc/assertArrayEqual_REAL.md*)
    vStop := (size / SIZEOF(act[0])) - 1;

    FOR i:=0 TO vStop DO
    	pt1 ACCESS ADR(act[i]);
    	pt2 ACCESS ADR(xp[i]);
    	IF pt1 <> pt2 THEN
    		assertArrayEqual_REAL := FALSE;
    		RETURN;
    	END_IF
    END_FOR
    (*If we reach here, all elements are equal*)
    assertArrayEqual_REAL := TRUE;
    RETURN;

END_FUNCTION
