clc ; 
clear ; 
close all ;
t= -20 : 0.001 : 20;
s= -20 : 0.001 : 20;
x= 1+2*t+s;
y=1+4*t;
z= 2+6*t-s;
mesh (x,y);

surf(x,y,z);
grid on;
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');