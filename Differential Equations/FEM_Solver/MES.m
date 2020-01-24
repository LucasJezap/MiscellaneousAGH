function [u] = MES(gamma,beta,u1,n)
h=1/n; 
matrix = zeros(n+1,n+1); 
vector_l = zeros(1,n+1);

for i=1:n+1
    vector_l(i) = function_lv(gamma,i-1,u1,n);
end

beta

vector_l

for i=1:n+1
	for j=1:n+1
		matrix(i,j) = function_buv(beta,j-1,i-1,n);
	end
end

matrix

u = matrix\(vector_l');

x = 0: h: 1;
y = 0: h: 1;

for i = 1:length(x)
    y(i) = 0;
end

for i = 1:length(x) 
	for j = 1 : n+1
        y(i) = y(i) + function_e(j-1,x(i),n) * u(j); 
    end
end
table = [x(:),y(:)];
table = table.';
table
plot(x,y);
end