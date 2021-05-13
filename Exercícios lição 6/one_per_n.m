function n = one_per_n(x)
sum = 0;
for a = 1:10000
    sum = sum + 1/a;
    if sum >= x
        n = a;
        break;
    end
end
if sum < x
    n = -1;
end
end