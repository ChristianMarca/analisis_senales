function y = impDT(n)
%IMPDT Summary of this function goes here
%   Detailed explanation goes here

y= (n == 0);

ss= find(round(n)~=n);
y(ss)=NaN;

end

