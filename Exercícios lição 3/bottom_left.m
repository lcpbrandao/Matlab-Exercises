function [a] = bottom_left(M,n)
a = M((end-n+1):1:end,1:1:n);
end