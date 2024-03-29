FUNCTION assertArrayEqual_STRING
    (*https://github.com/tkucic/UniTest/blob/main/docs/docs/ns/UniTest/fc/assertArrayEqual_STRING.md*)
    vStop := (size / SIZEOF(act[0])) - 1;

    FOR i:=0 TO vStop DO
    	pt1 ACCESS ADR(act[i]);
    	pt2 ACCESS ADR(xp[i]);
    	IF pt1 <> pt2 THEN
    		assertArrayEqual_STRING := FALSE;
    		RETURN;
    	END_IF
    END_FOR
    (*If we reach here, all elements are equal*)
    assertArrayEqual_STRING := TRUE;
    RETURN;

END_FUNCTION
