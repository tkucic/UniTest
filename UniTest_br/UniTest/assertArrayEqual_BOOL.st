FUNCTION assertArrayEqual_BOOL
    (*https://github.com/tkucic/UniTest/blob/main/docs/docs/ns/UniTest/fc/assertArrayEqual_BOOL.md*)
    vStop := (size / SIZEOF(act[0])) - 1;

    FOR i:=0 TO vStop DO
    	pt1 ACCESS ADR(act[i]);
    	pt2 ACCESS ADR(xp[i]);
    	IF pt1 <> pt2 THEN
    		assertArrayEqual_BOOL := FALSE;
    		RETURN;
    	END_IF
    END_FOR
    (*If we reach here, all elements are equal*)
    assertArrayEqual_BOOL := TRUE;
    RETURN;

END_FUNCTION
