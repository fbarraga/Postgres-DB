/* EXEMPLE 2. AMB FOR. En aquest cas OBRIR/FETCH i TANCAR cursor es fa automatic***/
/* Database: HR */

DO $$
DECLARE
 
 -- Declarar el cursor (qualsevol SELECT és acceptada)

 cur_employees CURSOR FOR 
      SELECT employee_id, first_name, salary
        FROM employees
       WHERE salary > 6000
       ORDER BY salary;
 
BEGIN
  
  FOR v_curEmployees_fila IN cur_employees LOOP
     RAISE NOTICE '% % % ',v_curEmployees_fila.employee_id             ,v_curEmployees_fila.first_name , v_curEmployees_fila.salary;
  END LOOP;  
  
  --Acabat el FOR el cursor s'ha tancat 

END $$;