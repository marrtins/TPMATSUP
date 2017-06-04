function menuCantidadDePolosYCeros()

h = dialog("name", "Ingresar cantidad de Polos y Ceros");
b1 = uicontrol(h, "style", "text", "string", "Ingrese la cantidad de polos:", "position", [150 300 250 30]);
c1 = uicontrol(h, "style", "edit", "position", [150 250 250 30], "callback", "cantidadPolos = obtenerNumeroDeUnCampoTexto(gcbo)");
b2 = uicontrol(h, "style", "text", "string", "Ingrese la cantidad de ceros:", "position", [150 200 250 30]);
c2 = uicontrol(h, "style", "edit", "position", [150 150 250 30], "callback", "cantidadCeros = obtenerNumeroDeUnCampoTexto(gcbo)");

uicontrol(h, "style", "pushbutton", "string", "Continuar->", "position", [450 20 80 30], "callback", "delete(gcf), menuIngresarPolosCerosYGanancia(cantidadPolos, cantidadCeros)");
botonCerrarVentana(h, 340, 20);
botonVolverAlMenuPrincipal(h, 170, 20);