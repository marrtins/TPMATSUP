function indicarCeros(funcionTransferencia)
altoVariable = 370; %altura que va a ir variando
numerador = funcionTransferencia.num{1}; %tomo el numerador de la funcion de transferencia
ceros = roots(numerador); %tomo los ceros de la funcion
h = dialog("name", "Indicador de Ceros");
uicontrol(h, "style", "text", "string", "Estos son los Ceros de la funcion:", "position",[20 400 250 10], "horizontalalignment", "left");
for i = 0:length(ceros)-1 %desde cero a n-1
	c = i + 1;
	string = strcat("cero ", num2str(c)); %me quedaría (en la primera vuelta) "cero 1"
	string = strcat(string, ":  "); %me quedaría (en la primera vuelta) "cero 1: "
	string = strcat(string, num2str(ceros(c))); %me quedaria (en la primera vuelta) "cero1: valorDelCero"
	%lo que sigue, genera los labels, y por cada vuelta le resta 20 a la altura, para que quede uno abajo del otro
	%le puse la propiedad "horizontalalignment" con valor "left" para que todos queden alineados a izquierda
	uicontrol(h, "style", "text", "string", string, "position",[20 altoVariable 150 10], "horizontalalignment", "left");
	altoVariable = altoVariable - 20;
end

endfunction