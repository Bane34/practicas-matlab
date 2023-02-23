function Plots()
    nodos = [-1:0.5:1];
    t = Funcion1(nodos);
    r = Funcion2(nodos);

    plot(nodos, t);
    plot(nodos, r);
end