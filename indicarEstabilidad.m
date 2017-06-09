function indicarEstabilidad(funcionTransferencia)
  
denominador = funcionTransferencia.den{1};
polos = roots(denominador);
rta = 0;
polosMenoresACero = 0;


h = dialog("name", "Indicador de Estabilidad");

for i = 0:length(polos)-1
	c = i + 1;
  if(int64(real(polos(c)))>0)
    uicontrol(h, "style", "text", "string", "El sistema es INESTABLE", "position",[20 400 250 10], "horizontalalignment", "left");
    i = length(polos)-1;
    rta = 1;
  endif
  if(int64(real(polos(c)))<0)
    polosMenoresACero = polosMenoresACero + 1;
  endif
  
end
  
if (rta==0)
    if(polosMenoresACero < length(polos))
       uicontrol(h, "style", "text", "string", "El sistema es MARGINALMENTE ESTABLE", "position",[20 400 250 10], "horizontalalignment", "left");
    elseif(polosMenoresACero ==length(polos))
       uicontrol(h, "style", "text", "string", "El sistema es ABSOLUTAMENTE ESTABLE", "position",[20 400 250 10], "horizontalalignment", "left");
    endif
endif

botonCerrarVentana(h, 400, 20);

endfunction
