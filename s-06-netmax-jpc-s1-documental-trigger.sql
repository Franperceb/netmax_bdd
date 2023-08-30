--@Autores:     Jorge Francisco Pereda Ceballos y Edgar Cristobal Garcia Gutierrez 
--@Fecha:       18/06/2023 
--@Descripción: DML fragmentos en los 4 sitios

create or replace trigger t_dml_documental
  instead of insert or update or delete on documental
declare
  v_count number;
begin
  case
  when inserting then
  --determino a través del registro existente en  programa que fragmentacion insertar
    select count(*) into v_count
    from programa_f1
    where programa_id = :new.programa_id;

    if v_count > 0 then
      insert into documental_f1(programa_id, tematica, duracion, trailer, pais_id)
      values(:new.programa_id, :new.tematica, :new.duracion, :new.trailer, :new.pais_id);
    else
      select count(*) into v_count
      from programa_f2
      where programa_id = :new.programa_id;

      if v_count > 0 then
        insert into ti_documental_2(programa_id, tematica, duracion, pais_id, trailer)
        values(:new.programa_id, :new.tematica, :new.duracion,:new.pais_id,:new.trailer);

        insert into documental_f2
          select * from ti_documental_2 where programa_id = :new.programa_id;

        delete from ti_documental_2 where programa_id = :new.programa_id;
        
      else
        select count(*) into v_count
        from programa_f3
        where programa_id = :new.programa_id;

        if v_count > 0 then
          insert into ti_documental_3(programa_id, tematica, duracion, pais_id, trailer)
          values(:new.programa_id,:new.tematica,:new.duracion,:new.pais_id,:new.trailer);

          insert into documental_f3
            select * from ti_documental_3 where programa_id = :new.programa_id;

          delete from ti_documental_3 where programa_id = :new.programa_id;
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
      delete from documental_f1 where programa_id = :old.programa_id;
    else
      select count(*) into v_count
      from programa_f2
      where programa_id = :old.programa_id;

      if v_count > 0 then
        delete from documental_f2 where programa_id = :old.programa_id;
      else
        select count(*) into v_count
        from programa_f3
        where programa_id = :old.programa_id;

        if v_count > 0 then
          delete from documental_f3 where programa_id = :old.programa_id;
        else
          raise_application_error(-20020,
            'Error de integridad de datos en columna programa_id : ' || :old.programa_id
            || '. No se encontró ningún registro en fragmento padre');
        end if;
      end if;
    end if;

  when updating then
    raise_application_error(-20030,
        'Operación en fragmentos de tabla fallido. '
    );

  end case;
end;
/
show errors