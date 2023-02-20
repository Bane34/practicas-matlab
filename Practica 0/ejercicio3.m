% Ejercicio 3
function ejercicio3()   
    c_max(10, 20)
    c_min(10, 20)
    [m1, m2] = anidados(3, 4, 5, 3);
    m3 = ejercom1(4, 5);
    m4 = ejercom2(4, 5);
    m5 = ejercom3(4, 5);
    m5
end

% f1 y c1 -> nº de filas y nº de columnas de lazz primera matriz
% f2 y c2 -> nº de filas y nº de columnas de la segunda matriz
function [m1, m2] = anidados(f1, c1, f2, c2)
   mat1 = int8(zeros(f1, c1));
   mat2 = int8(zeros(f2, c2));

   % Construccion de la primera matriz
   for i = 1:f1
       for j = 1:c1
           mat1(i, j) = i + 3 * j;
       end
   end

   % Construccion de la segunda matriz
   for i = 1:f2
       for j = 1:c2
           if i <= j
               mat2(i, j) = -1;
           else
               mat2(i, j) = i + j ^ 2;
           end
       end
   end

   m1 = mat1;
   m2 = mat2;
end

function mat = ejercom1(f1, c1)
    m = int8(zeros(f1, c1));

    for j = 1:c1
        for i = j + 1:f1
            m(i, j) = i + 3 * j ^ 2;
        end
    end

    mat = m;
end

function mat = ejercom2(f1, c1)
    m = int8(zeros(f1, c1));

    for i = 1:f1
        for j = i:c1
            m(i, j) = i + 3 * j ^ 2;
        end
    end
    mat = m;
end

function mat = ejercom3(f1, c1)
    m = int8(zeros(f1, c1));

    for i = 1 : c_min(f1, c1)
        for j = c_max(f1, c1) : -1 : c_max(f1, c1) - i + 1
            m(i, j) = i + 3 * j ^ 2;
        end
    end

    mat = m;
end

function m = c_max(a, b)
    
    m = (a + b + abs(a - b)) / 2;

end

function m = c_min(a, b)
    
    m = (a - b + abs(a + b)) / 2;
end