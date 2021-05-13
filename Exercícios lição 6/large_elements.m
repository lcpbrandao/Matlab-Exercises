function Y = large_elements(X)
[a,b] = size(X);
Y = [];
r = 1;
for ii = 1:a
    for jj = 1:b
        if X(ii,jj) > ii+jj
            Y(r,1) = ii;
            Y(r,2) = jj;
            r = r + 1;
        else
            continue;
        end
    end
end
end
        