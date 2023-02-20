% Ejercicio 1

function ejercicio1()
    serie1(1000);
    serie2(1000);
    serie3(1000);
end

function s = serie1(n)
    suma = 0;
    for i = 1:n
        suma = suma + i;
    end

    s = suma;
end

function s = serie2(n)
    suma = 0;
    for i = -5:n
        suma = suma + i;
    end

    s = suma;
end

function s = serie3(n)
    suma = 0;
       
    for i = 0:n
        suma = suma + (4 * i + 1);
    end

    s = suma;
end