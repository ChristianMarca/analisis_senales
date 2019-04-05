function y = drcl(t,n)
%DRCL Summary of this function goes here
%   Detailed explanation goes here
%y=sin(n*t*pi)./((n).*sin(t*pi));
y=diric(2*pi*t,n)
end

