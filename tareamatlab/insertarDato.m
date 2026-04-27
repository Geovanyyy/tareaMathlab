function insertarDato(valueCan, presCos, presUni)
  conn = database('productos');
    query = sprintf( ...
        ['INSERT INTO productos_50 (ESTADO_50, CANTIDAD_50, PRECIO_COSTO_50, PRECIO_UNITARIO_50) ' ...
        '        VALUES (%d, %d, %.2f, %.2f);'], 1, valueCan, presCos, presUni ...
        )
    execute(conn, query)
    close(conn);
    clear conn query
end