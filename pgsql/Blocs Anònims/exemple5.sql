/* EXEMPLE 5. CONDICIONAL IF SIMPLE */ 

DO $$
DECLARE
  edat NUMERIC := 18;

BEGIN
  
  IF edat >= 18 THEN
     RAISE NOTICE 'Ets major de edat.';
  END IF;

END $$;
