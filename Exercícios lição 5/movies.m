function [X] = movies(hr1,min1,durmin1,hr2,min2,durmin2)
ini1 = hr1*60 + min1;
ini2 = hr2*60 + min2;
if (ini2 >= ini1 + durmin1) && (ini2 <= 30 + ini1 + durmin1) 
    X = 1;
elseif (ini2 + durmin2 > ini1 + durmin1) && (ini2 + durmin2 <= 30 + ini1 + durmin1)
        X = 1;
else X = 0;
end