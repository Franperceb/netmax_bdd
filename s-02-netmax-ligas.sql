--@Autor: Jorge Francisco Pereda Ceballos / Edgar Cristobal Garcia Gutierrez
--@Fecha creación: 16/junio/2023
--@Descripción: Creación de ligas privadas para cada sitio.

prompt Creando ligas en jpcbdd_s1 
connect netmax_bdd/netmax_bdd@jpcbdd_s1
--PDB LOCAL
create database link jpcbdd_s2.fi.unam using 'JPCBDD_S2';
--PDB remotas
create database link ecggbdd_s1.fi.unam using 'ECGGBDD_S1';
Create database link ecggbdd_s2.fi.unam using 'ECGGBDD_S2';

prompt Creando ligas en jpcbdd_s2  
connect netmax_bdd/netmax_bdd@jpcbdd_s2
--PDB LOCAL
create database link jpcbdd_s1.fi.unam using 'JPCBDD_S1';
--PDB remotas
create database link ecggbdd_s1.fi.unam using 'ECGGBDD_S1';
Create database link ecggbdd_s2.fi.unam using 'ECGGBDD_S2';

prompt Creando ligas en ecggbdd_s1
connect netmax_bdd/netmax_bdd@ecggbdd_s1
--PDB LOCAL
create database link ecggbdd_s2.fi.unam using 'ECGGBDD_S2';
--PDB remotas
create database link jpcbdd_s1.fi.unam using 'JPCBDD_S1';
Create database link jpcbdd_s2.fi.unam using 'JPCBDD_S2';

prompt Creando ligas en ecggbdd_s2  
connect netmax_bdd/netmax_bdd@ecggbdd_s2
--PDB LOCAL
create database link ecggbdd_s1.fi.unam using 'ECGGBDD_S1';
--PDB remotas
create database link jpcbdd_s1.fi.unam using 'JPCBDD_S1';
Create database link jpcbdd_s2.fi.unam using 'JPCBDD_S2';
prompt Listo.



