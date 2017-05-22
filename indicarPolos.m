function polos = indicarPolos(funcionTransferencia)
denominador = funcionTransferencia.den{1};
polos = roots(denominador);
endfunction