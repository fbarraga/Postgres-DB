/* EXEMPLE 8. LOOP */

DO $$
DECLARE  
      c NUMERIC := 1;  
BEGIN  
      LOOP  
            RAISE NOTICE '%', c;  
            EXIT WHEN c = 10;  -- condició de sortida amb EXIT
            c := c + 1;  
      END LOOP;  
END $$;  
