%Casey S Campbell
%cs226211
%CSC 2262
%Assignment 4a


R1 = 8;
R2 = 2;
R3 = 4;
R4 = 9;
R5 = 6;
R6 = 1;
R7 = 7;
R8 = 3;
R9 = 5;

V1 = 130;
V2 = 120;
V3 = 170;

d = [V1
     0
     0
     -V2
     V2
     -V3
    ];

a = [R1+R4+R7     -R4             0          -R7         0             0 
    -R4            R2+R4+R5+R8   -R5          0         -R8            0 
     0            -R5             R3+R5+R6+R9 0          0            -R9
    -R7            0              0           R3+R6+R7   0             0
     0            -R8             0           0          R4+R5+R8     -R4
     0             0             -R9          0         -R4           R4+R8+R9
    ];

b = inv(a);
I = b*d;

I
      
     
      
    