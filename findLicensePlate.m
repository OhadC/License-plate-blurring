function mask = findLicensePlate(RGB)
    HSV = rgb2hsv(RGB);

    [r c z] = size(RGB);
    mask = im2bw(RGB);
    

    for i=1:r
        for j=1:c
            H = HSV(i,j,1);
            S = HSV(i,j,2);
            V = HSV(i,j,3);

            if (H*360 > 30) && (H*360 < 60) &&(S*100 > 60) && (V*100 > 30)
                mask(i,j) = 1;
            else
                mask(i,j) = 0;
            end
        end
    end
    
    mask = bwmorph(mask,'close');
    mask = imfill(mask,'holes');
    mask = bwmorph(mask,'open');
    mask = bwmorph(mask,'close');
     

    %figure, imagesc(mask);
    %colormap gray
end