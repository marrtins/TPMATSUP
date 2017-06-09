function mostrarFuncionTransferenciaPZG(funcionTransferencia)
  
h = dialog("name", "Funcion Transferencia con Polos, Ceros y Ganancia");

botonCerrarVentana(h, 400, 20);

f = evalc('funcionTransferencia');
uicontrol(h, "style", "text", "string", f, "position",[10 270 400 150], "horizontalalignment", "left");

altoVariable = 220; 
numerador = funcionTransferencia.num{1};
ceros = roots(numerador);
uicontrol(h, "style", "text", "string", "Estos son los Ceros de la funcion:", "position",[20 240 250 10], "horizontalalignment", "left");

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
	poloReal = int64(real(polos(c)));
	poloImaginario = int64(imag(polos(c)));
	string = strcat("polo ", num2str(c));
	string = strcat(string, ":  ");
	string = strcat(string, num2str(poloReal));
	if(poloImaginario >= 0)
		string = strcat(string, "+");
	end
	string = strcat(string, num2str(poloImaginario));
	string = strcat(string, "i");
	uicontrol(h, "style", "text", "string", string, "position",[20 altoVariable 150 15], "horizontalalignment", "left");
	altoVariable = altoVariable - 20;
end

[z,p,k] = tf2zp(funcionTransferencia);
ganancia = num2str(k);
string = strcat("K: ", num2str(ganancia));

uicontrol(h, "style", "text", "string", "Esta es la Ganancia de la funcion:", "position",[20 altoVariable 250 10], "horizontalalignment", "left");
uicontrol(h, "style", "text", "string", string, "position",[20 altoVariable-20 250 10], "horizontalalignment", "left");

endfunction
