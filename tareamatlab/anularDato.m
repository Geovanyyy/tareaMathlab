function anularDato(idData)
    conn = database('productos');                                                                                                                                                                                  
    query = sprintf( ...
        'UPDATE productos_50 SET ESTADO_50=0 WHERE ID_PRODUCTO_50=%d', ...
        idData ...
        )
    execute(conn, query)
    close(conn);
    clear conn query
end