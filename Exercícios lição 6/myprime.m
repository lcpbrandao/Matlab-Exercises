function ans = myprime(n)
value = 0;
for k = 2:n-1
    if rem(n,k) == 0
        value = value + 1;
    end
end
if value > 0
    ans = 0;
else
    ans = 1;
end
end