% Casey Campbll

% CSC 2262

% cs226211

% lab5a

t = 0:.001:80;
u0 = [1000 500 600];
options = odeset('RelTol', 1e-7, 'AbsTol', 1e-7);
[t u] = ode45('lab5af', t, u0, options);
plot(t, u(:, 1), 'b', t, u(:, 2), 'g', t, u(:, 3), 'r');
 
 
axis([0 80 -100 1100]);
set(gca,'xtick',0:10:80);
 
set(gca,'ytick',-100:100:1100);
 
xlabel('t');
 
ylabel('x(blue), y(green), z(red) Populations');
 
title('Lab 5a');