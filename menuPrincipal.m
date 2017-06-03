function menuPrincipal ()


h = dialog ("name", "Menu Principal");

b0= uicontrol(h, "style", "text","string", "Seleccione una opción para ingresar la función transferencia: ","position",[105 300 400 40]);
b1 = uicontrol (h, "string", "Con numerador y denominador", "position",[200 250 200 40], "callback", "delete(gcf), menuPorGradoDelNumeradorYDenominador()");
b2 = uicontrol (h, "string", "Con polos, ceros y ganancia", "position",[200 200 200 40], "callback","delete(gcf), menuCantidadDePolosYCeros()");


