clc ; 
clear ; 
close all ;

px=3; py=3; pz=3; r1=12.5; qx=10; qy=10; qz=10; r2=4; n=10;

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= px+(r1-1)*sin(q).*cos(w);
y= py+(r1-1)*sin(q).*sin(w);
z = pz+(r1-1)*cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= qx+(r2-1)*sin(q).*cos(w);
y= qy+(r2-1)*sin(q).*sin(w);
z = qz+(r2-1)*cos (q);
surf(x,y,z);