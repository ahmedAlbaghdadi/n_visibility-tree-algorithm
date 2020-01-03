q=0 : pi/100 : 2*pi;
w = 0 : pi/10 : pi;
[q,w]=meshgrid(q,w);
x= 5.*sin(0.7).*cos(0.5)-2;
y= 5.*sin(0.7).*sin(0.5)-2;
z = 5 * cos (0.7)-2;
% surf(x,y,z);
plot3(x,y,z);