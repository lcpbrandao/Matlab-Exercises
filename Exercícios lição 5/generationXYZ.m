function [gen] = generationXYZ(y)
if y < 1966
    gen = 'O';
else
    if y >= 1966 && y <= 1980
        gen = 'X';
    else
        if y >= 1981 && y <= 1999
            gen = 'Y';
        else
            if y >= 2000 && y <= 2012
                gen = 'Z';
            else gen = 'K';
            end
        end
    end
end

