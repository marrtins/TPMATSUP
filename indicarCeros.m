function indicarCeros(funcionTransferencia)

altoVariable = 370; 
numerador = funcionTransferencia.num{1};
ceros = roots(numerador);


h = dialog("name", "Indicador de Ceros");
botonVolverAlMenuPrincipal(h, 400, 20);
botonCerrarVentana(h, 330, 20);
uicontrol(h, "style", "text", "string", "Estos son los Ceros de la funcion:", "position",[20 400 250 10], "horizontalalignment", "left");


for i = 0:length(ceros)-1
	c = i + 1;
	string = strcat("cero ", num2str(c));
	string = strcat(string, ":  ");
	string = strcat(string, num2str(ceros(c)));
	uicontrol(h, "style", "text", "string", string, "position",[20 altoVariable 150 10], "horizontalalignment", "left");
	altoVariable = altoVariable - 20;
end

endfunction