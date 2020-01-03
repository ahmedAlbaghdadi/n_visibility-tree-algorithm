clc ; 
clear ; 
close all ;
px=1; py=1; pz=1; r=3; qx=10; qy=10; qz=10; n=10;
if rem(n,2)>0
    n=n+1;
end
x1=-100;
x2=100;
step=(x2-x1)/1000000 ;
x=x1:step:x2;
y=(-(qz-pz).^2*sqrt(-4*((qy-py)^2/(qz-pz)^2+1)*(((qx-px)*(x-px)-py*(qy-py)).^2/(qz-pz).^2+(x-px).^2-r.^2+py.^2)+(2*(qy-py)*((qx-px)*(x-px)-py*(qy-py))/(qz-pz).^2-2*py).^2)-2*(qy-py)*((qx-px)*(x-px)-py*(qy-py))+2*py*(qz-pz).^2)/(2*(qy-py).^2+2*(qz-pz).^2);
z=pz-((qx-px)*(x-px)+(qy-py)*(y-py))/(qz-pz);
h=[x ; y ; z];
j=0;
for i=1:(x2-x1)/step +1
if imag(h(2,i))==0
    j=j+1;
    k(1,j)=h(1,i);
    k(2,j)=h(2,i);
    k(3,j)=h(3,i);
end
end
y= ((qz-pz).^2*sqrt(-4*((qy-py)^2/(qz-pz)^2+1)*(((qx-px)*(x-px)-py*(qy-py)).^2/(qz-pz).^2+(x-px).^2-r.^2+py.^2)+(2*(qy-py)*((qx-px)*(x-px)-py*(qy-py))/(qz-pz).^2-2*py).^2)-2*(qy-py)*((qx-px)*(x-px)-py*(qy-py))+2*py*(qz-pz).^2)/(2*(qy-py).^2+2*(qz-pz).^2);
z=pz-((qx-px)*(x-px)+(qy-py)*(y-py))/(qz-pz);
h=[x ; y ; z];
j=0;
for i=1:(x2-x1)/step +1
if imag(h(2,i))==0
    j=j+1;
    m(1,j)=h(1,i);
    m(2,j)=h(2,i);
    m(3,j)=h(3,i);
end
end
f=[k m];
  size=size(f);
  length=size(2);
  stepi=length/n;
  co=1;
  for i=1:n
      c1(1,i)= f(1,co);
      c1(2,i)= f(2,co); 
      c1(3,i)= f(3,co); 
co=fix(co+stepi);
  end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% plot3(c(1,:),c(2,:),c(3,:));
%second sphere
x2=x1:step:x2;
y2=(-(pz-qz).^2*sqrt(-4*((py-qy)^2/(pz-qz).^2+1)*(((px-qx).*(x-px)-qy.*(py-qy)).^2/(pz-qz).^2+(x-qx).^2+qy.^2-r.^2)+(2.*(py-qy).*((px-qx).*(x-px)-qy*(py-qy))/(pz-qz).^2-2*qy).^2)-2.*(py-qy).*((px-qx).*(x-px)-qy*(py-qy))+2*qy*(pz-qz).^2)/(2*(pz-qz).^2+2*(py-qy).^2);
z2=pz-((px-qx)*(x-qx)+(py-qy)*(y-qy))/(pz-qz);
h2=[x2 ; y2 ; z2];
j=0;
for i=1:(x2-x1)/step +1
if imag(h2(2,i))==0
    j=j+1;
    k2(1,j)=h2(1,i);
    k2(2,j)=h2(2,i);
    k2(3,j)=h2(3,i);
end
end
y=((pz-qz).^2*sqrt(-4*((py-qy)^2/(pz-qz).^2+1)*(((px-qx).*(x-px)-qy.*(py-qy)).^2/(pz-qz).^2+(x-qx).^2+qy.^2-r.^2)+(2.*(py-qy).*((px-qx).*(x-px)-qy*(py-qy))/(pz-qz).^2-2*qy).^2)-2.*(py-qy).*((px-qx).*(x-px)-qy*(py-qy))+2*qy*(pz-qz).^2)/(2*(pz-qz).^2+2*(py-qy).^2);
z=pz-((px-qx)*(x-qx)+(py-qy)*(y-qy))/(pz-qz);
h=[x ; y ; z];
j=0;
for i=1:(x2-x1)/step +1
if imag(h(2,i))==0
    j=j+1;
    m(1,j)=h(1,i);
    m(2,j)=h(2,i);
    m(3,j)=h(3,i);
end
end
f=[k m];
  size=size(f);
  length=size(2);
  stepi=length/n;
  co=1;
  for i=1:n
      c2(1,i)= f(1,co);
      c2(2,i)= f(2,co); 
      c2(3,i)= f(3,co); 
co=fix(co+stepi);
  end
v=[c1;c2];
%   for i=1:n
%       drawline(








% q=0 : pi/50 : 2*pi;
% w = 0 : pi/50 : 2*pi;
% [q,w]=meshgrid(q,w);
% x= px+r*sin(q).*cos(w);
% y= py+r*sin(q).*sin(w);
% z = pz+r*cos (q);
% surf(x,y,z);
xlabel ('x-axis');
ylabel ('y-axis');
zlabel ('z-axis');
hold on ;