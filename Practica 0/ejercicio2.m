% Ejercicio 2
function ejercicio2()
    cota_superior(1000)
    cota_inferior(1000)
end

function c = cota_superior(cota)
    indice = 0;
    s = 0;

    while s < cota
        indice = indice + 1;
        s = s + indice;
    end

    c = indice;
end

function c = cota_inferior(cota)
    indice = 0;
    s = 0;

    while s < cota
        indice = indice + 1;
        s = s + indice;
    end

    c = indice + 1;
end