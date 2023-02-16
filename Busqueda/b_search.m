% Implementacion de la busqueda binaria en matlab

function index = b_search(vec, val)
    if(size(vec, 1) > 1)
        error('Debes pasar un array como argumento');
    end
    if(isempty(vec))
        error('El array debe contener mas de un elemento');
    end

    l = 1;
    r = length(vec);
    flag = 0;

    while l <= r
        mid = ceil((l + r) / 2);

        if vec(mid) == val
            index = mid;
            flag = 1;
            break;
        else
            if vec(mid) > val
                r = mid - 1;
            else
                l = mid + 1;
            end
        end
    end

    if flag == 0
        index = -1;
    end
end