function [mt s] = mtable(n,m)
a = [1:1:n]';
mt = [a*(1:1:m)];
s1 = sum(mt);
s = sum(s1);
fprintf('Soma: %d\n',s);
end