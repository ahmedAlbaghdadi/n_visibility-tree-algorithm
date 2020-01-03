function [res] = plotsphersonly( sphers)

a=size(sphers);
for i=1:a(1)
px=sphers(i,1); py=sphers(i,2); pz=sphers(i,3); r=sphers(i,4);

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x= px+(r-1)*sin(q).*cos(w);
y= py+(r-1)*sin(q).*sin(w);
z = pz+(r-1)*cos (q);
surf(x,y,z);
hold on ;
end

xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
res=1;
end 