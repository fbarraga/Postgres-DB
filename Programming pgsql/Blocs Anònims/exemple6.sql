/* EXEMPLE 6. CONDICIONAL IF ELSE */ 

DO $$
DECLARE
  edat NUMERIC := 18;

BEGIN
  
  IF edat >= 18 THEN
     RAISE NOTICE 'Ets major de edat.';
  ELSE 
     RAISE NOTICE 'Ets peque.';
  END IF;

END $$;
