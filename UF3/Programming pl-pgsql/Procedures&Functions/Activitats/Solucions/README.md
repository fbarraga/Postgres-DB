# Apartat 1: Procediments.

## Exercici 1. (BD:HR)
Fes un procediment emmagatzemat que rebi com a paràmetres les dades d’un departament i el doni d’alta.  

<center>
<details>
    <summary>Solució</summary>  

```sql
CREATE OR REPLACE FUNCTION NewDepartment(dept_id DEPARMENTS.DEPARMENT_ID%TYPE)



## Exercici 2.(BD:HR)
Fes un procediment emmagatzemat que donat un codi de departament, l’elimini. En cas que es produeixi un error al eliminar-lo que avisi per consola amb el següent missatge:  
Error: No es pot eliminar el departament indicat.

<center>
<details>
    <summary>Solució</summary>  

```sql
CREATE OR REPLACE FUNCTION DeleteDepartment(dept_id DEPARTMENTS.DEPARTMENT_ID%TYPE) RETURNS void 
LANGUAGE plpgsql AS $$
BEGIN
 IF COALESCE(dept_id,0) <> 0 THEN
   DELETE FROM DEPARTMENTS WHERE DEPARTMENT_ID = dept_id;
 END IF;
EXCEPTION
 WHEN OTHERS THEN
    raise exception 'No es pot eliminar el departament indicat';
END;$$;

do $$
DECLARE 
   dept_id DEPARTMENTS.DEPARTMENT_ID%TYPE:= 170;
   x char;
BEGIN
  select DELETEDEPARTMENT(dept_id) into x;
END;$$;
```
</details>
</br>
</center>



## Exercici 3.(BD:HR)
Fes un procediment emmagatzemat que li passis un codi d’empleat i un salari, i li assigni a aquell empleat el nou salari indicat. En cas de no trobar l’empleat que avisi amb un missatge.

<center>
<details>
    <summary>Solució</summary>  

```sql
CREATE OR REPLACE FUNCTION AssignSalary(empl_id EMPLOYEES.EMPLOYEE_ID%TYPE, 
sal EMPLOYEES.SALARY%TYPE) RETURNS void
LANGUAGE plpgsql AS $$
BEGIN
 IF coalesce(empl_id,0) <> 0 THEN
   UPDATE EMPLOYEES SET SALARY = sal WHERE EMPLOYEE_ID = empl_id;
 END IF;
EXCEPTION
 WHEN OTHERS THEN
    raise 'No es pot actualitzar el salari indicat';
END;$$;

SELECT ASSIGNSALARY(104, 12000);
```
</details>
</br>
</center>

## Exercici 4.(BD:HR)
Fes un procediment emmagatzemat que rebi com a paràmetres un número de departament, un import i incrementi el salari de tots els empleats del departament indicat, amb el salari que tenien més l’import indicat.

<center>
<details>
    <summary>Solució</summary>  

```sql
CREATE OR REPLACE FUNCTION AssignSalary(empl_id EMPLOYEES.EMPLOYEE_ID%TYPE, 
sal EMPLOYEES.SALARY%TYPE) 
LANGUAGE plpgsql AS $$
DECLARE
   empleat EMPLOYEES.EMPLOYEE_ID%TYPE;
BEGIN
 IF COALESCE(empl_id,0) <> 0 THEN
   SELECT employee_id 
   INTO empleat
   FROM EMPLOYEES 
   WHERE employee_id = empl_id;
   UPDATE EMPLOYEES SET SALARY = SALARY + sal WHERE EMPLOYEE_ID = empl_id;
 END IF;
EXCEPTION
  WHEN OTHERS THEN
     RAISE 'L''empleat % no existeix', empl_id;
END;$$;

SELECT ASSIGNSALARY(104, 10000);
```
</details>
</br>
</center>

# Apartat 2. Funcions.

## Exercici 5.
Programar una funció que rebi com a paràmetre una nota (suposarem que l’entrada serà correcte entre 0 i 10) i retorni la seva nota qualitativa:
•	Insuficient: de 0 a 4,99
•	Suficient: de 5 a 5,99
•	Bé: de 6 a 6,99
•	Notable: de 7 a 8,99
•	Excel·lent: de 9 a 9,99
•	Matrícula d'honor: 10

<center>
<details>
    <summary>Solució</summary>  

```sql
CREATE OR REPLACE FUNCTION NotaFinal(nota NUMERIC) RETURNS VARCHAR 
LANGUAGE plpgsql AS $$
DECLARE
resultat VARCHAR(15);
BEGIN
   CASE 
   WHEN nota <5 THEN
      resultat:='Insuficient';
   WHEN nota >=5 AND nota < 6 THEN
      resultat:='Suficient';
   WHEN nota >=6 AND nota < 7 THEN
      resultat:='Be';
   WHEN nota >=7 AND nota < 9 THEN
      resultat:='Notable';
   WHEN nota >=9 AND nota < 10 THEN
      resultat:= 'Excel.lent';
   WHEN nota = 10 THEN
      resultat:='Matricula d''honor';
   ELSE 
      resultat:='Error: La nota ha d''estar entre 0 i 10';
   END CASE;
 RETURN resultat;
END;$$;

do $$
BEGIN
   raise notice 'Nota: %', NOTAFINAL(6);
END;$$;
```
</details>
</br>
</center>

## Exercici 6
Crear una funció que rebi com a paràmetre un salari i que calculi el valor de la comissió en funció d’aquest salari.
- Si el salari és menor o igual a 3000, la comissió que s'aplicarà serà d'un 15%.
- Si la quantitat es troba entre 3001 i 7000, s'aplicarà un 10%.
- Si el salari es troba entre 7001 i 10000, s'aplicarà un 5%.
- Si el salari es troba entre 10001 i 20000, s'aplicarà un 1%.
- Si el salari és major de 20000 no té comissió (és null).
La funció només retornarà un valor en concret, però no modificarà res de la base de dades. Aquesta funció s'anomenarà f_calcularComissio.  Utilitza un CASE per calcular el valor.
Fes una select de la taula d’empleats on utilitzis aquesta funció i mostris quina comissió tindria cada empleat en funció del seu salari. Mostra el codi d’empleat, nom, salari i la comissió prevista.










## Exercici 7
La funció DBMS_RANDOM.value(MIN,MAX) genera números aleatoris entre un valor MIN i MAX (compte que els dona amb decimals). Es demana programar una funció anomenada f_Aleatori que rebi com a paràmetre un número N entre 1 i 6 i simuli el llançament d'un dau (números de l'1 al 6) 100 vegades i compti quantes vegades ha sortit el número N.
A continuació dins un bloc anònim PL/SQL utilitza aquesta funció amb algun valor. 
