function Z = classify(x)
[a b] = size(x);
if a == b && a == 1
    Z = 0;
elseif (a == 1 && b > 1) || (b == 1 && a > 1)
    Z = 1;
elseif a == 0 && b == 0
    Z = -1;
elseif (a > 0 && b == 0) || (b > 0 && a == 0)
    Z = -1;
else Z = 2;
end