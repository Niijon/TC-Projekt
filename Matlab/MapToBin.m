function x = MapToBin(map)
    r = size(map,1);
    prc = 5;%precision
    x=zeros(r,3);
    
    for i = 1:r
        d2b = fix(map(i,1)*pow2(prc));
        x(i,1) = d2b;
        d2b = fix(map(i,2)*pow2(prc));
        x(i,2) = d2b;
        d2b = fix(map(i,3)*pow2(prc));
        x(i,3) = d2b;
    end

end