function [ma] = moving_average(x)
persistent buffer;
persistent count;
if isempty(buffer), buffer = zeros(1,25); end
if isempty(count), count = 0; end

count = count + 1;

buffer(1,1)=buffer(1,2); buffer(1,2)=buffer(1,3);
buffer(1,3)=buffer(1,4); buffer(1,4)=buffer(1,5);
buffer(1,5)=buffer(1,6); buffer(1,6)=buffer(1,7);
buffer(1,7)=buffer(1,8); buffer(1,8)=buffer(1,9);
buffer(1,9)=buffer(1,10); buffer(1,10)=buffer(1,11);
buffer(1,11)=buffer(1,12); buffer(1,12)=buffer(1,13);
buffer(1,13)=buffer(1,14); buffer(1,14)=buffer(1,15);
buffer(1,15)=buffer(1,16); buffer(1,16)=buffer(1,17);
buffer(1,17)=buffer(1,18); buffer(1,18)=buffer(1,19);
buffer(1,19)=buffer(1,20); buffer(1,20)=buffer(1,21);
buffer(1,21)=buffer(1,22); buffer(1,22)=buffer(1,23);
buffer(1,23)=buffer(1,24); buffer(1,24)=buffer(1,25);
buffer(1,25)=x;

if count < 25
    ma = sum(buffer)/count;
elseif count >= 25
    ma = sum(buffer)/25; 
end

A = buffer
B = count
