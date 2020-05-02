%Casey Campbell
%CSC 2262
%cs226211
%Lab2


r1 = 4.14;
r2 = 3.25;
r3 = 3.77;
r4 = 2.57;

accuracy = 1e-7;
count = 0;
guess1 = 75*pi/180;
guess2 = 30*pi/180;

for t4=84*(pi/180):pi/180:804*(pi/180)
    count = count+1;
    f1 = @(t2,t3) r2*cos(t2) + r3*cos(t3) + r4*cos(t4) - r1; % derivative of t2, derivatve of t3
    f2 = @(t2,t3) r4*sin(t4) + r3*sin(t3) - r2*sin(t2); % derivative of t2, t3
    df1d1 = @(t2, t3) -r2*sin(t2);
    df1d2 = @(t2, t3) -r3*sin(t3);
    df2d1 = @(t2, t3)  -r2*cos(t2);
    df2d2 = @(t2, t3)  r3*cos(t3);
    
    [t2, t3] = newton2(f1, f2, df1d1, df1d2, df2d1, df2d2, guess1, guess2, accuracy);
    
   
    r2x = r2*cos(t2);
    r2y = r2*sin(t2);
    r3x = r3*cos(t3);
    r3y = r3*sin(t3);
    r4x = r4*cos(t4);
    r4y = r4*sin(t4);
    
    line1x = [0, r1];
    line1y = [0, 0];
    line2x = [0, r2x];
    line2y = [0, r2y];
    line3x = [r2x, r2x+r3x];
    line3y = [r2y, r2y-r3y];
    line4x = [r2x+r3x, r1];
    line4y = [r2y-r3y, 0];
    
    plot(line1x, line1y, 'k', line2x, line2y, 'r', line3x, line3y, 'g', line4x, line4y, 'b');
    axis([-3 7 -3 7])
    set(gca, 'xtick', -3 : 1: 7);
    set(gca, 'ytick', -3 : 1: 7);
    pbaspect([1, 1, 1]);
    xlabel('x');
    ylabel('y');
    title('Lab2');
    pause(0.1)
    if(count == 1)
        pause(7);
    end
end