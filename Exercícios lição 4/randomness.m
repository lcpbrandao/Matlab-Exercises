function [M] = randomness(limit, n, m)
a = 1+rand(n,m)*(limit);
M = floor(a);
fprintf('%d\n;M');
end