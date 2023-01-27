# Curs: Introducció a Postgres

## Programació amb PL/PgSQL

### Funcions i procediments

**Exemple de FUNCIONS que retornen un valor**


1. [Exemple 1:](./fun01.sql) Funció sense paràmetres
2. [Exemple 2:](./fun02.sql) Valor màxim

**Exemples de FUNCIONS que NO retornen cap valor (Procediments)**

1. [Exemple 1:](./proc1.sql) Sense paràmetres
2. [Exemple 2:](./proc2.sql) Amb paràmetres. Al no indicar res per defecte es IN (d'entrada)
3. [Exemple 3:](./proc3.sql) Amb paràmetre de sortida OUT, en aquest cas no cal indicar la clàusula RETURNS ja que retornarà els valors en els paràmetres de sortida
4. [Exemple 4:](./proc4.sql) Amb paràmetres %TYPE
5. [Exemple 5:](./proc5.sql) Amb paràmetres tipus registre, en aquest cas no s’utilitza %rowtype sinó que s’especifica com a tipus el nom de la taula
