function funcionTransferenciaIndicandoPZG = obtenerLaFuncionTransferenciaIndicandoPZG ()
polos = [];
ceros = [];
cantPolos = input("Ingrese cantidad de polos: ")
for i = 1:cantPolos

	x =   i
	fprintf("Ingrese polo n° %d: ", x);
	polo = input("");
	polos = [polos,polo];
  
end

cantCeros = input("Ingrese cantidad de ceros: ");
for i = 1:cantCeros

	x =  i
	fprintf("Ingrese cero n° %d: ", x);
	cero = input("");
	ceros= [ceros,cero];
  
end
ganancia = input("Ingrese ganancia: ");

funcionTransferenciaIndicandoPZG = zpk(ceros,polos,ganancia);

#Z = CEROS P = POLOS K=GANANCIa -- Esta funcion devuelve esos 3 datos.
[z,p,k] = zpkdata(funcionTransferenciaIndicandoPZG)


endfunction

