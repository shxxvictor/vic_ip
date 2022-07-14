clear all;
clc;
filenames = dir('*.bmp');

len = length(filenames);

for i = 1:len
    bmp = imread(filenames(i).name);
    name = filenames(i).name;
    new_name = strrep(name,'.bmp','.png');
    imwrite(bmp, new_name);
end
