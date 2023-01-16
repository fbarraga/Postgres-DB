# Preparació d'examens
# Versió 1.0 09.01.2023
# Francesc Barragán
# Exemples de sentències SQL DML DDL
# BD: Pagila 

1. Crear una taula FILM_AUX que tingui com a columnes (film_id,title,length i category_id) a partir de fer un SELECT sobre les taules que convingui.(FILM,FILM_CATEGORY)
<details>
  <summary>Click per veure la solució!</summary>
  
  ## SQL
   
  CREATE TABLE FILM_AUX AS 
    (
        SELECT film_id,title,length,category_id
        FROM FILM fi
        INNER JOIN film_category fc on fi.film_id=fc.film_id
        INNER JOIN category ca on ca.category_id=fc.category_id
    )
</details>


1. Sobre la taula FILM_AUX actualitza la length de les pelicules, posar un valor de 90 a totes les que siguin de tipus 'Action'.

2. Modifica la taula FILM_AUX i afegeix un camp enter que es digui num_copies

3. Actualitza la taula FILM_AUX amb el número de copies que té cada pel·lícula.

4. Crea un taula CAT_AUX que tingui les columnes (category_id integer,name varchar(255),film_count_1 integer,film_length integer,film_length_max integer)

5. Inserta  les columnes (category_id i name) de la taula Category en aquesta taula CAT_AUX amb una única sentència.

6. Modifica la columna film_length amb la suma de la length de totes les pel·lícules que son de la mateixa categoria.

7. Modifica la columna film_length amb la duració de la pelicula més llarga de la seva categoria.

8. Crea una taula RENT_AUX a partir d'un SELECT de la taula rental que ens doni les 5 pelicules que més s'han llogat. Els camps d'aquesta taula han de ser film_id, title, rental_count

9.  Borra les taules FILM_AUX, CAT_AUX, RENT_AUX.



# Another example of collapsible section with markdown

