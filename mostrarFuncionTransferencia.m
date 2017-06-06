function mostrarFuncionTransferencia(funcionTransferencia)
  
h = dialog("name", "Función Transferencia");
botonVolverAlMenuPrincipal(h, 400 ,20);
botonCerrarVentana(h, 300, 20);

f = evalc('funcionTransferencia');
uicontrol(h, "style", "text", "string", f, "position",[10 250 250 150], "horizontalalignment", "left");

endfunction