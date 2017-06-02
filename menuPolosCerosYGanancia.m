function menuPolosCerosYGanancia(cantidadDeCeros, cantidadDePolos)

h = dialog("name", "Indicar Polos, Ceros y Ganancia");
uicontrol(h, "style", "text", "string", "Estos son los Ceros de la funcion:", "position",[20 400 250 10], "horizontalalignment", "left");

xVariable = 20;

for i = 0:cantidadDePolos
	string = strcat("Polo ", num2str(cantidadDeCeros-i));
	string = strcat(string, ":  ");
	uicontrol(h, "style", "text", "string", string, "position",[xVariable 380 50 10], "horizontalalignment", "left");
	uicontrol(h, "style", "edit", "string", string, "position",[xVariable 350 50 10], "horizontalalignment", "left");

	xVariable = xVariable + 50;
end

xVariable = 20;

for i = 0:cantidadDeCeros
	string = strcat("Cero ", num2str(cantidadDeCeros-i));
	string = strcat(string, ":  ");
	uicontrol(h, "style", "text", "string", string, "position",[xVariable 380 50 10], "horizontalalignment", "left");
	uicontrol(h, "style", "edit", "string", string, "position",[xVariable 350 50 10], "horizontalalignment", "left");
	xVariable = xVariable + 50;
end

uicontrol(h, "style", "pushbutton", "string", "Continuar->", "position", [450 20 80 30], "callback", "proximamente");
botonCerrarVentana(h, 340, 20);
botonVolverAlMenuPrincipal(h, 170, 20);

endfunction