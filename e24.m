clc ; 
clear ; 
close all 
cx=0; cy=0; cz=0; r=5; vx=10;vy=9;vz=10;n=8;
h = get_points(cx, cy ,cz, r, vx, vy, vz, n);
for i = 1:numel(h) /3
t =linspace (0,1);
x= vx+(h(1,i)-vx).*t;
y=vy+(h(2,i)-vy).*t;
z= vz+(h(3,i)-vz).*t;
plot3 (x,y,z,'linewidth',3);
hold on ;
end

vx=-10;vy=-10;vz=-10;
k = get_points(cx, cy ,cz, r, vx, vy, vz, n);
for i = 1:numel(k) /3
t =linspace (0,1);
x= vx+(k(1,i)-vx).*t;
y=vy+(k(2,i)-vy).*t;
z= vz+(k(3,i)-vz).*t;
plot3 (x,y,z,'linewidth',3);
hold on ;
end

for i = 1:numel(h) /3
connect (cx, cy ,cz, r, h(1,i) , h(2,i) , h(3,i), k(1,i) , k(2,i) , k(3,i));
end


q=0 : pi/10 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x=cx+ (r-1)*sin(q).*cos(w);
y= cy+ (r-1)*sin(q).*sin(w);
z =cz+ (r-1)*cos (q);
surf(x,y,z);


xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
