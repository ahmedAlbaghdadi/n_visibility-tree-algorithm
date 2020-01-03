clc ; 
clear ; 
close all ;
px=-2; py=-2; pz=-2; r1=5; qx=17; qy=17; qz=17; r2=10; n=8;
d2=sqrt((px-qx)^2+(py-qy)^2+(pz-qz)^2);
d1=r1*d2/(r2-r1);
a=px+d1*(px-qx)/d2;
b=py+d1*(py-qy)/d2;
c=pz+d1*(pz-qz)/d2;
f1=get_points(px,py,pz,r1,a,b,c,n);
f2=get_points(qx,qy,qz,r2,a,b,c,n);
f=[f1;f2];
for i=1:n
drawline(f(1,i),f(2,i),f(3,i),f(4,i),f(5,i),f(6,i));
end



q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= px+r1*sin(q).*cos(w);
y= py+r1*sin(q).*sin(w);
z = pz+r1*cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= qx+r2*sin(q).*cos(w);
y= qy+r2*sin(q).*sin(w);
z = qz+r2*cos (q);
surf(x,y,z);