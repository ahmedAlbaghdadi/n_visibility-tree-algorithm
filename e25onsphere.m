clc ; 
clear ; 
close all 
cx=0; cy=0; cz=0; r=2; px=1.076; py=1.301; pz=1.072; qx=-0.8365; qy=1.778; qz=-0.3748;
fi=(py-cy)*(qz-cz)-(pz-cz)*(qy-cy);
fj=(px-cx)*(qz-cz)-(pz-cz)*(qx-cx);
fk=(px-cx)*(qy-cy)-(py-cy)*(qx-cx);
if fk == 0
    fk=0.001;
end
if px >= qx
x1=qx;
x2=px;
else
x1=px;
x2=qx;
end
x= x1 : 0.001 : x2;
y=(-fk^2 * sqrt(-4*(1+fj^2/fk^2)*(((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz).^2+(x-cx).^2+cy^2-r^2)+(2*fj*((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz)/fk-2*cy).^2)+2*fj*(fi*(x-cx)+fj*cy)+2*cy*fk^2)./(2*fk^2+2*fj^2);
z=1/fk *(fk*cz + fj*(y-cy)-fi*(x-cx));
if (abs(y(1)-py) <= 0.001) && (abs(z(1)-pz) <= 0.001) % error=0.001
plot3 (x,y,z);
hold on ;
elseif (abs(y(1)-qy) <= 0.001) && (abs(z(1)-qz) <= 0.001)
plot3 (x,y,z);
hold on ;
else
y=(fk^2 * sqrt(-4*(1+fj^2/fk^2)*(((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz).^2+(x-cx).^2+cy^2-r^2)+(2*fj*((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz)/fk-2*cy).^2)+2*fj*(fi*(x-cx)+fj*cy)+2*cy*fk^2)./(2*fk^2+2*fj^2);
z=1/fk *(fk*cz + fj*(y-cy)-fi*(x-cx));
plot3 (x,y,z);
hold on ;
end



 
q=0 : pi/25 : 2*pi;
w = 0 : pi/50 : 2*pi;
[q,w]=meshgrid(q,w);
x=cx+ r*sin(q).*cos(w);
y= cy+ r*sin(q).*sin(w);
z =cz+ r*cos (q);
surf(x,y,z);


xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');