function mostrarFuncionTransferencia(funcionTransferencia)
  
h = dialog("name", "Función Transferencia");

botonCerrarVentana(h, 400, 20);

f = evalc('funcionTransferencia');
uicontrol(h, "style", "text", "string", f, "position",[10 250 400 150], "horizontalalignment", "left");

endfunction