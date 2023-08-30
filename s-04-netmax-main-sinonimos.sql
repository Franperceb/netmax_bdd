--@Autor: Jorge Francisco Pereda Ceballos / Edgar Cristobal Garcial 
--@Fecha creación: 18/junio/2023
--@Descripción: Creación de sinónimos - main
clear screen
whenever sqlerror exit rollback;
prompt =====================================
prompt Creando sinonimos para jpcbdd_s1
prompt =====================================
connect netmax_bdd/netmax_bdd@jpcbdd_s1
@s-04-netmax-jpc-s1-sinonimos.sql
@s-04-netmax-valida-sinonimos.sql
prompt =====================================
prompt creando sinonimos para jpcbdd_s2
prompt =====================================
connect netmax_bdd/netmax_bdd@jpcbdd_s2
@s-04-netmax-jpc-s2-sinonimos.sql
@s-04-netmax-valida-sinonimos.sql
prompt =====================================
prompt creando sinonimos para ecggbdd_s1
prompt =====================================
connect netmax_bdd/netmax_bdd@ecggbdd_s1
@s-04-netmax-ecgg-s1-sinonimos.sql
@s-04-netmax-valida-sinonimos.sql
prompt =====================================
prompt creando sinonimos para ecggbdd_s2
prompt =====================================
connect netmax_bdd/netmax_bdd@ecggbdd_s2
@s-04-netmax-ecgg-s2-sinonimos.sql
@s-04-netmax-valida-sinonimos.sql