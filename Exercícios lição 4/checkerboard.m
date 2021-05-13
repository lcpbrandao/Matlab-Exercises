function [board] = checkerboard(n,m)
board(1:2:n,1:2:m) = 1;
board(2:2:n,2:2:m) = 1;
fprintf('%d\n;board');
end
