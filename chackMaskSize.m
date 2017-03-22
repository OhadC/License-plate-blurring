function isBlurable = chackMaskSize(mask)

[r c z] = size(mask);
counter=0;
for i=1:r
        for j=1:c
            if (mask(i,j)==1)
                counter= counter + 1;
            end
        end
end

 maskSize= counter/(r*c);
 
 if maskSize> 0.15
     isBlurable = false;
 else 
     isBlurable = true;
 
end