clc ; 
clear ; 
close all ;
xc=0;
yc=0;
zc=0;
xo=20;
yo=20;
zo=20;
r=1;

q=-2*pi : pi/100 : 2*pi;
w = -2*pi : pi/100 : 2*pi;
[q,w]=meshgrid(q,w);
xs= xc + r*sin(q).*cos(w);
ys= yc + r*sin(q).*sin(w);
zs =zc + r*cos (q);
surf(xs,ys,zs);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on;

% view([50,50,50])

syms x y z u t;
eq1 = xc+(x-xc)*t == xo +(x - xo)*u;
eq2 = yc+(y-yc)*t == yo +(y - yo)*u;
eq3 = zc+(z-zc)*t == zo +(z - zo)*u;
eq4 = (x-xc)*(x-xo) + (y-yc)*(y-yo)+(z-zc)*(z-zo)==0;
eq5 =(x-xc)^2 + (y-yc)^2 + (z-zc)^2 == r.^2;
sol = solve (eq1 , eq2, eq3, eq4, eq5);


s =linspace (-2,2);
lx= xo-(sol.x(1)-xo) * s;
ly=yo-(sol.y(1)-yo) * s;
lz= zo-(sol.z(1)-zo) * s;
plot3 (lx,ly,lz);
grid on;
