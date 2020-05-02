% Casey Campbll

% CSC 2262

% cs226211

% lab5a

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