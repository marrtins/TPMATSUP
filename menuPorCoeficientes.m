function menuPorCoeficientes()

h = dialog("name", "Por Coeficientes del numerador y denominador");
b1 = uicontrol(h, "style", "text", "string", "Ingrese los coeficientes del numerador", "position", [150 300 250 30]);
c1 = uicontrol(h, "style", "edit", "position", [150 250 250 30]);
b2 = uicontrol(h, "style", "text", "string", "Ingrese los coeficientes del denominador", "position", [150 200 250 30]);
c2 = uicontrol(h, "style", "edit", "position", [150 150 250 30]);

uicontrol(h, "style", "pushbutton", "string", "Continuar->", "position", [450 20 80 30], "callback", "proximamente");
botonCerrarVentana(h, 340, 20);
botonVolverAlMenuPrincipal(h, 170, 20);