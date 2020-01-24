function [buv] = function_buv(beta,u,v,n)
if (v<n)
buv = -function_e(v,0,n) * function_e(u,0,n) * beta;
buv = buv - integral(@(x) function_a(x) .* function_de(v,x,n) .* function_de(u,x,n)  ,0,1,'ArrayValued',true) ;
buv = buv + integral(@(x) function_b(x) .* function_e(v,x,n) .* function_de(u,x,n)  ,0,1,'ArrayValued',true) ;
buv = buv + integral(@(x) function_c(x) .* function_e(v,x,n) .* function_e(u,x,n)  ,0,1,'ArrayValued',true) ;
elseif (u == n)
buv = 1;
else
buv = 0;
end
end