clc ; 
clear ; 
close all ;
xc=0;
yc=0;
zc=0;
xo=5;
yo=0;
zo=0;
r=2;

syms x y z;
eq1 = (x)^2 + (z)^2 == r.^2;
eq2 = y == 2;
sol = solve (eq1 , eq2);
plot3(sol.x,sol.y,sol.z);
