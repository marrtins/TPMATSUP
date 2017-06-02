function botonVolverAlMenuPrincipal(h, posicionX, posicionY)
%recibo la ventana donde quiero poner el boton y las posiciones en x e y
posicion = [posicionX posicionY 160 30];
uicontrol(h, "style", "pushbutton", "string", "Ingresar Nueva Funcion", "position", posicion, "callback", "delete(gcf), menuPrincipal()");