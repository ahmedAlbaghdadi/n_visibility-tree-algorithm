clc ; 
clear ; 
close all 
cx=3; cy=-5; cz=4; r=5; vx=-3;vy=5;vz=-11;
 de=((cx-vx)^2 + (cy-vy)^2 + (cz-vz)^2)^0.5;
 a=2*vx-2*cx; b= 2*vy - 2*cy; c= 2*vz - 2*cz; d=cx^2 +cy^2 + cz^2 -vx^2 - vy^2 -vz^2 -2*r^2 +de^2;
vx1=-(-sqrt(4*((4*a^2+4*b^2)/c^2+4)*(-(4*b^2/c^2+4)*(cy^2+cz^2-r^2+(2*c*d*cz+d^2)/c^2+cx^2)+((2*b*c*cz+2*b*d)/c^2-2*cy)^2)+((-8*a*b*cy-8*a*c*cz+8*cx*b^2-8*a*d)/c^2+8*cx)^2)*c^2+8*a*b*cy+8*a*c*cz-8*cx*b^2-8*cx*c^2+8*a*d)/(8*a^2+8*b^2+8*c^2);
vx2=-(sqrt(4*((4*a^2+4*b^2)/c^2+4)*(-(4*b^2/c^2+4)*(cy^2+cz^2-r^2+(2*c*d*cz+d^2)/c^2+cx^2)+((2*b*c*cz+2*b*d)/c^2-2*cy)^2)+((-8*a*b*cy-8*a*c*cz+8*cx*b^2-8*a*d)/c^2+8*cx)^2)*c^2+8*a*b*cy+8*a*c*cz-8*cx*b^2-8*cx*c^2+8*a*d)/(8*a^2+8*b^2+8*c^2);

if vx1 >= vx2
    x1 = vx2;
    x2=vx1;
else
    x1 = vx1;
    x2=vx2;
end
 x= x1+0.00001 : 0.000001 : x2 ; %x1 Â–Â «·“Ì«œÂ „‰ «Ã· „‰⁄ «· ﬁ—Ì» «·–Ì ÌÕ’· ›Ì «·„« ·«» ·· 
 y=(2*cy-(2*a*b.*x + 2*d*b +2*b*c*cz)./(c^2)+((-2*cy+(2*a*b.*x+2*d*b+2*b*c*cz)./(c^2)).^2-4*(1+b^2/c^2).*(x.^2 -2*cx.*x+cx^2+cy^2+ a^2.*x.^2./c^2 + 2*a*d.*x./c^2 +d^2/c^2 + 2*a*cz.*x./c + 2*cz*d/c +cz^2 -r^2)).^0.5)/(2+2*b^2/c^2);

 z=-1/c *(a.*x + b.*y +d);
plot3 (x,y,z,'linewidth',3);
hold on ;
y=(2*cy-(2*a*b.*x + 2*d*b +2*b*c*cz)./(c^2)-((-2*cy+(2*a*b.*x+2*d*b+2*b*c*cz)./(c^2)).^2-4*(1+b^2/c^2).*(x.^2 -2*cx.*x+cx^2+cy^2+ a^2.*x.^2./c^2 + 2*a*d.*x./c^2 +d^2/c^2 + 2*a*cz.*x./c + 2*cz*d/c +cz^2 -r^2)).^0.5)/(2+2*b^2/c^2);
z=-1/c *(a.*x + b.*y +d);
plot3 (x,y,z,'linewidth',3);
hold on;
 for m=1:length(x)
 drawline(vx,vy,vz,x(m),y(m),z(m));
 end

q=0 : pi/50 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x=cx+ (r-1)*sin(q).*cos(w);
y= cy+ (r-1)*sin(q).*sin(w);
z =cz+ (r-1)*cos (q);
surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;
 view([vx,vy,vz])
 %for m=1:length(x)/10:length(x)
%  drawline(vx,vy,vz,x(1000),y(1000),z(1000));
% end
