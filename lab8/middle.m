% Casey Campbell
% CSC 2262
% cs226211
% Assignment 7c - middle.m file

function middle_integral = middle(x,inner,g,h,f,v,w)
global accuracy;
n = length(x);

for k = 1:n
    c = g(x(k));
    d = h(x(k));
    middle_integral(k) = quad(inner,c,d,accuracy,[],x(k),f,v,w);
end