function modificarDato(idProd, valueCan, presCos, presUni)
  conn = database('productos');
    query = sprintf( ...
        'UPDATE productos_50 SET CANTIDAD_50=%.2f, PRECIO_COSTO_50=%.2f, PRECIO_UNITARIO_50=%.2f WHERE ID_PRODUCTO_50=%d', ...
        valueCan, presCos, presUni, idProd ...
        );
    execute(conn, query)
    close(conn);
    clear conn query
end