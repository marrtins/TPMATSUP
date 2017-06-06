function botonCerrarVentana(h, posicionX, posicionY)
%recibo la ventana donde quiero poner el boton y las posiciones en x e y
posicion = [posicionX posicionY 100 30]
uicontrol(h, "style", "pushbutton", "string", "Cerrar", "position", posicion, "callback", "closereq()");