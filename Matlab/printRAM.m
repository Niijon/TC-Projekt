function printRAM(img,name)
[r, c, bD] = size(img);
fid=fopen(name, 'w');
fprintf(fid,'v2.0 raw\n');
for i = 1:r
    for j = 1:c
        %Red
        if(img(i,j,1)<16)
            hr = dec2hex(img(i,j,1));
            
            if(img(i,j,1)==0)
                fprintf(fid,'00');
            else
                fprintf(fid,'%x', hr);
            end
        else
            fprintf(fid,'%x', img(i,j,1));
        end
        
        %Green
        if(img(i,j,2)<16)
            hg = dec2hex(img(i,j,2));
            
            if(img(i,j,2)==0)
                fprintf(fid,'00');
            else
                fprintf(fid,'%x', hg);
            end
        else
            fprintf(fid,'%x', img(i,j,2));
        end
        
        %Blue
        if(img(i,j,3)<16)
            hb = dec2hex(img(i,j,3));
            
            if(img(i,j,3)==0)
                fprintf(fid,'00\n');
            else
                fprintf(fid,'%x\n', hb);
            end
            
        else
            fprintf(fid,'%x\n', img(i,j,3));
        end
    end
end
fclose(fid);

end