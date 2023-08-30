--@Autor: Jorge A. Rodríguez C
--@Fecha creación: dd/mm/yyyy
--@Descripción: Archivo de carga inicial.

clear screen
whenever sqlerror exit rollback;

Prompt ======================================
Prompt Cargando catalogos replicados en jpcbdd_s1
Prompt ======================================
connect netmax_bdd/netmax_bdd@jpcbdd_s1
delete from status_programa;
@carga-inicial/netmax-carga-inicial-status-programa.sql
commit;

Prompt ======================================
Prompt Cargando catalogos replicados en jpcbdd_s2
Prompt ======================================
connect netmax_bdd/netmax_bdd@jpcbdd_s2
delete from status_programa;
@carga-inicial/netmax-carga-inicial-status-programa.sql
commit;

Prompt ======================================
Prompt Cargando catalogos replicados en ecggbdd_s1
Prompt ======================================
connect netmax_bdd/netmax_bdd@ecggbdd_s1
delete from status_programa;
@carga-inicial/netmax-carga-inicial-status-programa.sql
commit;

Prompt ======================================
Prompt Cargando catalogos replicados en ecggbdd_s2
Prompt ======================================
connect netmax_bdd/netmax_bdd@ecggbdd_s2
delete from status_programa;
@carga-inicial/netmax-carga-inicial-status-programa.sql
commit;

Prompt Carga de datos replicados exitosa!.
exit