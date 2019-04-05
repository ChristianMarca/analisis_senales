function y = rectDT(W,n)
%RECTDT Summary of this function goes here
%   Detailed explanation goes here
if W==round(W),
    y=abs(n)<=abs(W);
    
    ss=find(round(n)~=n);
    y(ss)= NaN;
else
    disp('In rectDT perametros del ancho, W, no es entero')
end

end

