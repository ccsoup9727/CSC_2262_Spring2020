% Casey Campbell
% CSC 2262
% cs226211
% lab6


m1 = .4;
m2 = .7;
m3 = .7;    
m4 = .2;
m5 = .6;
m6 = .5;

k1 = 3.9;
k2 = 3.2;
k3 = 2.2;
k4 = 2.7;
k5 = 1.3;
k6 = 4.9;
k7 = 4.4;

A = [(-k1-k2)/m1 k2/m1 0 0 0 0 
    k2/m2 (-k2-k3)/m2 k3/m2 0 0 0 
    0 k3/m3 (-k3-k4)/m3 k4/m3 0 0 
    0 0 k4/m4 (-k4-k5)/m4 k5/m4 0 
    0 0 0 k5/m5 (-k5-k6)/m5 k6/m5 
    0 0 0 0 k6/m6 (-k6-k7)/m6 ];

A = -A;
[eigvec, eigval] = eig(A);
t = 0:.001:10;

line1x = [0 10];
line1y = [0 0];
titles(1,:) = 'Assignment 6, Figure 1';
titles(2,:) = 'Assignment 6, Figure 2';
titles(3,:) = 'Assignment 6, Figure 3';
titles(4,:) = 'Assignment 6, Figure 4';
titles(5,:) = 'Assignment 6, Figure 5';
titles(6,:) = 'Assignment 6, Figure 6';

for k = 1:6
    
    w = sqrt(eigval(k, k));
    c1 = eigvec(1, k);
    c2 = eigvec(2, k);
    c3 = eigvec(3, k);
    c4 = eigvec(4, k);
    c5 = eigvec(5, k);
    c6 = eigvec(6, k);

    x1 = c1*cos(w*t);
    x2 = c2*cos(w*t);
    x3 = c3*cos(w*t);
    x4 = c4*cos(w*t);
    x5 = c5*cos(w*t);
    x6 = c6*cos(w*t);
    figure(k);
    
    plot(t, x1, 'b', t, x2, 'r', t, x3, 'g', t, x4, 'k', t, x5, 'm', t, x6, 'c', line1x, line1y, 'k');
    
    axis([0 10 -1 1]);
    set(gca, 'xtick', 0:10);
    set(gca, 'ytick', -1:.2:1);
    xlabel('t');
    ylabel('x1(b), x2(r), x3(g), x4(k), x5(m), x6(c)');
    title(titles(k,:))
    f = w/(2*pi);
    
    c1_abs = abs(c1);
    c2_abs = abs(c2);
    c3_abs = abs(c3);
    c4_abs = abs(c4);
    c5_abs = abs(c5);
    c6_abs = abs(c6); 
    
    array = [c1_abs, c2_abs, c3_abs, c4_abs, c5_abs, c6_abs];
    array = selectionSort(array);
    minAmp = array(1);
    maxAmp = array(6); 
    
    fprintf('Mode: %d: Frequency=%.5f Max Amplitude=%.5f Min Amplitude=%.5f\n', k, f, maxAmp, minAmp);
    
    
end


