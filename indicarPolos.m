function indicarPolos(funcionTransferencia)

altoVariable = 370; 
denominador = funcionTransferencia.den{1};
polos = roots(denominador);


h = dialog("name", "Indicador de Polos");

botonCerrarVentana(h, 400, 20);
uicontrol(h, "style", "text", "string", "Estos son los Polos de la funcion:", "position",[20 400 250 10], "horizontalalignment", "left");


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

endfunction