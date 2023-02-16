function v = insertion_sort(vec)
    if(size(vec, 1) > 1)
        error('Debes pasar un array como argumento');
    end
    if(isempty(vec))
        error('El array debe contener mas de un elemento');
    end

    n = length(vec);

    for j = 2:n
        k = j - 1;
        key = vec(j);

        while k >= 1 && vec(k) > key
            vec(k + 1) = vec(k);
            k = k - 1;
        end
        vec(k + 1) = key;
    end
    v = vec;
end