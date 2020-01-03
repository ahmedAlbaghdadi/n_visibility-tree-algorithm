cx=-1; cy=2; cz=-1; r=2; vx=5;vy=10;vz=50;
de=((cx-vx)^2 + (cy-vy)^2 + (cz-vz)^2)^0.5;
a=2*vx-2*cx; b= 2*vy - 2*cy; c= 2*vz - 2*cz; d=cx^2 +cy^2 + cz^2 -vx^2 - vy^2 -vz^2 -2*r^2 +de^2;
alpha = 4*a^2*b^2 /c^4 -(4+ 4*b^2/c^2)*(1+a^2/c^2);
beta = (4*a*b*(2*d*b+2*b*c*cz-2*c^2*cy))/c^4 - (4+4*b^2/c^2)*(-2*cx+2*a*d/c^2 + 2*a*cz/c);
gama = ((2*d*b-2*b*c*cz-2*c^2*cy)/c^2)^2 - (4+4*b^2/c^2)*(cx^2+cy^2+cz^2+d^2/c^2 + 2*cz*d/c -r^2);
x2=(-beta - (beta^2-4*alpha*gama)^0.5)/(2*alpha);
x1=(-beta + (beta^2-4*alpha*gama)^0.5)/(2*alpha);
x= -4 : 0.0001 : 4;
y=(2*cy-(2*a*b.*x + 2*d*b +2*b*c*cz)./(c^2)+((-2*cy+(2*a*b.*x+2*d*b+2*b*c*cz)./(c^2)).^2-4*(1+b^2/c^2).*(x.^2 -2*cx.*x+cx^2+cy^2+ a^2.*x.^2./c^2 + 2*a*d.*x./c^2 +d^2/c^2 + 2*a*cz.*x./c + 2*cz*d/c +cz^2 -r^2)).^0.5)/(2+2*b^2/c^2);
z=-1/c *(a.*x + b.*y +d);
plot3 (x,y,z);
hold on ;
y=(2*cy-(2*a*b.*x + 2*d*b +2*b*c*cz)./(c^2)-((-2*cy+(2*a*b.*x+2*d*b+2*b*c*cz)./(c^2)).^2-4*(1+b^2/c^2).*(x.^2 -2*cx.*x+cx^2+cy^2+ a^2.*x.^2./c^2 + 2*a*d.*x./c^2 +d^2/c^2 + 2*a*cz.*x./c + 2*cz*d/c +cz^2 -r^2)).^0.5)/(2+2*b^2/c^2);
z=-1/c *(a.*x + b.*y +d);
plot3 (x,y,z);
view([3,10,2])
hold on;


q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x=-1+ 2*sin(q).*cos(w);
y= 2+ 2*sin(q).*sin(w);
z =-1+ 2*cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;
view([5,10,50])
