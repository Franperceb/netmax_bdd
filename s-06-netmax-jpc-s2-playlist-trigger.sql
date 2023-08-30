--@Autores:     Jorge Francisco Pereda Ceballos y Edgar Cristobal Garcia Gutierrez 
--@Fecha:       18/06/2023 
--@Descripción: DML fragmentos en los 4 sitios

create or replace trigger t_dml_playlist
  instead of insert or update or delete on playlist
declare
  v_count number;
begin
  case
  when inserting then
    select count(*) into v_count
    from usuario_f1
    where usuario_id = :new.usuario_id;

    if v_count > 0 then
      insert into playlist_f1(playlist_id, programa_id, calificacion, indice, 
        num_reproducciones, usuario_id)
      values(:new.playlist_id, :new.programa_id, :new.calificacion, :new.indice, 
        :new.num_reproducciones, :new.usuario_id);
    else
      select count(*) into v_count
      from usuario_f2
      where usuario_id = :new.usuario_id;

      if v_count > 0 then
        insert into playlist_f2(playlist_id, programa_id, calificacion, indice, 
          num_reproducciones, usuario_id)
        values(:new.playlist_id, :new.programa_id, :new.calificacion, :new.indice, 
          :new.num_reproducciones, :new.usuario_id);
      else
        select count(*) into v_count
        from usuario_f5
        where usuario_id = :new.usuario_id;

        if v_count > 0 then
          insert into playlist_f3(playlist_id, programa_id, calificacion, indice, 
            num_reproducciones, usuario_id)
          values(:new.playlist_id, :new.programa_id, :new.calificacion, :new.indice, 
            :new.num_reproducciones, :new.usuario_id);
        else
          select count(*) into v_count
          from usuario_f4
          where usuario_id = :new.usuario_id;

          if v_count > 0 then
            insert into playlist_f4(playlist_id, programa_id, calificacion, indice, 
              num_reproducciones, usuario_id)
            values(:new.playlist_id, :new.programa_id, :new.calificacion, :new.indice, 
              :new.num_reproducciones, :new.usuario_id);
          else
            raise_application_error(-20020,
            'Error de integridad de datos en columna programa_id : ' || :new.programa_id
            || '. No se encontró ningún registro en fragmento padre');
          end if;
        end if;
      end if;
    end if;

  when deleting then
    select count(*) into v_count
    from usuario_f1
    where usuario_id = :old.usuario_id;

    if v_count > 0 then
      delete from playlist_f1 where playlist_id = :old.playlist_id;
    else
      select count(*) into v_count
      from usuario_f2
      where usuario_id = :old.usuario_id;

      if v_count > 0 then
        delete from playlist_f2 where playlist_id = :old.playlist_id;
      else
        select count(*) into v_count
        from usuario_f5
        where usuario_id = :old.usuario_id;

        if v_count > 0 then
          delete from playlist_f3 where playlist_id = :old.playlist_id;
        else
          select count(*) into v_count
          from usuario_f4
          where usuario_id = :old.usuario_id;

          if v_count > 0 then
            delete from playlist_f4 where playlist_id = :old.playlist_id;
          else
            raise_application_error(-20020,
            'Error de integridad de datos en columna programa_id : ' || :old.programa_id
            || '. No se encontró ningún registro en fragmento padre');
          end if;
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