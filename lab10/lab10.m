% Casey Campbell
% CSC 2262
% cs226211
% lab10

Lx = 2;
Ly = 1;
nx = 53;
ny = 21;
accuracy = 1e-8;
f=@(x,y) -2*(x^2+y^2);
gbottom=@(x) 1-x^2;
gtop=@(x) 4*(1-x^2);
gleft=@(y) 1+y^2;
gright=@(y) 2;
u = poisson2(f,gbottom,gtop,gleft,gright,nx,ny,Lx,Ly,accuracy);
hx = Lx/(nx-1);
hy = Ly/(ny-1);
x = 0:hx:Lx;
y = 0:hy:Ly;
surf(x,y,u');
axis([0 2 0 1 -4 4]);
set(gca,'xtick',0:.4:2);
set(gca,'ytick',0:.2:1);
set(gca,'ztick',-4:.8:4);
xlabel('x');
ylabel('y');
zlabel('z');