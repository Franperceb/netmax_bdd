--@Autores:     Jorge Francisco Pereda Ceballos y Edgar Cristobal Garcia Gutierrez 
--@Fecha:       18/06/2023 
--@Descripción: DML fragmentos en los 4 sitios

create or replace trigger t_dml_pelicula
  instead of insert or update or delete on pelicula
declare
  v_count number;
begin
  case
  when inserting then
    select count(*) into v_count
    from programa_f1
    where programa_id = :new.programa_id;

    if v_count > 0 then
      insert into pelicula_f1(programa_id, pelicula_antecedente_id, duracion, 
        sinopsis, clasificacion)
      values(:new.programa_id, :new.pelicula_antecedente_id, :new.duracion,
        :new.sinopsis, :new.clasificacion);
    else
      select count(*) into v_count
      from programa_f2
      where programa_id = :new.programa_id;

      if v_count > 0 then
        insert into pelicula_f2(programa_id, pelicula_antecedente_id, duracion, 
          sinopsis, clasificacion)
        values(:new.programa_id, :new.pelicula_antecedente_id, :new.duracion,
          :new.sinopsis, :new.clasificacion);
      else
        select count(*) into v_count
        from programa_f3
        where programa_id = :new.programa_id;

        if v_count > 0 then
          insert into pelicula_f3(programa_id, pelicula_antecedente_id, duracion, 
            sinopsis, clasificacion)
          values(:new.programa_id, :new.pelicula_antecedente_id, :new.duracion, 
            :new.sinopsis, :new.clasificacion);
        else
          raise_application_error(-20020,
            'Error de integridad de datos en columna programa_id : ' || :new.programa_id
            || '. No se encontró ningún registro en fragmento padre');
        end if;
      end if;
    end if;

  when deleting then
    select count(*) into v_count
    from programa_f1
    where programa_id = :old.programa_id;

    if v_count > 0 then
      delete from pelicula_f1 where programa_id = :old.programa_id;
    else
      select count(*) into v_count
      from programa_f2
      where programa_id = :old.programa_id;

      if v_count > 0 then
        delete from pelicula_f2 where programa_id = :old.programa_id;
      else
        select count(*) into v_count
        from programa_f3
        where programa_id = :old.programa_id;

        if v_count > 0 then
          delete from pelicula_f3 where programa_id = :old.programa_id;
        else
          raise_application_error(-20020,
            'Error de integridad de datos en columna programa_id : ' || :old.programa_id
            || '. No se encontró ningún registro en fragmento padre');
        end if;
      end if;
    end if;



  when updating then
    raise_application_error(-20030,
        'Operación en fragmentos de tabla fallida. '
    );

  end case;
end;
/
show errors