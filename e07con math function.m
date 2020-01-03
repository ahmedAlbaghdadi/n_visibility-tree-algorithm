clc ; 
clear ; 
close all ;
R = 1; %// radius
H = 3; %// height
N = 10; %// number of points to define the circumference
[x, y, z] = cylinder([0 R], N);
mesh(x, y, H*z)