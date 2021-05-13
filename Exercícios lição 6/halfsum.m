function sum = halfsum(A)
[a,b] = size(A);
sum = 0;
ii = 1;
jj = 1;
for ii = 1:a
    for jj = 1:b
        if ii <= jj
            sum = sum + A(ii,jj);
        end
    end
end
end
    