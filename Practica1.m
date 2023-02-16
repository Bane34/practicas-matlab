% Creacion de una funcion
% En f se guarda el valor retornado
function f = suma(a, b)
    f = a + b;
end

% Funcion que calcula la suma de los n primeros elementos
function result = serie(n)
    sum = 0;

    for i = 1:n
        sum = sum + i
        pause % Pide un input de teclado para continuar
    end

    result = sum;
end
