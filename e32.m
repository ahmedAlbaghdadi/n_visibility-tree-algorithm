clc ; 
clear ; 
close all ;
px=-2; py=-2; pz=-2; r1=11; qx=17; qy=11; qz=17; r2=4; n=10;
f=getcone(px,py,pz,r1,qx,qy,qz,r2,n);
for i=1:n
drawline(f(1,i),f(2,i),f(3,i),f(4,i),f(5,i),f(6,i));
end



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