function [vector] = sort3(a,b,c)
if (a <= b && b <= c)
    vector = [a b c];
else
    if (b <= c && c <= a)
        vector = [b c a];
    else
        if (c <= a && a <= b)
            vector = [c a b];
        else
            if (a <= c && c <= b)
                vector = [a c b];
            else
                if (b <= a && a <= c)
                    vector = [b a c];
                else
                    if (c <= b && b <= a)
                        vector = [c b a];
                    end
                end
            end
        end
    end
end

