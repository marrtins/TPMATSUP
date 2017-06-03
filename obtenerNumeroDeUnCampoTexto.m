function numero = obtenerNumeroDeUnCampoTexto(puntero)
numero = get(puntero, 'string');
numero = str2num(numero);

endfunction