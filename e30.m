clc ; 
clear ; 
close all ;
px=20; py=25; pz=-30; r=20; qx=-50; qy=-26; qz=14; n=8;
ma=getcyl(px,py,pz,r,qx,qy,qz,n);
for i=1:n
drawline(ma(1,i),ma(2,i),ma(3,i),ma(4,i),ma(5,i),ma(6,i));
end


q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= px+(r-1)*sin(q).*cos(w);
y= py+(r-1)*sin(q).*sin(w);
z = pz+(r-1)*cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= qx+(r-1)*sin(q).*cos(w);
y= qy+(r-1)*sin(q).*sin(w);
z = qz+(r-1)*cos (q);
surf(x,y,z);