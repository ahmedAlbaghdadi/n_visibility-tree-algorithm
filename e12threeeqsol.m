clc ; 
clear ; 
close all ;
xc=0;
yc=0;
zc=0;
xo=20;
yo=20;
zo=20;
r=1;
syms x y z;
t = (xo-xc)./(x+xc)+((x-xo).*(x+xc)*(yc-yo)+(x-xo).*(yc-y)*(xc-xo))./((x+xc).*(x+xc).*(y+yo)-y.*(x+xc).*(x-xo)+yc.*(x+xc).*(x-xo));
u=((x+xc)*(yc-yo)+(yc-y)*(xc-xo))/((x+xc)*(y+yo)-y*(x-xo)+yc*(x-xo));


eq1 = zc+(z-zc).*t == zo +(z - zo).*u;
eq2 = (x-xc)*(x-xo) + (y-yc)*(y-yo)+(z-zc)*(z-zo)==0;
eq3 =(x-xc)^2 + (y-yc)^2 + (z-zc)^2 == r.^2;
sol = solve (eq1 , eq2,eq3);

