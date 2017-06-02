function botonCerrarVentana(h, posicion)
%recibo la ventana donde quiero poner el boton, y la posicion que quiero que tenga el boton en la pantalla
%consejo: la posicion generalmente seria [400 20 100 20]
uicontrol(h, "style", "pushbutton", "string", "Cerrar", "position", posicion, "callback", "delete(gcf)");