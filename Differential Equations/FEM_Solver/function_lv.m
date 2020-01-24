function [lv] = function_lv(gamma,v,u1,n)
if (v == n) 
lv = u1;
else
lv = function_e(v,0,n)*gamma*(-1);
lv = lv + integral(@(x) function_f(x) .* function_e(v,x,n),0,1,'ArrayValued',true);
end
end