function funcionTransferencia = obtenerLaFuncionTransferencia ()
coeficientesDelNumerador = [];
coeficientesDelDenominador = [];
gradoDelNumerador = input("Ingrese el grado del numerador: ");
for i = 0:gradoDelNumerador

	x =  gradoDelNumerador - i
	fprintf("Ingrese el coeficiente de grado %d: ", x);
	coeficiente = input("");
	coeficientesDelNumerador = [coeficientesDelNumerador,coeficiente];
	end

gradoDelDenominador = input("Ingrese el grado del denominador: ");
for i = 0:gradoDelDenominador

	x =  gradoDelDenominador - i
	fprintf("Ingrese el coeficiente de grado %d: ", x);
	coeficiente = input("");
	coeficientesDelDenominador = [coeficientesDelDenominador,coeficiente];
	end

funcionTransferencia = tf(coeficientesDelNumerador,coeficientesDelDenominador);
endfunction