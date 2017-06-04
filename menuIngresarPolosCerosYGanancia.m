function menuIngresarPolosCerosYGanancia(cantidadDeCeros, cantidadDePolos)

polosIngresados = [];
cerosIngresados = [];

h = dialog("name", "Indicar Polos, Ceros y Ganancia");
uicontrol(h, "style", "text", "string", "Ingrese los polos de la funcion:", "position",[20 400 250 20], "horizontalalignment", "left");

xVariable = 20;
yVariable = 380;

polos = [];
ceros = [];
ganancia;

for i = 0:cantidadDePolos
	string = strcat("Polo ", num2str(i));
	string = strcat(string, ": ");
	uicontrol(h, "style", "text", "string", string, "position",[xVariable yVariable 50 10], "horizontalalignment", "left");
	if(i==0)
		uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "polos = obtenerNumeroDeUnCampoTexto(gcbo)");
	else
		uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "polos = [polos obtenerNumeroDeUnCampoTexto(gcbo)]");
	endif
	xVariable = xVariable + 70;
end

uicontrol(h, "style", "text", "string", "Ingrese los ceros de la funcion:", "position",[20 320 250 20], "horizontalalignment", "left");

xVariable = 20;
yVariable = 300;

for i = 0:cantidadDeCeros
	string = strcat("Cero ", num2str(i));
	string = strcat(string, ": ");
	uicontrol(h, "style", "text", "string", string, "position",[xVariable yVariable 50 10], "horizontalalignment", "left");
	if(i==0)
		uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "ceros = obtenerNumeroDeUnCampoTexto(gcbo)");
	else
		uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "ceros = [ceros obtenerNumeroDeUnCampoTexto(gcbo)]");
	endif
	xVariable = xVariable + 70;
end

yVariable = 230;

uicontrol(h, "style", "text", "string", "Ingrese la gananacia:", "position",[20 yVariable 200 20], "horizontalalignment", "left");
uicontrol(h, "style", "edit", "position",[20 yVariable-30 100 20], "horizontalalignment", "left", "callback", "ganancia = obtenerNumeroDeUnCampoTexto(gcbo)");

uicontrol(h, "style", "pushbutton", "string", "Continuar->", "position", [450 20 80 30], "callback", "delete(gcf),funcionTransferencia = obtenerLaFuncionTransferenciaIndicandoPZG(polos,ceros,ganancia),menuFuncionalidadesPZK(funcionTransferencia)");
botonCerrarVentana(h, 340, 20);
botonVolverAlMenuPrincipal(h, 170, 20);

endfunction