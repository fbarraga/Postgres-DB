/* EXEMPLE 9. WHILE */

DO $$
DECLARE
      c NUMERIC :=1;  
BEGIN  
      WHILE c <= 10 LOOP  
        RAISE NOTICE '%', c;   
        c := c + 1;  
      END LOOP;  
END $$;  
