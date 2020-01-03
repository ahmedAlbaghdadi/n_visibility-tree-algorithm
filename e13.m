clc ; 
clear ; 
close all ;
xc=0;
yc=0;
zc=0;
xo=7;
yo=4;
zo=-10;
r=1;

syms x y z;

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




t = (xo-xc)./(x+xc)+((x-xo).*(x+xc)*(yc-yo)+(x-xo).*(yc-y)*(xc-xo))./((x+xc).*(x+xc).*(y+yo)-y.*(x+xc).*(x-xo)+yc.*(x+xc).*(x-xo));
u=((x+xc)*(yc-yo)+(yc-y)*(xc-xo))/((x+xc)*(y+yo)-y*(x-xo)+yc*(x-xo));

eq1 = zc+(z-zc)*t == zo +(z - zo)*u;
eq2 = (x-xc)*(x-xo) + (y-yc)*(y-yo)+(z-zc)*(z-zo)==0;
eq3 =(x-xc)^2 + (y-yc)^2 + (z-zc)^2 == r.^2;
sol = solve (eq1 , eq2, eq3);


s =linspace (-1.5,0);
lx= xo-(sol.x(1)-xo) * s;
ly=yo-(sol.y(1)-yo) * s;
lz= zo-(sol.z(1)-zo) * s;
plot3 (lx,ly,lz , 'r');

hold on ;

h =linspace (-1.5,0);
lx1= xo-(sol.x(2)-xo) * h;
ly1=yo-(sol.y(2)-yo) * h;
lz1= zo-(sol.z(2)-zo) * h;
plot3 (lx1,ly1,lz1 , 'g');
grid on;
%  view([5,5,5])