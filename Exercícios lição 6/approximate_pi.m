function [value,a] = approximate_pi(delta)
value = 0;
for k = 0:10000000
    value = value + sqrt(12)*(((-3)^(-k))/(2*k+1));
    if abs(pi - value) <= delta
        a = k;
        break;
    end
end
end