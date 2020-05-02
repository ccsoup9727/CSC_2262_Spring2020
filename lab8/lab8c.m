
% Casey Campbell
% CSC 2262
% cs226211
% Assignment 7c

global accuracy;
accuracy = 1e-4;
a = 2;
b = 4;
g = @(x) ( (x-2) .^ 4 + 3*x+12 ) / (x+4);
h = @(x) 9 - sqrt(1 + (x-2) .^ 3);
 
v = @(x,y)8;
w = @(x,y)x+y+2;
 
f = @(z,x,y) (z.^3 .* cos(x+y+z)) ./ (2*x+3*z+2) + z.^2 .* log(y .* sqrt(z+y.^3));
mass = quad('middle', a,b,accuracy,[], 'inner', g,h,f,v,w);
fprintf('I = %.3f\n', mass);