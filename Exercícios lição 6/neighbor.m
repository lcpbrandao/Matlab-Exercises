function w = neighbor(v)
[a,b] = size(v);
w = zeros(1,b-1);
if (b <= 1) || (a > 1)
    w = [];
else
for ii = 1:a
    for jj = 1:(b-1)
    w(ii,jj) = v(ii,jj+1) - v(ii,jj);
    if w(ii,jj) < 0
        w(ii,jj) = -w(ii,jj);
    end
    end
end
end
end

