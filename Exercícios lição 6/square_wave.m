function sum = square_wave(n)
t = 0:(4*pi/1000):(4*pi);
sum = 0;
for k = 1:n
    sum = sum + sin((2*k - 1)*t)/(2*k - 1);
end
end