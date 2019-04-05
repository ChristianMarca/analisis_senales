function y = impulso(n)
%IMPULSO Summary of this function goes here
%   Detailed explanation goes here
%delta = [ zeros( 1:1:10 ), 4 , zeros( 1:1:10 ) ];
%y=delta;
%stem(t,y);
% Our default value is 0
y = 0; 

% The function is 1 only if the input is 0
if n == 0
    y = 1;
end

