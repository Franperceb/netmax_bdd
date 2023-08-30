--@Autor: Jorge Francisco Pereda Ceballos/ Edgar Cristobal Garcia Gutierrez
--@Fecha creación: 16/junio/2023
--@Descripción: Creación de usuarios para cada nodo(pdb).

clear screen
prompt Inciando creacion/eliminacion de usuarios.
prompt =====================================
prompt Creando usuario en jpcbdd_s1
prompt =====================================
prompt Conectándose a jpcbdd_s1 como usuario SYS
connect sys/system@jpcbdd_s1 as sysdba

@p-crea-usuario.sql

exec p_crea_usuario('netmax_bdd')

prompt Asignando privilegios a netmax_bdd
grant create type,create any directory,create database link,create trigger, create synonym, create view, create table, create session, create sequence, create procedure to netmax_bdd;

prompt =====================================
prompt Creando usuario en jpcbdd_s2
prompt =====================================
prompt Conectándose a jpcbdd_s2 como usuario SYS
connect sys/system@jpcbdd_s2 as sysdba

@p-crea-usuario.sql

exec p_crea_usuario('netmax_bdd')

prompt Asignando privilegios a netmax_bdd
grant create type,create any directory, create database link,create trigger, create synonym, create view, create table, create session, create sequence, create procedure to netmax_bdd;



prompt =====================================
prompt Creando usuario en ecggbdd_s1
prompt =====================================
prompt Conectándose a ecggbdd_s1 como usuario SYS
connect sys/system@ecggbdd_s1 as sysdba

@p-crea-usuario.sql

exec p_crea_usuario('netmax_bdd')

prompt Asignando privilegios a netmax_bdd
grant create type,create any directory,create database link,create trigger, create synonym, create view, create table, create session, create sequence, create procedure to netmax_bdd;


prompt =====================================
prompt Creando usuario en ecggbdd_s2
prompt =====================================
prompt Conectándose a ecggbdd_s2 como usuario SYS
connect sys/system@ecggbdd_s2 as sysdba

@p-crea-usuario.sql

exec p_crea_usuario('netmax_bdd')

prompt Asignando privilegios a netmax_bdd
grant create type,create any directory,create database link,create trigger, create synonym, create view, create table, create session, create sequence, create procedure to netmax_bdd;

prompt Listo!
