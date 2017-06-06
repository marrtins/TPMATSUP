function menuTodasLasCaracteristicas (funcionTransferencia)

h = dialog ("name", "Caracteristicas");
posicionY = 270;

%MUESTRA LA FUNCION TRANSFERENCIA
f = evalc('funcionTransferencia');
 uicontrol(h, "style", "text", "string", f, "position",[10 posicionY 250 150], "horizontalalignment", "left");
 
 %MUESTRA LOS POLOS DE LA FUNCION
denominador = funcionTransferencia.den{1};
polos = roots(denominador);
posicionY = posicionY -20;
 
 for i = 0:length(polos)-1
	c = i + 1;
	string = strcat("polo ", num2str(c));
	string = strcat(string, ":  ");
	string = strcat(string, num2str(polos(c)));
	uicontrol(h, "style", "text", "string", string, "position",[20 posicionY 150 15], "horizontalalignment", "left");
	posicionY = posicionY - 20;
end
 
 %MUESTRA LOS CEROS DE LA FUNCION
numerador = funcionTransferencia.num{1};
ceros = roots(numerador);

for i = 0:length(ceros)-1
	c = i + 1;
	string = strcat("cero ", num2str(c));
	string = strcat(string, ":  ");
	string = strcat(string, num2str(ceros(c)));
	uicontrol(h, "style", "text", "string", string, "position",[20 posicionY 150 10], "horizontalalignment", "left");
	posicionY = posicionY - 20;
end

%MUESTRA SI ES ESTABLE O INESTABLE
rta = 0;
polosMenoresACero = 0;

for i = 0:length(polos)-1
	c = i + 1;
  if(real(polos(c))>0)
    uicontrol(h, "style", "text", "string", "El sistema es INESTABLE", "position",[20 posicionY-20  250 10], "horizontalalignment", "left");
    i = length(polos)-1;
    rta = 1;
  endif
  if(real(polos(c))<0)
    polosMenoresACero = polosMenoresACero + 1;
  endif
  
end
  
if (rta==0)
    if(polosMenoresACero < length(polos))
       uicontrol(h, "style", "text", "string", "El sistema es MARGINALMENTE ESTABLE", "position",[20 posicionY-20 250 10], "horizontalalignment", "left");
    elseif(polosMenoresACero ==length(polos))
       uicontrol(h, "style", "text", "string", "El sistema es ABSOLUTAMENTE ESTABLE", "position",[20 posicionY-20 250 10], "horizontalalignment", "left");
    endif
endif

%BOTON PARA ABRIR LA DISTRIBUCION DE POLOS Y CEROS
uicontrol (h,"style", "pushbutton", "string", "Distribucion de polos y ceros", "position",[20 posicionY-80 200 40], "callback", "distribucionPolosYCeros(funcionTransferencia)");

botonCerrarVentana(h, 400, 20 );

endfunction