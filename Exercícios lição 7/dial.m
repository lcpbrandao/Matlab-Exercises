function Y = dial(X)
N = length(X);
in = double(X);
for ii = 1:N
    if in(ii) == 65 || in(ii) == 66 || in(ii) == 67
        out(ii) = 50;
    else
        if in(ii) == 68 || in(ii) == 69 || in(ii) == 70
             out(ii) = 51;
        else
            if in(ii) == 71 || in(ii) == 72 || in(ii) == 73
                out(ii) = 52;
            else
                if in(ii) == 74 || in(ii) == 75 || in(ii) == 76
                    out(ii) = 53;
                else
                    if in(ii) == 77 || in(ii) == 78 || in(ii) == 79
                        out(ii) = 54;
                    else
                        if in(ii) == 80 || in(ii) == 82 || in(ii) == 83
                            out(ii) = 55;
                        else
                            if in(ii) == 84 || in(ii) == 85 || in(ii) == 86
                                out(ii) = 56;
                            else
                                if in(ii) == 87 || in(ii) == 88 || in(ii) == 89
                                    out(ii) = 57;
                                else
                                    if in(ii) == 40 || in(ii) == 41 || in(ii) == 45
                                        out(ii) = 32;
                                    else
                                        if in(ii) == 32 || in(ii) == 35 || in(ii) == 42 || (in(ii) >= 48 && in(ii) <= 57) 
                                            out(ii) = in(ii);
                                            continue;
                                        else
                                            out = [];
                                            break;
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
Y = char(out);
end
