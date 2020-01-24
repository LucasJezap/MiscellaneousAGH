function [e] = function_e(i,x,n)
h = 1 / n;
if ( x >= (i-1)*h & x < i*h)
    e = (x - (i-1)*h)/h;
elseif ( x >= i*h & x < (i+1)*h)
    e = ((i+1)*h-x)/h;
else
    e = 0;
end