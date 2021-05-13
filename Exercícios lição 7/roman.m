function arabicuint8 = roman(R)
rom = double(R);
arabic = 0;
if length(rom) == 1  %1 LETRA
    if rom(1) == 73
        arabic = 1;
    else
        if rom(1) == 86
            arabic = 5;
        else
            if rom(1) == 88
                arabic = 10;
            else
                arabic = 0;
            end
        end
    end
else
    if length(rom) == 2   %2 LETRAS
        if rom(1) == 73
            if rom(2) == 73
                arabic = 2;
            else
                if rom(2) == 86
                    arabic = 4;
                else
                    if rom(2) == 88
                        arabic = 9;
                    else
                        arabic = 0;
                    end
                end
            end
        else
            if rom(1) == 86
                if rom(2) == 73
                    arabic = 6;
                else
                    arabic = 0;
                end
            else
                if rom(1) == 88
                    if rom(2) == 73
                        arabic = 11;
                    else
                        if rom(2) == 86
                            arabic = 15;
                        else
                            if rom(2) == 88
                                arabic = 20;
                            else
                                arabic = 0;
                            end
                        end
                    end
                end
            end
        end
    else
        if length(rom) == 3   %3 LETRAS
            if rom(1) == 73 && rom(2) == 73
                arabic = 3;
            else
                if rom(1) == 86 && rom(2) == 73
                    arabic = 7;
                else
                    if rom(1) == 88 && rom(2) == 73
                        if rom(3) == 73
                            arabic = 12;
                        else
                            if rom(3) == 86
                                arabic = 14;
                            else
                                arabic = 19;
                            end
                        end
                    else
                        if rom(1) == 88 && rom(2) == 86
                            arabic = 16;
                        else
                            arabic = 0;
                        end
                    end                      
                end
            end
        else
            if length(rom) == 4   %4 LETRAS
                if rom(1) == 86 && rom(2) == 73 && rom(3) == 73 && rom(4) == 73
                    arabic = 8;
                else
                    if rom(1) == 88 && rom(2) == 73 && rom(3) == 73 && rom(4) == 73
                        arabic = 13;
                    else
                        if rom(1) == 88 && rom(2) == 86 && rom(3) == 73 && rom(4) == 73
                            arabic = 17;
                        else
                            arabic = 0;
                        end
                    end
                end
            else
                if length(rom) == 5   %5 LETRAS
                    if rom(1) == 88 && rom(2) == 86 && rom(3) == 73 && rom(4) == 73 && rom(5) == 73
                        arabic = 18;
                    else
                        arabic = 0;
                    end
                end
            end
        end
    end
end
if length(R) > 5
    arabic = 0;
end
arabicuint8 = uint8(arabic);
end    