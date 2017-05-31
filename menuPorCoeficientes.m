function menuPorCoeficientes()

h = dialog("name", "Por Coeficientes");
b1 = uicontrol(h, "style", "text", "string", "Ingrese los coeficientes del numerador", "position", [100 300 250 30]);
c1 = uicontrol(h, "style", "edit", "position", [100 250 250 30]);
b2 = uicontrol(h, "style", "text", "string", "Ingrese los coeficientes del denominador", "position", [100 200 250 30]);
c2 = uicontrol(h, "style", "edit", "position", [100 150 250 30]);
d1 = uicontrol (h, "style", "checkbox", "string", "Todas las opciones", "position",[100 100 150 40]);
d2 = uicontrol (h, "style", "checkbox", "string", "Algunas", "position",[250 100 150 40]);
b3 = uicontrol(h, "style", "pushbutton", "string", "Enviar", "callback", "delete(gcf)", "position", [150 50 100 40]);
b4 = uicontrol(h, "style", "pushbutton", "string", "Volver", "callback", "delete(gcf)", "position", [250 50 100 40]);