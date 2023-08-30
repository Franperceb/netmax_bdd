--@Autor: Jorge Francisco Pereda Ceballos / Edgar Cristobal Garcia Gutierrez
--@Fecha creación: 16/Junio/2023
--@Descripción: Creación de fragmentos en los 4 nodos
clear screen
--whenever sqlerror exit rollback;
prompt =====================================
prompt Creando fragmentos para jpcbd_s1
prompt =====================================
connect netmax_bdd/netmax_bdd@jpcbdd_s1
@s-03-netmax-jpc-s1-ddl.sql
prompt =====================================
prompt Creando fragmentos para jpcbd_s2
prompt =====================================
connect netmax_bdd/netmax_bdd@jpcbdd_s2
@s-03-netmax-jpc-s2-ddl.sql
prompt =====================================
prompt Creando fragmentos para ecggbdd_s1
prompt =====================================
connect netmax_bdd/netmax_bdd@ecggbdd_s1
@s-03-netmax-ecgg-s1-ddl.sql
prompt =====================================
prompt Creando fragmentos para ecggbdd_s2
prompt =====================================
connect netmax_bdd/netmax_bdd@ecggbdd_s2
@s-03-netmax-ecgg-s2-ddl.sql

Prompt Listo!