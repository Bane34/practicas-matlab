function f = Funcion1(nodos)
    
    for i = 1:length(nodos)
        nodos(i) = 1 / (1 + nodos(i) ^ 2);
    end

    f = nodos;
end