function [I] = identity(n)
a = 1+rand(n)*5;
I = a*inv(a);
fprintf('Identidade %d x %d:\n',n,n);
end