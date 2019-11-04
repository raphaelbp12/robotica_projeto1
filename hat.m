function [ hat_x ] = hat( x )
%HAT Summary of this function goes here
%   Detailed explanation goes here

hat_x = [0 -x(3) x(2); x(3) 0 -x(1); -x(2) x(1) 0];

end

