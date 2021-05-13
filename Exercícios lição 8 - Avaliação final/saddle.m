function indices = saddle(M)
[m,n] = size(M);
indices = [];
a = 1;
for jj = 1:n
    for ii = 1:m
        if M(ii,jj) == max(M(ii,:)) && M(ii,jj) == min(M(:,jj))
           indices(a,1) = ii;
           indices(a,2) = jj;
           a = a + 1;
        end
    end
end
end
