# INSTAL·LACIÓ BASE DE DADES ADVENTURE WORKS (MAQUINA VIRTUALBOX)

Obrir màquina virtual.

Crear base de dades AdventureWorks:
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

has d’agafar la ip que apareix a la variable inet de l’adaptador enp0s3.

En l’exemple seria 192.168.18.102
Configurar WinSCP:
 
Posaràs la ip del teu servidor i l’usuari i contrasenya amb el que et connectes.
Mous el fitxer a la teva carpeta home:
 
Accedeixes al servidor de nou a la teva carpeta home.
Tornes a executar psql, per carregar el fitxer.
su postgres
psql -d AdventureWorks -f AdventureWorksBackup
Quan acabi ja hauries de tenir la base de dades creada i amb dades. Pot ser que en el procés aparegui algun error, de moment no afecta, no facis cas.

