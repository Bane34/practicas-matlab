function f = Funcion2(nodos)
    
    for i = 1:length(nodos)
        nodos(i) = nodos(i) ^ 2;
    end

    f = nodos;
end