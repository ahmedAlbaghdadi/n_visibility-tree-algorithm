clc ; 
clear ; 
close all ;
px=0; py=0; pz=0; qx=15;qy=15;qz=15; cx=10; cy=10; cz=10; r=3;
t1=-(sqrt(-4*((qx-px)^2+(qy-py)^2+(qz-pz)^2)*((px-cx)^2+(pz-cz)^2+(py-cy)^2-r^2)+(2*(px-cx)*(qx-px)+2*(pz-cz)*(qz-pz)+2*(qy-py)*(py-cy))^2)+2*(px-cx)*(qx-px)+2*(pz-cz)*(qz-pz)+2*(qy-py)*(py-cy))/(2*(qx-px)^2+2*(qy-py)^2+2*(qz-pz)^2);

if imag(t1)==0 && abs(t1)<1
    c=[cx cy cz r];
else
    c= [0 0 0 0];
end
% q=0 : pi/50 : 2*pi;
% w = 0 : pi/50 : 2*pi;
% [q,w]=meshgrid(q,w);
% x=5+ 3*sin(q).*cos(w);
% y= 5+ 3*sin(q).*sin(w);
% z =5+ 3*cos (q);
% surf(x,y,z);
% xlabel ('x-axis');
% ylabel ('y-axis');
% zlabel ('z-axis');
% hold on ;

% m= checkline(0,0,0,1,1,1,10,10,10,3);