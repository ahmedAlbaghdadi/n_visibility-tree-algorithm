clc ; 
clear ; 
close all ;
a=20;b=20;c=20;r=1;h=0;k=0;n=0;

syms x y z;
eq1 = (x-h)^2+(y-k)^2+(z-n)^2==r^2;
eq2 = (x-a)^2+(y-b)^2+(z-c)^2==(h-a)^2+(k-b)^2+(n-c)^2-(r)^2;
sol = solve (eq1 , eq2);
 z= -1 : 0.01 : 1 ;
% y = -1*sqrt(-4*((-sqrt((32*b*k+32*c*n-16*b.^2-16*c.^2-16*k.^2-16*n.^2)*((-(x-h).^2+r.^2-n.^2)*(2*(x-a).^2-2*(h-a).^2-2*(k-b).^2-2*(n-c).^2+2*c.^2+2*r.^2)+(b-k).^2*(4*x.^2-4*a*x-4*h*x+4*a*h+4*b*k+4*c*n-2*b.^2-2*k.^2)+((h-a).^2+(k-b).^2+(n-c).^2-(x-a).^2-c.^2-r.^2).^2+(-(x-h).^2+r.^2-n.^2).^2+(b-k).^4)+(8*a*c*x+8*h*n*x-8*a*n*x-8*c*h*x+8*a*h*n+16*b*k*n-8*a*c*h+8*c*h.^2+8*n*r.^2+16*c*n.^2-8*c*r.^2-8*n*b.^2-8*n*c.^2-8*n*h.^2-8*n*k.^2-8*n.^3).^2)+8*a*c*h+8*a*n*x+8*c*h*x-8*a*c*x-8*a*h*n-8*h*n*x-16*b*k*n+8*c*r.^2+8*n*b.^2+8*n*c.^2+8*n*h.^2+8*n*k.^2-8*c*h.^2-8*n*r.^2-16*c*n.^2+8*n.^3)./(8*n.^2+8*k.^2+8*c.^2+8*b.^2-16*c*n-16*b*k)-n).^2-4*(x-h).^2+4*r.^2)./2 +k ;
% z = (-sqrt((32*b*k+32*c*n-16*b.^2-16*c.^2-16*k.^2-16*n.^2)*((-(x-h).^2+r.^2-n.^2)*(2*(x-a).^2-2*(h-a).^2-2*(k-b).^2-2*(n-c).^2+2*c.^2+2*r.^2)+(b-k).^2*(4*x.^2-4*a*x-4*h*x+4*a*h+4*b*k+4*c*n-2*b.^2-2*k.^2)+((h-a).^2+(k-b).^2+(n-c).^2-(x-a).^2-c.^2-r.^2).^2+(-(x-h).^2+r.^2-n.^2).^2+(b-k).^4)+(8*a*c*x+8*h*n*x-8*a*n*x-8*c*h*x+8*a*h*n+16*b*k*n-8*a*c*h+8*c*h.^2+8*n*r.^2+16*c*n.^2-8*c*r.^2-8*n*b.^2-8*n*c.^2-8*n*h.^2-8*n*k.^2-8*n.^3).^2)+8*a*c*h+8*a*n*x+8*c*h*x-8*a*c*x-8*a*h*n-8*h*n*x-16*b*k*n+8*c*r.^2+8*n*b.^2+8*n*c.^2+8*n*h.^2+8*n*k.^2-8*c*h.^2-8*n*r.^2-16*c*n.^2+8*n.^3)./(8*n.^2+8*k.^2+8*c.^2+8*b.^2-16*c*n-16*b*k);
plot3 (sol.x(1),sol.y(1),z);
view([20,20,20]);