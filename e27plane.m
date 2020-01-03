clc ; 
clear ; 
close all ;
px=10; py=10; pz=10; r=2; qx=1; qy=1; qz=1; n=10;
[x,y] = meshgrid(8:0.5:12,8:0.5:12);
z=pz-((qx-px)*(x-px)+(qy-py)*(y-py))/(qz-pz);
surf(x,y,z);
hold on ;


q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= px+r*sin(q).*cos(w);
y= py+r*sin(q).*sin(w);
z = pz+r*cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;