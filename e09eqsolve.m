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

syms x y z u t;
eq1 = xc+(x-xc)*t == xo +(x - xo)*u;
eq2 = yc+(y-yc)*t == yo +(y - yo)*u;
eq3 = zc+(z-zc)*t == zo +(z - zo)*u;
eq4 = (x-xc)*(x-xo) + (y-yc)*(y-yo)+(z-zc)*(z-zo)==0;
eq5 =(x-xc)^2 + (y-yc)^2 + (z-zc)^2 == r.^2;
sol = solve (eq1 , eq2, eq3, eq4, eq5);

