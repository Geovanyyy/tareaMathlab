function eliminarDato(idData)
    conn = database('productos');
    query = sprintf( ...
        'DELETE FROM productos_50 WHERE ID_PRODUCTO_50=%d', ...
        idData ...
        )
    execute(conn, query)
    close(conn);
    clear conn query
end