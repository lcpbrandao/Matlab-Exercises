function a_bell = bell(n)
if n <= 0
    a_bell = [];
    return;
end
if uint32(n) ~= n
    a_bell = [];
    return;
end  
if n == 1
    a_bell = 1;
else
ii = 1;
jj = 2;
a_bell(1,1) = 1;
a_bell(2,1) = 1;
k = 0;
while k < n-1
    for a = 0:k
        a_bell(ii-a,jj+a) = a_bell(ii-a,jj+a-1) + a_bell(ii+1-a,jj+a-1);
    end
    if ii < n-1
        a_bell(3+a,1) = a_bell(1,2+a);
    end
    ii = ii + 1;
    k = k + 1;
    end
end
end