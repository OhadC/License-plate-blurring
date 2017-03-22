function p = minimum(one, two, three)
    if one < two
        p = one;
    else
        p = two;
    end

    if p > three
        p = three;
    end
end

