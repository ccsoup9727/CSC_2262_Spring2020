% Casey Campbell
% CSC 2262
% cs226211
% Lab3

X = 2.67;
Y = 1.5;
R1 = 2.4;
R2 = 2.2;
guess1 = 20*pi/180;
guess2 = 70*pi/180;
guess3 = 30*pi/180;
count = 0;
accuracy = 1e-7;

for Z=0:0.01:2.5
    count = count+1;
    
    %R1x + R2x - X;
    f1 = @(t1, t2, phi) R1*sin(t1)*cos(phi) + R2*sin(t1+t2)*cos(phi) - X;
    f2 = @(t1, t2, phi) sin(phi) * (R1*sin(t1)+(R2*sin(t1+t2))) - Y;
    f3 = @(t1, t2, phi) R1 * cos(t1) + R2*cos(t1+t2) - Z;
    
    df1d1 = @(t1, t2, phi) cos(phi) * (R1*cos(t1)+(R2*cos(t1+t2)));
    df1d2 = @(t1, t2, phi)cos(phi) * R2 * cos(t1+t2);
    df1d3 = @(t1, t2, phi) -sin(phi) * (R1*sin(t1)+(R2*sin(t1+t2)));
    
    df2d1 = @(t1, t2, phi) sin(phi) * (R1*cos(t1)+(R2*cos(t1+t2)));
    df2d2 = @(t1, t2, phi) sin(phi) * R2 * cos(t1+t2);
    df2d3 = @(t1, t2, phi) cos(phi) * (R1*sin(t1) + (R2*sin(t1+t2)));
    
    df3d1 = @(t1, t2, phi) -R1 * sin(t1);
    df3d2 = @(t1, t2, phi) -R2*sin(t1+t2);
    df3d3 = @(t1, t2, phi) 0;
    
  
    
    [t1, t2, phi] = newton3(f1, f2, f3, df1d1, df1d2, df1d3, df2d1, df2d2, df2d3, df3d1, df3d2, df3d3, guess1, guess2, guess3, accuracy);
    
    line1x = [0 cos(phi)*R1*sin(t1)];
    line1y = [0, sin(phi)*R1*sin(t1)];
    line1z = [0,  R1*cos(t1)];
    
    line2x = [cos(phi)*R1*sin(t1) cos(phi)*(R1*sin(t1)+(R2*sin(t1+t2)))];
    line2y = [sin(phi)*R1*sin(t1) sin(phi)*(R1*sin(t1)+(R2*sin(t1+t2)))];
    line2z = [R1*cos(t1) R1*cos(t1)+R2*cos(t1+t2)];
    
    plot3(line1x, line1y, line1z, 'r', line2x, line2y, line2z, 'b', X, Y, Z, 'ko');
    
    box on;
    grid on;
    
    axis([0 3 0 3 0 3])
    set(gca, 'xtick', 0 : 1: 3);
    set(gca, 'ytick', 0 : 1: 3);
     set(gca, 'ztick', 0 : 1: 3);
    pbaspect([1, 1, 1]);
    xlabel('x');
    ylabel('y');
    zlabel('z');
    title('Lab3');
    pause(0.01)
    if(count == 1)
        pause(8);
    end
end