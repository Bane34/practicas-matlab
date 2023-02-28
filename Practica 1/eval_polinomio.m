% Evaluacion de polinomios mediante el metodo de Horner
function c = eval_polinomio(coeficientes, val)
    % Suponemos que hay mas de 1 coeficiente con dimension 1xn
    % Los vectores seran de la forma: 
    % [a_n, a_n-1, ..., a_0] donde a_n * x^n + a_n-1 * x^n-1 + ··· + a_0

    n = length(coeficientes);
    q = coeficientes(1);

    for i = 2:n
        q = val.*q + coeficientes(i);
    end
    
    c = q;    
end