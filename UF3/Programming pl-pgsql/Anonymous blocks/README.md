# Curs: Introducció a Postgres

## Programació amb PL/PgSQL

### Blocs anònims (Anonymous blocks)

Els blocs anònims son trossos de codi que no s'emmagatzemen al servidor de PostGres (funcionen com un script) i que tenen la següent sintaxi:

```sql
[ <<label>> ]  
[ declare
declarations ]
begin
statements;
...
end [ label ];
```
### Primers programes

* [Exemple 1](./Exemples/ab1.sql): Hello world
* [Exemple 2](./Exemples/ab2.sql): Operacions Simples
* [Exemple 3](./Exemples/ab3.sql): Declarar variables indicant el seu tipus a partir  del tipus d'un camp d'una altre taula 
* [Exemple 4](./Exemples/ab4.sql): Carregar camps d'una taula en variables
* [Exemple 4b](./Exemples/ab4b.sql): Select into quan no es retorna cap fila

### Condicionals

* [Exemple 5](./Exemples/ab5.sql): Condicional IF simple
* [Exemple 6](./Exemples/ab6.sql): Condicional IF ELSE
* [Exemple 7](./Exemples/ab7.sql): Condicional CASE

### Iteratives

* [Exemple 8](./Exemples/ab8.sql): LOOP
* [Exemple 9](./Exemples/ab9.sql): WHILE
* [Exemple 10](./Exemples/ab10.sql): FOR

### Vectors

* [Exemple 11](./Exemples/ab11.sql): Vectors