function [R, G, B] = RGB(s,n)
    if(n == 6)
        R = uint8(hex2dec(s(1:2)));
        G = uint8(hex2dec(s(3:4)));
        B = uint8(hex2dec(s(5:6)));
    elseif(n==5)
        R = uint8(hex2dec(s(1)));
        G = uint8(hex2dec(s(2:3)));
        B = uint8(hex2dec(s(4:5)));
    elseif(n==4)
        R = 0;
        G = uint8(hex2dec(s(1:2)));
        B = uint8(hex2dec(s(3:4)));
    elseif(n==3)
        R = 0;
        G = uint8(hex2dec(s(1)));
        B = uint8(hex2dec(s(2:3)));
    elseif(n==2)
        R = 0;
        G = 0;
        B = uint8(hex2dec(s(1:2)));
    elseif(n==1)
        R = 0;
        G = 0;
        B = uint8(hex2dec(s(1)));
    else
        R = 0;
        G = 0;
        B = 0;   
    end
end