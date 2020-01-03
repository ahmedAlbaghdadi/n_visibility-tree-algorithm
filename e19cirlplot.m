clc ; 
clear ; 
close all ;
radius = 2;      %# Define your radius
center = [1 2 4];  %# Define your circle center [Cx Cy]
theta = linspace(0,2*pi);          %# Create an array of theta values
X = center(1)+radius.*cos(theta);  %# Create the X values for the circle
Y = center(2)+radius.*sin(theta);  %# Create the Y values for the circle
Z = center(3)+(2+4*X+3*Y)/1.5.*ones(size(theta));              %# Create the Z values for the circle (needed
                                   %#   for 3D plotting)
hold on;       %# Add to the current existing plot
plot3(X,Y,Z);  %# Plot your circle in 3D
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
grid on ;