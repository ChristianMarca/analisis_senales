function y = sinc(t)
%SINC Summary of this function goes here
%   Detailed explanation goes here
zero=(t==0);
num=(~zero).*sin(pi*t)+zero;
den=(~zero).*(pi*t)+zero;
y=num./den;

end

