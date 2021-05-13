function coded = codeit(txt)
a = length(txt);
for ii = 1:a
    if txt(ii) >= 97 && txt(ii) <= 122
        new(ii) = txt(ii)+25;
        if new(ii) > 122
            new(ii) = new(ii) - ((new(ii) - 122)*2);
        end
    else
        if txt(ii) >= 65 && txt(ii) <= 90
            new(ii) = txt(ii)+25;
            if new(ii) > 90
                new(ii) = new(ii) - ((new(ii) - 90)*2);
            end
        else
            new(ii) = txt(ii);
        end
    end
end
coded = char(new);
end