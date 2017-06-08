function indicarGanancia(funcionTransferencia)

h = dialog("name", "Indicador de Ganancia");

botonCerrarVentana(h, 400, 20);
uicontrol(h, "style", "text", "string", "Esta es la Ganancia de la funcion:", "position",[20 400 250 10], "horizontalalignment", "left");

[z,p,k] = tf2zp(funcionTransferencia);
ganancia = num2str(k);
ganancia = strcat("k:", ganancia);
uicontrol(h, "style", "text", "string", ganancia, "position",[20 380 250 10], "horizontalalignment", "left");

endfunction

