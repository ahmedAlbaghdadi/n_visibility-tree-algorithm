clc ; 
clear ; 
close all ;
% [x,y] = meshgrid(-2:0.5:2,-2:0.5:2);
x= -1.06 : 0.01 : 2.13;
a=10;b=10;c=10;d=-8;
y= (-((2*a*b.*x+2*b*d)./(c^2))+(((2*a*b.*x)./(c^2)).^2 -4*(1+b^2 / c^2).*((1+a^2/c^2).*x.^2+(2*a*d/c^2).*x+d^2/c^2 -4)).^0.5)./(2*(1+b^2/c^2));
z = (-1/c) * (a.*x + b.*y + d);
plot3(x,y,z);
hold on ;
y= (-((2*a*b.*x+2*b*d)./(c^2))-(((2*a*b.*x)./(c^2)).^2 -4*(1+b^2 / c^2).*((1+a^2/c^2).*x.^2+(2*a*d/c^2).*x+d^2/c^2 -4)).^0.5)./(2*(1+b^2/c^2));
z = (-1/c) * (a.*x + b.*y + d);
 plot3(x,y,z);
hold on ;

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= 2*sin(q).*cos(w);
y= 2*sin(q).*sin(w);
z = 2*cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;
view([5,5,5])

% n=0 : pi/50 : 2*pi;
% m = 0 : pi/50 : 2*pi;
% [n,m]=meshgrid(n,m);
% x=5+ 8.426*sin(n).*cos(m);
% y=5+ 8.426*sin(n).*sin(m);
% z =5+ 8.426*cos (n);
% surf(x,y,z);
% xlabel ('x-axis');
% ylabel ('y-axis');
% zlabel ('z-axis');
