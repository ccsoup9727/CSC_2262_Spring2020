% Casey Campbll

% CSC 2262

% cs226211

% lab5b


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
 
 
 
function f = lab5af(u, uf)
    A = .0012;
    B = .011;
    C = .0014;
    D = .006;
    E = .0004;
    k = .45;
    x = uf(1);
    y = uf(2);
    z = uf(3);
    f = zeros(3,1);
    f(1) = (-A*x^2)- (A*k*x*y) - (B*x*z) + x;
    f(2) = (-C*k*x*y) - (A*y^2) - (A*y*z) +y;
    f(3) = (D*x*z) + (E*y*z) -z;
end