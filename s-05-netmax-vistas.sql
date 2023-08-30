--@Autor: Jorge Francisco Pereda Ceballos / Edgar Cristobal Garcial 
--@Fecha creación: 18/junio/2023
--@Descripción: Creación de vistas comunes a todos los nodos
-- Se excluyen las vistas que contienen columnas BLOB

--PROGRAMA
create or replace view PROGRAMA as
select programa_id,folio,nombre,descripcion,fecha_status,tipo,status_programa_id
from programa_f1
union all
select programa_id,folio,nombre,descripcion,fecha_status,tipo,status_programa_id
from programa_f2
union all
select programa_id,folio,nombre,descripcion,fecha_status,tipo,status_programa_id
from programa_f3;

--DOCUMENTAL
create or replace view DOCUMENTAL as
select programa_id,tematica,duracion,pais_id
from documental_f1
union all
select programa_id,tematica,duracion,pais_id
from documental_f2
union all
select programa_id,tematica,duracion,pais_id
from documental_f3;

--SERIE
create or replace view SERIE as
select programa_id,num_capitulos,duracion_capitulo,tipo_serie_id
from serie_f1
union all
select programa_id,num_capitulos,duracion_capitulo,tipo_serie_id
from serie_f2
union all
select programa_id,num_capitulos,duracion_capitulo,tipo_serie_id
from serie_f3;

--PELICULA
create or replace view PELICULA as
select programa_id,duracion,sinopsis,clasificacion,pelicula_antecedente_id
from pelicula_f1
union all
select programa_id,duracion,sinopsis,clasificacion,pelicula_antecedente_id
from pelicula_f2
union all
select programa_id,duracion,sinopsis,clasificacion,pelicula_antecedente_id
from pelicula_f3;

--USUARIO

create or replace view USUARIO as
  select q1.usuario_id, q1.email, q1.nombre, q1.ap_paterno, q1.ap_materno,u3.password,
    q1.fecha_ingreso, q1.vigente, q1.fecha_cuenta_fin,u3.num_tarjeta, q1.tipo_cuenta_id
  from (
    select usuario_id, email, nombre, ap_paterno, ap_materno, fecha_ingreso, 
      fecha_cuenta_fin, vigente, tipo_cuenta_id
    from usuario_f1
    union all
    select usuario_id, email, nombre, ap_paterno, ap_materno, fecha_ingreso, 
      fecha_cuenta_fin, vigente, tipo_cuenta_id
    from usuario_f2
    union all
    select usuario_id, email, nombre, ap_paterno, ap_materno, fecha_ingreso, 
      fecha_cuenta_fin, vigente, tipo_cuenta_id
    from usuario_f4
    union all
    select usuario_id, email, nombre, ap_paterno, ap_materno, fecha_ingreso, 
      fecha_cuenta_fin, vigente, tipo_cuenta_id
    from usuario_f5
  ) q1
  join usuario_f3 u3 on q1.usuario_id = u3.usuario_id;


--PLAYLIST
Prompt creando vista PLAYLIST
create or replace view PLAYLIST as
select playlist_id,calificacion,indice,num_reproducciones,programa_id,usuario_id
from playlist_f1
union all
select playlist_id,calificacion,indice,num_reproducciones,programa_id,usuario_id
from playlist_f2
union all
select playlist_id,calificacion,indice,num_reproducciones,programa_id,usuario_id
from playlist_f3
union all
select playlist_id,calificacion,indice,num_reproducciones,programa_id,usuario_id 
from playlist_f4;

--TABLAS REPLICADAS
--pais
Prompt creando vista PAIS
create or replace view PAIS as
select pais_id,clave,nombre,continente
from pais_r1;

create or replace view PAIS as
select pais_id,clave,nombre,continente
from pais_r2;

create or replace view PAIS as
select pais_id,clave,nombre,continente
from pais_r3;  

create or replace view PAIS as
select pais_id,clave,nombre,continente
from pais_r4;
--tipo_serie
Prompt creando vista tipo_serie
create or replace view TIPO_SERIE as
select tipo_serie_id,clave,descripcion
from tipo_serie_r1;

create or replace view TIPO_SERIE as
select tipo_serie_id,clave,descripcion
from tipo_serie_r2;

create or replace view TIPO_SERIE as
select tipo_serie_id,clave,descripcion
from tipo_serie_r3;  

create or replace view TIPO_SERIE as
select tipo_serie_id,clave,descripcion
from tipo_serie_r4;

--tipo_cuenta
Prompt creando vista tipo_cuenta
create or replace view TIPO_CUENTA as
select tipo_cuenta_id,clave,descripcion,costo_mensual
from tipo_cuenta_r1;

create or replace view TIPO_CUENTA as
select tipo_cuenta_id,clave,descripcion,costo_mensual
from tipo_cuenta_r2;

create or replace view TIPO_CUENTA as
select tipo_cuenta_id,clave,descripcion,costo_mensual
from tipo_cuenta_r3;  

create or replace view TIPO_CUENTA as
select tipo_cuenta_id,clave,descripcion,costo_mensual
from tipo_cuenta_r4;

--PROGRAMA
create or replace view HISTORICO_STATUS_PROGRAMA as
select historico_status_prog_id,programa_id,fecha_status,status_programa_id
from historico_status_programa_f1;