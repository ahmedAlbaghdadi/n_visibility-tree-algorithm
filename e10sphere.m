clc ; 
clear ; 
close all ;

q=0 : pi/100 : 2*pi;
w = 0 : pi/100 : 2*pi;
[q,w]=meshgrid(q,w);
x= sin(q).*cos(w);
y= sin(q).*sin(w);
z =cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');

view([50,50,50])

