--@Autor: Jorge A. Rodríguez C
--@Fecha creación:
--@Descripción: Script principal - creación de triggers

clear screen
whenever sqlerror exit rollback;

prompt =====================================
prompt Creando triggers para jpcbdd_s1
prompt =====================================
connect netmax_bdd/netmax_bdd@jpcbdd_s1
@s-06-netmax-usuario-trigger.sql
@s-06-netmax-programa-trigger.sql
@s-06-netmax-jpc-s1-serie-trigger.sql
@s-06-netmax-jpc-s1-pelicula-trigger.sql
@s-06-netmax-jpc-s1-documental-trigger.sql
@s-06-netmax-jpc-s1-archivo-programa-trigger.sql
@s-06-netmax-jpc-s1-playlist-trigger.sql
@s-06-netmax-tipo-cuenta-trigger.sql
@s-06-netmax-tipo-serie-trigger.sql
@s-06-netmax-pais-trigger.sql

prompt =====================================
prompt Creando triggers para jpcbdd_s2
prompt =====================================
connect netmax_bdd/netmax_bdd@jpcbdd_s2
@s-06-netmax-usuario-trigger.sql
@s-06-netmax-programa-trigger.sql
@s-06-netmax-jpc-s2-serie-trigger.sql
@s-06-netmax-jpc-s2-pelicula-trigger.sql
@s-06-netmax-jpc-s2-documental-trigger.sql
@s-06-netmax-jpc-s2-archivo-programa-trigger.sql
@s-06-netmax-jpc-s2-playlist-trigger.sql
@s-06-netmax-tipo-cuenta-trigger.sql
@s-06-netmax-tipo-serie-trigger.sql
@s-06-netmax-pais-trigger.sql

prompt =====================================
prompt Creando triggers para ecggbdd_s1
prompt =====================================
connect netmax_bdd/netmax_bdd@ecggbdd_s1
@s-06-netmax-usuario-trigger.sql
@s-06-netmax-programa-trigger.sql
@s-06-netmax-ecgg-s1-serie-trigger.sql
@s-06-netmax-ecgg-s1-pelicula-trigger.sql
@s-06-netmax-ecgg-s1-documental-trigger.sql
@s-06-netmax-ecgg-s1-archivo-programa-trigger.sql
@s-06-netmax-ecgg-s1-playlist-trigger.sql
@s-06-netmax-tipo-cuenta-trigger.sql
@s-06-netmax-tipo-serie-trigger.sql
@s-06-netmax-pais-trigger.sql

prompt =====================================
prompt Creando triggers para ecggbdd_s2
prompt =====================================
connect netmax_bdd/netmax_bdd@ecggbdd_s2
@s-06-netmax-usuario-trigger.sql
@s-06-netmax-programa-trigger.sql
@s-06-netmax-ecgg-s2-serie-trigger.sql
@s-06-netmax-ecgg-s2-pelicula-trigger.sql
@s-06-netmax-ecgg-s2-documental-trigger.sql
@s-06-netmax-ecgg-s2-archivo-programa-trigger.sql
@s-06-netmax-ecgg-s2-playlist-trigger.sql
@s-06-netmax-tipo-cuenta-trigger.sql
@s-06-netmax-tipo-serie-trigger.sql
@s-06-netmax-pais-trigger.sql

prompt Listo!
disconnect