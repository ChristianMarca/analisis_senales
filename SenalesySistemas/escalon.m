function y = escalon(t)
%ESCALON Summary of this function goes here
%   Detailed explanation goes here
%zero=A.*((E.*(t+D))==0);pos=A.*((E.*(t+D))>0);y=((A.*zero)/2)+pos;
zero=(t==0); pos=(t>0); y=zeros/2+pos;
end

