FUNCTION assertArrayEqual_WORD
    (*https://github.com/tkucic/UniTest/blob/main/docs/docs/ns/UniTest/fc/assertArrayEqual_WORD.md*)
    vStop := (size / SIZEOF(act[0])) - 1;

    FOR i:=0 TO vStop DO
    	pt1 ACCESS ADR(act[i]);
    	pt2 ACCESS ADR(xp[i]);
    	IF pt1 <> pt2 THEN
    		assertArrayEqual_WORD := FALSE;
    		RETURN;
    	END_IF
    END_FOR
    (*If we reach here, all elements are equal*)
    assertArrayEqual_WORD := TRUE;
    RETURN;

END_FUNCTION
