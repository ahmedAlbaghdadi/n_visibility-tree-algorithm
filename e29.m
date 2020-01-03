clc ; 
clear ; 
close all ;
w=10; e=10; t=10; u=1; a=1; b=1; r=2;
syms x y;
eq1 = y==-4*((a-e)^.2/(b-t).^2+1)*(((u-w)*(x-w)-e*(a-e)).^2/(b-t).^2+(x-w).^2-r^2+e.^2)+(2*(a-e)*((u-w)*(x-w)-e*(a-e))/(b-t)^2-2*e).^2;
eq2 = y==0 ;
sol = solve (eq1 , eq2);
x=sol.x(1):0.01:sol.x(2);
y=-4*((a-e)^.2/(b-t).^2+1)*(((u-w)*(x-w)-e*(a-e)).^2/(b-t).^2+(x-w).^2-r^2+e.^2)+(2*(a-e)*((u-w)*(x-w)-e*(a-e))/(b-t)^2-2*e).^2;
plot (x,y);
syms x y;
eq1 = y==-4*((a-e)^.2/(b-t).^2+1)*(((u-w)*(x-w)-e*(a-e)).^2/(b-t).^2+(x-w).^2-r^2+e.^2)+(2*(a-e)*((u-w)*(x-w)-e*(a-e))/(b-t)^2-2*e).^2;
eq2 = y==0 ;
sol = solve (eq1 , eq2);

% g=(-sqrt(-4*((u-w)^2*(2*a-2*e)^2/(b-t)^4-(4*(a-e)^2/(b-t)^2+4)*((u-w)^2/(b-t)^2+1))*((-(2*a-2*e)*(w*(u-w)+e*(a-e))/(b-t)^2-2*e)^2-(4*(a-e)^2/(b-t)^2+4)*((-w*(u-w)-e*(a-e))^2/(b-t)^2+w^2-r^2+e^2))+((8*e^2*w-16*e*a*w+8*w*a^2+8*w*u^2+8*w^3-16*u*w^2)/(t^2-2*b*t+b^2)+8*w)^2)+(16*u*w^2-8*w^3-8*w*u^2-8*w*a^2+16*e*a*w-8*e^2*w)/(t^2-2*b*t+b^2)-8*w)*(b-t)^8/(-(8*(a-e)^2+8*(b-t)^2)*((b-t)^2+(u-w)^2)*(b-t)^4+2*(u-w)^2*(2*a-2*e)^2*(b-t)^4);
% h=(sqrt(-4*((u-w)^2*(2*a-2*e)^2/(b-t)^4-(4*(a-e)^2/(b-t)^2+4)*((u-w)^2/(b-t)^2+1))*((-(2*a-2*e)*(w*(u-w)+e*(a-e))/(b-t)^2-2*e)^2-(4*(a-e)^2/(b-t)^2+4)*((-w*(u-w)-e*(a-e))^2/(b-t)^2+w^2-r^2+e^2))+((8*e^2*w-16*e*a*w+8*w*a^2+8*w*u^2+8*w^3-16*u*w^2)/(t^2-2*b*t+b^2)+8*w)^2)+(16*u*w^2-8*w^3-8*w*u^2-8*w*a^2+16*e*a*w-8*e^2*w)/(t^2-2*b*t+b^2)-8*w)*(b-t)^8/(-(8*(a-e)^2+8*(b-t)^2)*((b-t)^2+(u-w)^2)*(b-t)^4+2*(u-w)^2*(2*a-2*e)^2*(b-t)^4);
