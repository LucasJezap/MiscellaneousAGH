function [de] = function_de(i,x,n)
h = 1 / n;
if ( x >= (i-1)*h & x < i*h)
    de = n;
elseif ( x >= i*h & x < (i+1)*h)
    de = -n;
else
    de = 0;
end