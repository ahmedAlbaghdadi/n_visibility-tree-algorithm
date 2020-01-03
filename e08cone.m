clc ; 
clear ; 
close all ;
r = linspace(0,2*pi) ;
th = linspace(0,2*pi) ;
[R,T] = meshgrid(r,th) ;
X = 10+R.*cos(T) ;
Y = 0+R.*sin(T) ;
Z = 10+2.*R ;
cone = surf(X,Y,Z);
direction = [1 1 0];
rotate(cone,direction,45);
 view([1000,1000,1000])