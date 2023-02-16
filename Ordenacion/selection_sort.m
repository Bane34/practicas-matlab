function vec = selection_sort(vec)
    if(size(vec, 1) > 1)
        error('Debes pasar un array como argumento');
    end
    if(isempty(vec))
        error('El array debe contener mas de un elemento');
    end

    n = length(vec);

    for i = 1 : n - 1
        min_index = i;

        for j = i + 1 : n
            if vec(j) < vec(min_index)
                min_index = j;
            end
        end

        temp = vec(i);
        vec(i) = vec(min_index);
        vec(min_index) = temp;
    end
end