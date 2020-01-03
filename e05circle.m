clc ; 
clear ; 
close all ;
t = linspace(0,2*pi) ;
x = 2+ 2.*cos(t);
y = 2+ 2.*sin(t);
z = 2+ 2.*cos(t);
plot3(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');

