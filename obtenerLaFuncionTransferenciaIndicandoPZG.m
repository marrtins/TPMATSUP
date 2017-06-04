function funcionTransferenciaIndicandoPZG = obtenerLaFuncionTransferenciaIndicandoPZG (polos, ceros, ganancia)

funcionTransferenciaIndicandoPZG = zpk(ceros,polos,ganancia);

#Z = CEROS P = POLOS K=GANANCIa -- Esta funcion devuelve esos 3 datos.
#[z,p,k] = zpkdata(funcionTransferenciaIndicandoPZG)


endfunction

