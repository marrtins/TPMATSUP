function mostrarFuncionTransferenciaPZG(funcionTransferencia)
  
h = dialog("name", "FunciÛn Transferencia con Polos Ganancia y zeros");

botonCerrarVentana(h, 400, 20);

f = evalc('funcionTransferencia');
uicontrol(h, "style", "text", "string", f, "position",[10 250 400 150], "horizontalalignment", "left");

altoVariable = 200; 
numerador = funcionTransferencia.num{1};
ceros = roots(numerador);
uicontrol(h, "style", "text", "string", "Estos son los Ceros de la funcion:", "position",[20 220 250 10], "horizontalalignment", "left");

for i = 0:length(ceros)-1
	c = i + 1;
	string = strcat("Cero ", num2str(c));
	string = strcat(string, ":  ");
	string = strcat(string, num2str(ceros(c)));
	uicontrol(h, "style", "text", "string", string, "position",[20 altoVariable 150 10], "horizontalalignment", "left");
	altoVariable = altoVariable - 20;
end

denominador = funcionTransferencia.den{1};
polos = roots(denominador);
uicontrol(h, "style", "text", "string", "Estos son los Polos de la funcion:", "position",[20 altoVariable 250 10], "horizontalalignment", "left");
altoVariable = altoVariable - 20;

for i = 0:length(polos)-1
	c = i + 1;
	string = strcat("Polo  ", num2str(c));
	string = strcat(string, ":  ");
	string = strcat(string, num2str(polos(c)));
	disp(polos(c));
	uicontrol(h, "style", "text", "string", string, "position",[20 altoVariable 150 15], "horizontalalignment", "left");
	altoVariable = altoVariable - 20;
end

endfunction
