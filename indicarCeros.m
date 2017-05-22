function ceros = indicarCeros(funcionTransferencia)
numerador = funcionTransferencia.num{1};
ceros = roots(numerador);
endfunction