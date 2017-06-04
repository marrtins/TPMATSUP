% con el simbolo de porcentaje se comenta
%IMPORTANTE: el nombre del archivo tienen que tener el mismo nombre que el de la funcion, sino el archivo no funciona
%así se define una función void, que no recibe parametros
function prueba() 

% asi se define una funcion que devuelve "resultado" y recibe parametros
%function resultado = nombreFuncion(parametro1,parametro2,...,parametroN)

%esta funcion abre una ventana. Devuelve un puntero a esa ventana
%el parametro 'name' significa que le vamos a poner un nombre a la ventana, el segundo parametro es el valor.
h = dialog('name','nombre de la ventana');

%para poner botones, campos de texto, listas, etc. se utiliza la funcion siguiente (la funcion devuelve un puntero a ese elemento):
%b1 = uicontrol(punteroVentana, 'propiedad', 'valor', 'propiedad2', 'valor2',...,'propiedadN', 'valorN');

%ejemplo de boton:
%como dije, los parametros del uicontrol son: primero va el puntero a la ventana donde quiero crear el elemento
%despues, los parametros vienen de a pares 'parametro', 'valor', 'parametro2', 'valor2'
%en este caso, el primer parametro es el puntero a la ventana que cree
$el primer PAR de parametros es 'style', 'pushbutton' indica que el estilo del elemento es un botton apretable
%el segundo par de parametros es 'string', 'esto es un boton' que indica el string que se va a mostrar en el boton
%el ultimo par (quizas el mas importante) indica la posicion donde va a estar el elemento dentro de la ventana
%las ventanas son de 400 de alto, por 500 de largo (para que lo tengan en cuenta)
%el valor de 'position' en este caso es [10 400 100 20] que significa [posicionEnX posicionEnY largoDelElemento altoDelElemento]
b1 = uicontrol(h, 'style', 'pushbutton', 'string', 'esto es un boton', 'position', [10 400 100 20]);

%ejemplo de mostrar un texto
b2 = uicontrol(h, 'style', 'text', 'string', 'esto es un texto a mostrar', 'position', [10 370 100 20]);

%ejemplo de campo de texto
b3 = uicontrol(h, 'style', 'edit', 'position', [10 340 100 20]);

%el boton apretable que cree anteriormente no hace nada. para que cuando lo aprete, genere alguna funcionalidad
%tengo que usar la propiedad callback, y decirle que funciones se van a ejecutar
%delete(gcf) cierra la ventana actual
b4 = uicontrol(h, 'style', 'pushbutton', 'string', 'boton con funcionalidad', 'position', [10 300 120 20], 'callback', 'delete(gcf)')

