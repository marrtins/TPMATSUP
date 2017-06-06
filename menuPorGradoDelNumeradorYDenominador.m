function menuPorGradoDelNumeradorYDenominador()

h = dialog("name", "Por grado del numerador y denominador");
b1 = uicontrol(h, "style", "text", "string", "Ingrese el grado del numerador", "position", [150 300 250 30]);
c1 = uicontrol(h, "style", "edit", "position", [150 250 250 30], "callback", "deshabilitarCampoEdit(gcbo),gradoNumerador = obtenerNumeroDeUnCampoTexto(gcbo)");
b2 = uicontrol(h, "style", "text", "string", "Ingrese el grado del denominador", "position", [150 200 250 30]);
c2 = uicontrol(h, "style", "edit", "position", [150 150 250 30], "callback", "deshabilitarCampoEdit(gcbo),gradoDenominador = obtenerNumeroDeUnCampoTexto(gcbo)");

uicontrol(h, "style", "pushbutton", "string", "Continuar->", "position", [450 20 80 30], "callback", "delete(gcf), menuIngresarCoeficientesNumeradorYDenominador(gradoNumerador, gradoDenominador)");
botonCerrarVentana(h, 340, 20);
botonVolverAlMenuPrincipal(h, 170, 20);

endfunction