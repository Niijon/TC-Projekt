function RAMview(path)
fid = fopen(path);
cac = textscan(fid, '%s', 'Headerlines', 1, 'CollectOutput',8);
fclose(fid);

cell = cac{1,1};
list = char(cac{1,1});
vec = [];

for id = 1:size(list,1)
    reg = strfind(cell(id),'*');
    reg = reg{1};
    s = strlength(cell(id));
    if(reg>0)
        times = str2num(list(id,1:reg-1));
        [R, G, B] = RGB(list(id,(reg+1):s),(s-reg));
        for i=1:times
            vec = [vec; R G B];
        end
    else
        [R, G, B] = RGB(list(id,1:s),s);
        vec = [vec; R G B];
    end 
end


pic = arraytomatrix(vec);
pic = uint8(pic);
figure;
imshow(pic);

end