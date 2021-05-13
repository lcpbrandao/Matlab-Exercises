function [m km] = light_time(miles)
m = miles.*(1.609/(300000*60));
km = miles.*1.609;
end