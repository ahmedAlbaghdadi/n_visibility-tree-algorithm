clc ; 
clear ; 
close all ;
cx=1; cy=1; cz=1; r=2; px=1.122; py=-0.9333; pz=0.5026; qx=-0.3662; qy=1.867; qz=2.176;
% «·„œŒ·«  ÂÌ »«· ”·”· „—ﬂ“ «·ﬂ—Â Ê‰’› ﬁÿ—Â« À„ «Ì ‰ﬁÿ Ì‰ ⁄·Ï ”ÿÕÂ«  ﬁÊ„
% «·œ«·Â »—”„ «ﬁ’— Œÿ »Ì‰ «·‰ﬁÿ Ì‰ ⁄·Ï ”ÿÕ «·ﬂ—Â 
fi=(py-cy)*(qz-cz)-(pz-cz)*(qy-cy);
fj=(px-cx)*(qz-cz)-(pz-cz)*(qx-cx);
fk=(px-cx)*(qy-cy)-(py-cy)*(qx-cx);
if fk == 0
    fk=0.001;
end
x1=-100;
x2=100;
step=(x2-x1)/1000000 ;
x=x1:step:x2;
y1=(-fk^2 * sqrt(-4*(1+fj^2/fk^2)*(((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz).^2+(x-cx).^2+cy^2-r^2)+(2*fj*((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz)/fk-2*cy).^2)+2*fj*(fi*(x-cx)+fj*cy)+2*cy*fk^2)./(2*fk^2+2*fj^2);
z1=1/fk *(fk*cz + fj*(y1-cy)-fi*(x-cx));
h=[x ; y1 ; z1];
j=0;
for i=1:(x2-x1)/step +1
if imag(h(2,i))==0
    j=j+1;
    k(1,j)=h(1,i);
    k(2,j)=h(2,i);
    k(3,j)=h(3,i);
end
end
y2=(fk^2 * sqrt(-4*(1+fj^2/fk^2)*(((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz).^2+(x-cx).^2+cy^2-r^2)+(2*fj*((-fi.*(x-cx)+cz*fk-fj*cy)./fk-cz)/fk-2*cy).^2)+2*fj*(fi*(x-cx)+fj*cy)+2*cy*fk^2)./(2*fk^2+2*fj^2);
z2=1/fk *(fk*cz + fj*(y2-cy)-fi*(x-cx));
h=[x ; y2 ; z2];
j=0;
for i=1:(x2-x1)/step +1
if imag(h(2,i))==0
    j=j+1;
    m(1,j)=h(1,i);
    m(2,j)=h(2,i);
    m(3,j)=h(3,i);
end
end
f=[k , flip(m,2)];
 flength=size(f,2);
 for g=1:flength
    if dis(f(1,g),f(2,g),f(3,g),px,py,pz)<=0.001
        col1=g;
    elseif dis(f(1,g),f(2,g),f(3,g),qx,qy,qz)<=0.001
        col2=g;
    end
 end
a=0;
 if abs(col1-col2)<=flength/2
     for dr=col1:col2
         a=a+1;
         xa(a)=f(1,dr);
         ya(a)=f(2,dr);
         za(a)=f(3,dr);
   plot3(xa ,ya , za);
   hold on;
     end
     a=0;
 else
     for dr=col2:flength
         a=a+1;
         x11(a)=f(1,dr);
         y11(a)=f(2,dr);
         z11(a)=f(3,dr);
     end
       a=0;
     for dr=1:col1
         a=a+1;
         x22(a)=f(1,dr);
         y22(a)=f(2,dr);
         z22(a)=f(3,dr);
     end
     xf=[x11,x22]; 
     yf=[y11,y22];
     zf=[z11,z22];
     plot3(xf ,yf , zf);
     hold on;
 end



   
   
% q=0 : pi/50 : 2*pi;
% w = 0 : pi/50 : 2*pi;
% [q,w]=meshgrid(q,w);
% x= cx+r*sin(q).*cos(w);
% y= cy+r*sin(q).*sin(w);
% z = cz+r*cos (q);
% surf(x,y,z);
% hold on ;


xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
