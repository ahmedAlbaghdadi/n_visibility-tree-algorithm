clc ; 
clear ; 
close all 
cx=0; cy=0; cz=0; r=10; vx=10;vy=10;vz=10;n=10;
h = get_points(cx, cy ,cz, r, vx, vy, vz, n);
for i = 1:numel(h) /3
    drawline (vx,vy,vz,h(1,i),h(2,i),h(3,i));
end

vx=-10;vy=-10;vz=-10;
k = get_points(cx, cy ,cz, r, vx, vy, vz, n);
for i = 1:numel(k) /3
drawline (vx,vy,vz,k(1,i),k(2,i),k(3,i));
end

for i = 1:numel(h) /3
connect (cx, cy ,cz, r, h(1,i) , h(2,i) , h(3,i), k(1,i) , k(2,i) , k(3,i));
end


% q=0 : pi/10 : 2*pi;
% w = 0 : pi/50 : 2*pi;
% [q,w]=meshgrid(q,w);
% x=cx+ r*sin(q).*cos(w);
% y= cy+ r*sin(q).*sin(w);
% z =cz+ r*cos (q);
% surf(x,y,z);


xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
