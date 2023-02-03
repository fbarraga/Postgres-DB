# INSTAL·LACIÓ BASE DE DADES ADVENTURE WORKS

## Obrir màquina virtual.

 Arranca la màquina Linux on tens instal·lada la base de dades PostGres.

## Crear base de dades AdventureWorks:
```
su postgres
psql
#> CREATE DATABASE AdventureWorks;
#>\l 
#>\q
exit
```

Mirem quina ip té la màquina virtual.
```
ip a
```

![Image1](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/Databases/adventureworks/image1.png?raw=true)
has d’agafar la ip que apareix a la variable inet de l’adaptador enp0s3.

En l’exemple seria 192.168.18.102

# Configurar WinSCP:

 Descarrega
![Image2](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/Databases/adventureworks/image2.png?raw=true)
Posaràs la ip del teu servidor i l’usuari i contrasenya amb el que et connectes.
![Image3](https://github.com/fbarraga/Postgres-DB/blob/main/UF2/Databases/adventureworks/image3.png?raw=true)
Mous el fitxer a la teva carpeta home:
 
Accedeixes al servidor de nou a la teva carpeta home.
Tornes a executar psql, per carregar el fitxer.
```
su postgres
psql -d AdventureWorks -f AdventureWorksBackup
```

Quan acabi ja hauries de tenir la base de dades creada i amb dades. Pot ser que en el procés aparegui algun error, de moment no afecta, no facis cas.

