function menuFuncionalidadesPZK (funcionTransferencia)


h = dialog ("name", "Funcionalidades");
botonVolverAlMenuPrincipal(h, 350, 20);
botonCerrarVentana(h, 250, 20 );

b1 = uicontrol (h,"style", "pushbutton", "string", "Obtener la funcion transferencia", "position",[200 350 200 40], "callback", "mostrarFuncionTransferencia(funcionTransferencia)");
b2 = uicontrol (h,"style", "pushbutton", "string", "Obtener polos,ceros y ganancia", "position",[200 300 200 40], "callback", "mostrarFuncionTransferenciaPZG(funcionTransferencia)");
b3 = uicontrol (h,"style", "pushbutton", "string", "Distribucion de polos y ceros", "position",[200 250 200 40], "callback", "distribucionPolosYCeros(funcionTransferencia)");
b4 = uicontrol (h,"style", "pushbutton", "string", "Indicar estabilidad del sistema", "position",[200 200 200 40], "callback", "indicarEstabilidad(funcionTransferencia)");
b5 = uicontrol (h,"style", "pushbutton", "string", "Obtener todas las caracteristicas", "position",[200 150 200 40], "callback", "menuTodasLasCaracteristicas(funcionTransferencia)");

endfunction
