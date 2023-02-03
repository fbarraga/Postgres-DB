# INSTAL·LACIÓ BASE DE DADES ADVENTURE WORKS

## Obrir màquina virtual.

 Arranca la màquina Linux on tens instal·lada la base de dades PostGres.

## Crear base de dades AdventureWorks:

* Connectem amb l'usuari postgres i executem: 
* 
```
su postgres
psql
#> CREATE DATABASE AdventureWorks;
#>\l 
#>\q
exit
```

* Mirem quina ip té la nostra màquina virtual.
```
ip -c a
```

![Image1](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/Databases/adventureworks/image1.png?raw=true)
has d’agafar la ip que apareix a la variable inet de l’adaptador enp0s3.

En l’exemple seria **192.168.18.102**

## Configurar WinSCP:

* Descarrega el programa de https://www.winscp.net

![Image2](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/Databases/adventureworks/image2.png?raw=true)

* Posa la ip del teu servidor de Postgres i l’usuari i contrasenya amb el que et connectes.
  
![Image3](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/Databases/adventureworks/image3.png?raw=true)

Mou el fitxer `AdventureWorksBackup` a la teva carpeta /tmp:

## Restaura el backup  

* Accedeix al servidor de noui executa la instrucció següent per restaurar el backup.
```
su postgres
psql -d AdventureWorks -f /tmp/AdventureWorksBackup
```

Quan acabi ja hauries de tenir la base de dades creada i amb dades.