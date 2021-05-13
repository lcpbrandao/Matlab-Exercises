function [s1, s2, sums] = sines(pts,amp,f1,f2)
if nargin == 3
    f2 = f1*1.05;
    t = [0:1:pts-1];
    s1 = amp*sin(t*2*pi*f1/(pts-1));
    s2 = amp*sin(t*2*pi*f2/(pts-1));
    sums = s1 + s2; 
elseif nargin == 2
    f1 = 100;
    f2 = 105;
    t = [0:1:pts-1];
    s1 = amp*sin(t*2*pi*f1/(pts-1));
    s2 = amp*sin(t*2*pi*f2/(pts-1));
    sums = s1 + s2; 
elseif nargin == 1
    f1 = 100;
    f2 = 105;
    amp = 1;
    t = [0:1:pts-1];
    s1 = amp*sin(t*2*pi*f1/(pts-1));
    s2 = amp*sin(t*2*pi*f2/(pts-1));
    sums = s1 + s2; 
elseif nargin == 0
    f1 = 100;
    f2 = 105;
    amp = 1;
    pts = 1000;
    t = [0:1:pts-1];
    s1 = amp*sin(t*2*pi*f1/(pts-1));
    s2 = amp*sin(t*2*pi*f2/(pts-1));
    sums = s1 + s2; 
else     
t = [0:1:pts-1];
s1 = amp*sin(t*2*pi*f1/(pts-1));
s2 = amp*sin(t*2*pi*f2/(pts-1));
sums = s1 + s2; 
end
