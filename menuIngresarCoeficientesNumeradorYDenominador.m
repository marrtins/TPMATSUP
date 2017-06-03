function menuIngresarCoeficientesNumeradorYDenominador(gradoNumerador, gradoDenominador)

h = dialog("name", "Ingresar coeficientes del numerador y denominador");
uicontrol(h, "style", "text", "string", "Ingrese los coeficientes del numerador:", "position",[20 400 250 20], "horizontalalignment", "left");

xVariable = 20;
yVariable = 380;

coefNumerador = [];
coefDenominador = [];

for i = 0:gradoNumerador
	string = strcat("Coef. ", num2str(gradoNumerador-i));
	string = strcat(string, ": ");
	uicontrol(h, "style", "text", "string", string, "position",[xVariable yVariable 50 10], "horizontalalignment", "left");
	if(i == 0)
	uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "coefNumerador = obtenerNumeroDeUnCampoTexto(gcbo)");
	else
	uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "coefNumerador = [coefNumerador obtenerNumeroDeUnCampoTexto(gcbo)]");	
	endif
	xVariable = xVariable + 70;
end

uicontrol(h, "style", "text", "string", "Ingrese los coeficientes del numerador:", "position",[20 320 250 20], "horizontalalignment", "left");

xVariable = 20;
yVariable = 300;

for i = 0:gradoDenominador
	string = strcat("Coef. ", num2str(gradoDenominador - i));
	string = strcat(string, ": ");
	uicontrol(h, "style", "text", "string", string, "position",[xVariable yVariable 50 10], "horizontalalignment", "left");
	if(i == 0)
	uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "coefDenominador = obtenerNumeroDeUnCampoTexto(gcbo)");
	else
		uicontrol(h, "style", "edit", "position",[xVariable yVariable-30 50 20], "horizontalalignment", "left", "callback", "coefDenominador = [coefDenominador obtenerNumeroDeUnCampoTexto(gcbo)]");
	endif
	xVariable = xVariable + 70;
end

uicontrol(h, "style", "pushbutton", "string", "Continuar->", "position", [450 20 80 30], "callback", "delete(gcf), funcionTransferencia = obtenerLaFuncionTransferencia(coefNumerador,coefDenominador),menuFuncionalidadesPorCoeficientes(funcionTransferencia)");
botonCerrarVentana(h, 340, 20);
botonVolverAlMenuPrincipal(h, 170, 20);

endfunction