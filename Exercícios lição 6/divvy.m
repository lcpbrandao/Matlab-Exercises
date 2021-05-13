function B = divvy(A,k)
x = (rem(A,k)~=0);
y = (rem(A,k)==0);
B = A.*x.*k + A.*y;
end
