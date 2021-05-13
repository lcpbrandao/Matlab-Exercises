function [even,odd] = separate_by_two(A)
a = A(rem(A,2)==0);
b = A(rem(A,2)==1);
even = a';
odd = b';
end