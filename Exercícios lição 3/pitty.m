function [c] = pitty(ab)
a = (ab(1:1:end,1)).^2+(ab(1:1:end,2)).^2;
c = sqrt(a);
end
