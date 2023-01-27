# Curs: Introducció a Postgres

## Programació amb PL/PgSQL

### Funcions i procediments

**Exemple de FUNCIONS que retornen un valor**


   * [Exemple 1:](./fun01.sql) Funció sense paràmetres
   * [Exemple 2:](./fun02.sql) Valor màxim

**Exemples de FUNCIONS que NO retornen cap valor (Procediments)**

   * [Exemple 1:](./proc1.sql) Sense paràmetres
   * [Exemple 2:](./proc2.sql) Amb paràmetres. Al no indicar res per defecte es IN (d'entrada)
   * [Exemple 3:](./proc3.sql) Amb paràmetre de sortida OUT, en aquest cas no cal indicar la clàusula RETURNS ja que retornarà els valors en els paràmetres de sortida
   * [Exemple 4:](./proc4.sql) Amb paràmetres %TYPE
   * [Exemple 5:](./proc5.sql) Amb paràmetres tipus registre, en aquest cas no s’utilitza %rowtype sinó que s’especifica com a tipus el nom de la taula
