function [mm] = mean_squares(nn)
a = [1:1:nn].^2;
mm = sum(a)/nn;
end