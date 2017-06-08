function menuFuncionalidadesPorCoeficientes (funcionTransferencia)

funcionTransferencia = funcionTransferencia;
h = dialog ("name", "Funcionalidades");


b1 = uicontrol (h,"style", "pushbutton", "string", "Obtener la Función Transferencia", "position",[20 380 200 40], "callback", "mostrarFuncionTransferencia(funcionTransferencia)");
b2 = uicontrol (h,"style", "pushbutton", "string", "Indicar Polos", "position",[20 330 200 40], "callback", "indicarPolos(funcionTransferencia)");
b3 = uicontrol (h,"style", "pushbutton", "string", "Indicar Ceros", "position",[20 280 200 40], "callback", "indicarCeros(funcionTransferencia)");
b4 = uicontrol (h,"style", "pushbutton", "string", "Marcar Ganancia", "position",[20 230 200 40], "callback", "dialog('name','Ganancia')");
b5 = uicontrol (h,"style", "pushbutton", "string", "Obtener Polos, Ceros y Ganancia", "position",[20 180 200 40], "callback", "mostrarFuncionTransferenciaPZG(funcionTransferencia)");
b6 = uicontrol (h,"style", "pushbutton", "string", "Distribución de polos y ceros", "position",[20 130 200 40], "callback", "distribucionPolosYCeros(funcionTransferencia)");
b7 = uicontrol (h,"style", "pushbutton", "string", "Indicar estabilidad del sistema", "position",[20 80 200 40], "callback", "indicarEstabilidad(funcionTransferencia)");
b8 = uicontrol (h,"style", "pushbutton", "string", "Obtener todas las características", "position",[20 30 200 40], "callback", "menuTodasLasCaracteristicas(funcionTransferencia)");

botonVolverAlMenuPrincipal(h, 400, 20);
botonCerrarVentana(h, 300, 20 );

endfunction

