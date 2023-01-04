CREATE TYPE persona AS ( 
 dni text,
 nom text,
 cognoms text 
);

CREATE TABLE parella ( 
  p_a persona,  
  p_b persona  
);

SELECT * FROM parella;  


INSERT INTO parella VALUES
 (('42123232x','marc','garcia'),('34523846w','ernest','sanchez')),
 (('37123211m','albert','garcia'),('27523117n','joan','molina')),
 (('17197411r','roger','mendez'),('23423234j','eva','sanchez'));


SELECT * FROM parella;  

SELECT (p_a).dni FROM parella; 

SELECT (p_b).cognoms FROM parella; 

SELECT * FROM parella;

SELECT (p_a).nom,(p_b).nom FROM parella WHERE (p_a).nom like '%er%' OR (p_b).nom like '%ev%';

SELECT (p_a).nom,(p_b).nom FROM parella WHERE (p_a).nom like '%er%' AND (p_b).nom like '%ev%';  