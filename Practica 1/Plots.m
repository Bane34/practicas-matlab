
nodos = [-2:0.1:2];
t = Funcion1(nodos);
r = Funcion2(nodos);

% Pintar dos funciones al mismo tiempo
plot(nodos, t);
hold on;
plot(nodos, r);

% Pintar las funciones una encima de otra
subplot(2,3,1), plot(nodos, t);
subplot(2,3,5), plot(nodos, r);

resultados(:,1) = t;
resultados(:,2) = r;

for i = 1:6
    subplot(2, 3, i), plot(nodos, resultados, 'r--'); % `r--` -> pintar discontinuo y en rojo
end
