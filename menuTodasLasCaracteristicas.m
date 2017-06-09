function menuTodasLasCaracteristicas (funcionTransferencia)

h = dialog ("name", "Caracteristicas de la funcion");
posicionY = 270;

%MUESTRA LA FUNCION TRANSFERENCIA
f = evalc('funcionTransferencia');
 uicontrol(h, "style", "text", "string", f, "position",[20 posicionY 400 150], "horizontalalignment", "left");
 
 %MUESTRA LOS POLOS DE LA FUNCION
denominador = funcionTransferencia.den{1};
polos = roots(denominador);
posicionY = posicionY -10;
uicontrol(h, "style", "text", "string", "Estos son los polos de la funcion", "position",[20 posicionY 200 15], "horizontalalignment", "left");
posicionY = posicionY -20;
 
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
	uicontrol(h, "style", "text", "string", string, "position",[20 posicionY 150 15], "horizontalalignment", "left");
	posicionY = posicionY - 20;
end
 
 %MUESTRA LOS CEROS DE LA FUNCION
 posicionY = posicionY - 10;
 uicontrol(h, "style", "text", "string", "Estos son los ceros de la funcion", "position",[20 posicionY 200 15], "horizontalalignment", "left");
numerador = funcionTransferencia.num{1};
ceros = roots(numerador);
posicionY = posicionY - 20;

for i = 0:length(ceros)-1
	c = i + 1;
	string = strcat("cero ", num2str(c));
	string = strcat(string, ":  ");
	string = strcat(string, num2str(ceros(c)));
	uicontrol(h, "style", "text", "string", string, "position",[20 posicionY 150 10], "horizontalalignment", "left");
	posicionY = posicionY - 20;
end

posicionY = posicionY - 10;
uicontrol(h, "style", "text", "string", "Esta es la ganancia de la funcion:", "position",[20 posicionY 200 15], "horizontalalignment", "left");
posicionY = posicionY - 20;
[z,p,k] = tf2zp(funcionTransferencia);
ganancia = num2str(k);
ganancia = strcat("k:", ganancia);
uicontrol(h, "style", "text", "string", ganancia, "position",[20 posicionY 150 10], "horizontalalignment", "left");

%MUESTRA SI ES ESTABLE O INESTABLE
rta = 0;
polosMenoresACero = 0;

for i = 0:length(polos)-1
	c = i + 1;
  if(real(polos(c))>0)
    uicontrol(h, "style", "text", "string", "El sistema es INESTABLE", "position",[20 posicionY-30  250 10], "horizontalalignment", "left");
    i = length(polos)-1;
    rta = 1;
  endif
  if(real(polos(c))<0)
    polosMenoresACero = polosMenoresACero + 1;
  endif
  
end
  
if (rta==0)
    if(polosMenoresACero < length(polos))
       uicontrol(h, "style", "text", "string", "El sistema es MARGINALMENTE ESTABLE", "position",[20 posicionY-30 250 10], "horizontalalignment", "left");
    elseif(polosMenoresACero ==length(polos))
       uicontrol(h, "style", "text", "string", "El sistema es ABSOLUTAMENTE ESTABLE", "position",[20 posicionY-30 250 10], "horizontalalignment", "left");
    endif
endif

%BOTON PARA ABRIR LA DISTRIBUCION DE POLOS Y CEROS
uicontrol (h,"style", "pushbutton", "string", "Distribucion de polos y ceros", "position",[20 posicionY-80 200 40], "callback", "distribucionPolosYCeros(funcionTransferencia)");

botonCerrarVentana(h, 400, 20 );

endfunction