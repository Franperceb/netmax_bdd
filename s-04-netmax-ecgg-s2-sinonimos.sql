--@Autor: Jorge Francisco Pereda Ceballos / Edgar Cristobal Garcia
--@Fecha creación:18/junio/2023
--@Descripción: Creación de sinónimos para sitio 4

Prompt conectandose a ecggbdd_s2
connect netmax_bdd/netmax_bdd@ecggbdd_s2
Prompt creando sinónimos en ecggbdd_s2
-- programa
create or replace synonym programa_f1 for PROGRAMA_F1_JPC_S1@jpcbdd_s1;
create or replace synonym programa_f2 for PROGRAMA_F2_ECGG_S1@ecggbdd_s1;
create or replace synonym programa_f3 for PROGRAMA_F3_ECGG_S2;
-- documental 
create or replace synonym documental_f1 for DOCUMENTAL_F1_JPC_S1@jpcbdd_s1;
create or replace synonym documental_f2 for DOCUMENTAL_F2_ECGG_S1@ecggbdd_s1;
create or replace synonym documental_f3 for DOCUMENTAL_F3_ECGG_S2;
-- serie 
create or replace synonym serie_f1 for SERIE_F1_JPC_S1@jpcbdd_s1;
create or replace synonym serie_f2 for SERIE_F2_ECGG_S1@ecggbdd_s1;
create or replace synonym serie_f3 for SERIE_F3_ECGG_S2;
-- pelicula 
create or replace synonym pelicula_f1 for PELICULA_F1_JPC_S1@jpcbdd_s1;
create or replace synonym pelicula_f2 for PELICULA_F2_ECGG_S1@ecggbdd_s1;
create or replace synonym pelicula_f3 for PELICULA_F3_ECGG_S2;

-- usuario
create or replace synonym usuario_f1 for USUARIO_F1_JPC_S1@jpcbdd_s1;
create or replace synonym usuario_f2 for USUARIO_F2_JPC_S2@jpcbdd_s2;
create or replace synonym usuario_f3 for USUARIO_F3_ECGG_S1@ecggbdd_s1;
create or replace synonym usuario_f4 for USUARIO_F4_ECGG_S2;
create or replace synonym usuario_f5 for USUARIO_F5_ECGG_S1@ecggbdd_s1;

-- playlist
create or replace synonym playlist_f1 for PLAYLIST_F1_JPC_S1@jpcbdd_s1;
create or replace synonym playlist_f3 for PLAYLIST_F2_JPC_S2@jpcbdd_s2;
create or replace synonym playlist_f2 for PLAYLIST_F3_ECGG_S1@ecggbdd_s1;
create or replace synonym playlist_f4 for PLAYLIST_F4_ECGG_S2;

--archivo_programa
create or replace synonym archivo_programa_f1 for ARCHIVO_PROGRAMA_F1_JPC_S2@jpcbdd_s2;
create or replace synonym archivo_programa_f2 for ARCHIVO_PROGRAMA_F2_ECGG_S1@ecggbdd_s1;

-- pais
create or replace synonym pais_r1 for PAIS_R_JPC_S1@jpcbdd_s1;
create or replace synonym pais_r2 for PAIS_R_JPC_S2@jpcbdd_s2;
create or replace synonym pais_r3 for PAIS_R_ECGG_S1@ecggbdd_s1;
create or replace synonym pais_r4 for PAIS_R_ECGG_S2;
-- tipo_cuenta
create or replace synonym tipo_cuenta_r1 for TIPO_CUENTA_R_JPC_S1@jpcbdd_s1;
create or replace synonym tipo_cuenta_r2 for TIPO_CUENTA_R_JPC_S2@jpcbdd_s2;
create or replace synonym tipo_cuenta_r3 for TIPO_CUENTA_R_ECGG_S1@ecggbdd_s1;
create or replace synonym tipo_cuenta_r4 for TIPO_CUENTA_R_ECGG_S2;
-- tipo_serie
create or replace synonym tipo_serie_r1 for TIPO_SERIE_R_JPC_S1@jpcbdd_s1;
create or replace synonym tipo_serie_r2 for TIPO_SERIE_R_JPC_S2@jpcbdd_s2;
create or replace synonym tipo_serie_r3 for TIPO_SERIE_R_ECGG_S1@ecggbdd_s1;
create or replace synonym tipo_serie_r4 for TIPO_SERIE_R_ECGG_S2;
-- historico status programa
create or replace synonym historico_status_programa_f1 for HISTORICO_STATUS_PROGRAMA_ECGG_S2;
