function output = applyMask(image1, image2, mask)

    [r c z] = size(image1);
    output = image1;

    for i=1:r
        for j=1:c
            if mask(i, j) == 1
                output(i,j,:) = image2(i,j,:);
            end
        end
    end
   
end

