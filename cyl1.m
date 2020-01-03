function [cc1] = cyl1( px, py, pz, r, qx , qy , qz, n)
% íÊã ÇÓÊÎÏÇãåÇ ÈæÇÓØå ÏÇáå ÇÎÑì 
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
  size2=size(f);
  length=size2(2);
  stepi=length/n;
  co=1;
  for i=1:n
      c1(1,i)= f(1,co);
      c1(2,i)= f(2,co); 
      c1(3,i)= f(3,co); 
co=fix(co+stepi);
  end
  cc1=c1;
end 