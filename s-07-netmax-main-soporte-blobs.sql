--@Autor: Jorge A. Rodríguez C
--@Fecha creación:
--@Descripción: Script principal empleado para configurar el soporte
-- de datos BLOB en los 4 nodos.

Prompt configurando directorios y otorgando registros.
--jpcbdd_s1
Prompt configurando soporte BLOB para jpcbdd_s1
connect netmax_bdd/netmax_bdd@jpcbdd_s1
@s-07-netmax-configuracion-soporte-blobs.sql

--jpcbdd_s2
Prompt configurando soporte BLOB para jpcbdd_s2
connect netmax_bdd/netmax_bdd@jpcbdd_s2
@s-07-netmax-configuracion-soporte-blobs.sql

--ecggbdd_s1
Prompt configurando soporte BLOB para ecggbdd_s1
connect netmax_bdd/netmax_bdd@ecggbdd_s1
@s-07-netmax-configuracion-soporte-blobs.sql

--ecggbdd_s2
Prompt configurando soporte BLOB para ecggbdd_s2
connect netmax_bdd/netmax_bdd@ecggbdd_s2
@s-07-netmax-configuracion-soporte-blobs.sql
Prompt Listo !