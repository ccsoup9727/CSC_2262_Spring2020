%Casey S Campbell
%CSC 2262
%cs226260
%Lab 1a

accuracy = 1e-7;
h = 250;
x = 775;
g = 9.81;

for v0 = 75:5:85
    f = @(theta) h*cos(theta)^2 + x/2 * sin(2*theta) - ((g*x^2) / (2*v0^2));
    fp = @(theta) -2*h*cos(theta) * sin(theta) + x * cos(2*theta);
    step_size = 1 * pi/180;
    for left_end_point = 0:step_size:90*pi/180
        right_end_point = left_end_point + step_size;
        fleft = f(left_end_point);
        fright = f(right_end_point);
        
        if fleft * fright < 0
            guess = (left_end_point + right_end_point)/2;
            theta = Newton(f, fp, guess, accuracy);
            t = (v0 * sin(theta)) / g + sqrt(( v0^2 * sin(theta)^2)/g^2);
            ymax = ( h + ((v0^2 * sin(theta)^2)) / (2*g ));
            theta_degree = theta * (180/pi);
            fprintf('v0 = %d theta = %.5f t = %.5f ymax = %.5f\n', v0, theta, t, ymax);
        end
    end
    fprintf('\n')
end
