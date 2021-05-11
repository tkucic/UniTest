FUNCTION assertArrayEqual_LTIME
    (*https://github.com/tkucic/iecUnitTest/blob/main/docs/docs/ns/Global/fc/assertArrayEqual_LTIME.md*)
    vStop := (size / SIZEOF(act^[0])) - 1;

    FOR i:=0 TO vStop DO
    	pt1 := ADR(act^[i]);
    	pt2 := ADR(xp^[i]);
    	IF pt1^ <> pt2^ THEN
    		assertArrayEqual_LTIME := FALSE;
    		RETURN;
    	END_IF
    END_FOR
    (*If we reach here, all elements are equal*)
    assertArrayEqual_LTIME := TRUE;
    RETURN;

END_FUNCTION
