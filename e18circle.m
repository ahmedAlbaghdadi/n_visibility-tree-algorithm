clc ; 
clear ; 
close all ;

x1=0; y1=0; z1=0; x2=5; y2=5; z2=5; r1= 2; r2=8.426;

A = 2*(x2 - x1);	B = 2*(y2 - y1);	C = 2*(z2 - z1);	D = x1.^2 - x2.^2 + y1.^2 - y2.^2 + z1.^2 - z2.^2 - r1.^2 + r2.^2;


t =(x1*A+y1*B+z1*C+D)/(A*(x1-x2)+B*(y1-y2)+C*(z1-z2));
x= x1 + t*(x2 - x1);
y=y1 + t*(y2-y1);
z= z1 + t*(z2-z1);
plot3 (x,y,z);
grid on;
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
% hold on ;
% q=0 : pi/100 : 2*pi;
% w = 0 : pi/10 : 2*pi;
% [q,w]=meshgrid(q,w);
% x= 2*sin(q).*cos(w);
% y= 2*sin(q).*sin(w);
% z = 2*cos (q);
% surf(x,y,z);
