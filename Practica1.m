% Programa para comprobar en que termino
% La suma de los primeros n numeros naturales es menor que una cota

function Practica1()
    serie(44)
    suma(44)
    serie(45)
    suma(45)
    [min_f, max_f] = cota(1000);
    min_f
    max_f
end

function term = serie(n)
    s = 0;

    for i = 1:n
        s = s + i;
    end
    term = s;
end

function s = suma(n)
    s = n* (n + 1) /2
end

function [min_term, max_term] = cota(n)
    contador = 0;
    s = 0;

    while s < n 
        contador = contador + 1;
        s = s + contador;
    end

    min_term = contador - 1;
    max_term = contador;
end
