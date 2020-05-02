%Casey S Campbell
%cs226211
%CSC 2262
%Assignment 4b

alpha = 65 * pi/180;
beta = 76*pi/180;
gamma = 34*pi/180;
delta = 49*pi/180;
epilson = 24*pi/180;
W = 295;
G = 315;
H = 365;
d = [0
     0
     0
     W
     0
     0
     H
     0
     0
     G
    ];
 
a = [1  0   cos(alpha)  0   0   0   0   0   0   0
     0  0   sin(alpha)  0   0   0   0   0   0   1
     -1 1   0   -cos(beta)  cos(gamma)  0   0   0   0   0
     0  0   0   sin(beta)   sin(gamma)  0   0   0   0   0
     0  -1  0   0   0   -cos(delta) 0 0 1 0
     0 0 0 0 0 sin(delta) 0 1 0 0
     0 0 -cos(alpha) cos(beta) 0 0 cos(epilson) 0 0 0
     0 0 -sin(alpha) -sin(beta) 0 0 -sin(epilson) 0 0 0
     0 0 0 0 -cos(gamma) cos(delta) -cos(epilson) 0 0 0
     0 0 0 0 -sin(gamma) -sin(delta) sin(epilson) 0 0 0
    ];
b = inv(a);
F = b*d;
F