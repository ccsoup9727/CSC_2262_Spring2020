% Casey Campbell
% CSC 2262
% cs226211
% Assignment 7c - inner.m file


function inner_integral = inner(y,x,f,v,w)
global accuracy;
n=length(y);
for(k=1:n)
    lower = v(x, y(k));
    upper = w(x, y(k));
    inner_integral(k) = quad(f,lower,upper,accuracy,[],x,y(k));
end
