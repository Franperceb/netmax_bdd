--@Autor: Jorge Francisco Pereda Ceballos / Edgar Cristobal Garcia Gutierrez
--@Fecha creación: 19/06/2023
--@Descripción: Creación de vistas para todos los sitios

clear screen
whenever sqlerror exit rollback;
prompt ===========================================
prompt Creando vistas para jpcbdd_s1
prompt ===========================================
connect netmax_bdd/netmax_bdd@jpcbdd_s1
@s-05-netmax-vistas.sql
@s-05-netmax-tablas-temporales.sql
@s-05-netmax-funciones-blob.sql
@s-05-netmax-jpc-s1-vistas-blob.sql
prompt ===========================================
prompt Creando vistas para jpcbdd_s2
prompt ===========================================
prompt Creando vistas para jpcbdd_s2
connect netmax_bdd/netmax_bdd@jpcbdd_s2
@s-05-netmax-vistas.sql
@s-05-netmax-tablas-temporales.sql
@s-05-netmax-funciones-blob.sql
@s-05-netmax-jpc-s2-vistas-blob.sql
prompt ===========================================
prompt Creando vistas para ecggbdd_s1
prompt ===========================================
prompt Creando vistas para ecggbdd_s1
connect netmax_bdd/netmax_bdd@ecggbdd_s1
@s-05-netmax-vistas.sql
@s-05-netmax-tablas-temporales.sql
@s-05-netmax-funciones-blob.sql
@s-05-netmax-ecgg-s1-vistas-blob.sql

prompt ===========================================
prompt Creando vistas para ecggbdd_s2
prompt ===========================================

prompt Creando vistas para ecggbdd_s2
connect netmax_bdd/netmax_bdd@ecggbdd_s2
@s-05-netmax-vistas.sql
@s-05-netmax-tablas-temporales.sql
@s-05-netmax-funciones-blob.sql
@s-05-netmax-ecgg-s2-vistas-blob.sql
prompt Listo!